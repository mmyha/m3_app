// マップPDFからスペース番号の位置を読み取り、スペースごとの矩形をJSONに書き出す
//
// fvm dart run tool/map_spaces/generate_map_spaces.dart <map.pdf> <config.json> <output.json>
//
// - config.json の areas でホールごとの範囲と、番号を割り当てるラベル(A, あ, キ など)を指定する
//   - label: 範囲内の番号を全てそのラベルにする(壁際の列など)
//   - labels + assign: 範囲内のラベルのうち、x(横)/y(縦)の距離が一番近いものにする
// - 出力の座標はページサイズに対する割合(左上原点)
// - dir は番号が増える向き。a/b, x/y/z はこの向きに並ぶ
// ignore_for_file: avoid_print
import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

import 'package:pdfrx_engine/pdfrx_engine.dart';

// スペース番号とラベルは文字の大きさで注意書きなどと見分ける(ポイント)
const ({double min, double max}) _spaceNumberHeight = (min: 4.3, max: 5.0);
const _labelMinHeight = 8.5;

// 同じ番号の桁とみなす間隔(ポイント)
const _digitGap = 3.0;

Future<void> main(List<String> args) async {
  if (args.length != 3) {
    print(
      'usage: generate_map_spaces.dart <map.pdf> <config.json> <output.json>',
    );
    exit(64);
  }
  final config =
      jsonDecode(File(args[1]).readAsStringSync()) as Map<String, dynamic>;
  final pageNumber = config['page'] as int;
  final areas = [
    for (final area in config['areas'] as List<dynamic>)
      _Area.fromJson(area as Map<String, dynamic>),
  ];
  final overrides = (config['overrides'] as Map<String, dynamic>? ?? {}).map(
    (key, value) => MapEntry(key, value as Map<String, dynamic>),
  );

  await pdfrxInitialize();
  final document = await PdfDocument.openFile(args[0]);
  final page = document.pages[pageNumber - 1];
  final text = await page.loadText();
  if (text == null) {
    throw Exception('ページ$pageNumberのテキストを読めません');
  }

  final chars = [
    for (var i = 0; i < text.fullText.length; i++)
      _Char(text.fullText[i], _toTopLeft(text.charRects[i], page.height)),
  ];
  final numbers = _groupNumbers(chars);
  final labels = chars
      .where((char) => char.rect.height >= _labelMinHeight)
      .toList();

  // ラベルごとの番号の位置
  final positions = <String, Map<int, _Rect>>{};
  for (final number in numbers) {
    final area = areas
        .where((area) => area.rect.contains(number.rect.center))
        .firstOrNull;
    if (area == null) {
      continue;
    }
    final label = area.assignLabel(number.rect.center, labels);
    if (label == null) {
      print('ラベルが見つかりません: ${number.value} (${area.name})');
      continue;
    }
    final byNumber = positions.putIfAbsent(label, () => {});
    if (byNumber.containsKey(number.value)) {
      print('番号が重複しています: $label-${number.value}');
    }
    byNumber[number.value] = number.rect;
  }

  final spaces = <String, Map<String, Object>>{};
  for (final MapEntry(key: label, value: byNumber) in positions.entries) {
    final step = _medianStep(byNumber);
    for (final MapEntry(key: number, value: rect) in byNumber.entries) {
      final key = '$label-${number.toString().padLeft(2, '0')}';
      final override = overrides[key] ?? {};
      final center = rect.center;
      final cell = _Rect.fromCenter(center, step, step);
      spaces[key] = {
        'rect': [
          _round(cell.left / page.width),
          _round(cell.top / page.height),
          _round(cell.right / page.width),
          _round(cell.bottom / page.height),
        ],
        'dir':
            override['dir'] as String? ??
            _direction(byNumber, number) ??
            'down',
      };
    }
  }

  final sortedKeys = spaces.keys.toList()..sort();
  // 開催ごとの差分を見やすくするため1スペース1行で書く
  final lines = [
    for (final key in sortedKeys)
      '    ${jsonEncode(key)}: ${jsonEncode(spaces[key])}',
  ];
  File(args[2]).writeAsStringSync(
    '{\n  "page": $pageNumber,\n  "spaces": {\n${lines.join(',\n')}\n  }\n}\n',
  );
  print('${spaces.length}スペースを書き出しました: ${args[2]}');
  for (final MapEntry(key: label, value: byNumber) in positions.entries) {
    final sorted = byNumber.keys.toList()..sort();
    final missing = [
      for (var n = 1; n <= sorted.last; n++)
        if (!byNumber.containsKey(n)) n,
    ];
    print(
      '$label: ${sorted.length}件 (1〜${sorted.last})'
      '${missing.isEmpty ? '' : ' 抜け: $missing'}',
    );
  }
  await document.dispose();
}

// ページ上で0.01ポイント未満の精度は要らない
double _round(double value) => (value * 100000).round() / 100000;

/// 隣り合う数字の文字を1つの番号にまとめる
List<_Number> _groupNumbers(List<_Char> chars) {
  final digits =
      chars
          .where(
            (char) =>
                RegExp(r'^\d$').hasMatch(char.value) &&
                char.rect.height >= _spaceNumberHeight.min &&
                char.rect.height <= _spaceNumberHeight.max,
          )
          .toList()
        ..sort((a, b) => a.rect.left.compareTo(b.rect.left));

  final numbers = <_Number>[];
  final used = <_Char>{};
  for (final digit in digits) {
    if (used.contains(digit)) {
      continue;
    }
    var value = digit.value;
    var rect = digit.rect;
    used.add(digit);
    for (final next in digits) {
      if (used.contains(next)) {
        continue;
      }
      final sameLine = (next.rect.centerY - rect.centerY).abs() < 1;
      final gap = next.rect.left - rect.right;
      if (sameLine && gap >= -0.5 && gap < _digitGap) {
        value += next.value;
        rect = rect.expandToInclude(next.rect);
        used.add(next);
      }
    }
    numbers.add(_Number(int.parse(value), rect));
  }
  return numbers;
}

/// 隣の番号との間隔の中央値をスペースの大きさとする
double _medianStep(Map<int, _Rect> byNumber) {
  final steps = <double>[];
  for (final MapEntry(key: number, value: rect) in byNumber.entries) {
    final next = byNumber[number + 1];
    if (next != null) {
      final distance = (next.center - rect.center).distance;
      // 島の端で折り返す所などは離れているので除く
      if (distance < 20) {
        steps.add(distance);
      }
    }
  }
  if (steps.isEmpty) {
    return 10;
  }
  steps.sort();
  return steps[steps.length ~/ 2];
}

/// 番号が増える向き。前後の番号のうち縦か横に並んでいる方から決める
String? _direction(Map<int, _Rect> byNumber, int number) {
  final center = byNumber[number]!.center;
  for (final (other, sign) in [(number + 1, 1), (number - 1, -1)]) {
    final rect = byNumber[other];
    if (rect == null) {
      continue;
    }
    final delta = (rect.center - center) * sign.toDouble();
    final dx = delta.dx.abs();
    final dy = delta.dy.abs();
    // 斜めに離れている(角で折り返している)ときは使わない
    if (math.min(dx, dy) > math.max(dx, dy) * 0.3 || delta.distance > 20) {
      continue;
    }
    if (dx > dy) {
      return delta.dx > 0 ? 'right' : 'left';
    }
    return delta.dy > 0 ? 'down' : 'up';
  }
  return null;
}

_Rect _toTopLeft(PdfRect rect, double pageHeight) {
  return _Rect(
    rect.left,
    pageHeight - rect.top,
    rect.right,
    pageHeight - rect.bottom,
  );
}

class _Area {
  _Area({
    required this.name,
    required this.rect,
    this.label,
    this.labels,
    this.assign,
  });

  factory _Area.fromJson(Map<String, dynamic> json) {
    final rect = (json['rect'] as List<dynamic>).cast<num>();
    return _Area(
      name: json['name'] as String,
      rect: _Rect(
        rect[0].toDouble(),
        rect[1].toDouble(),
        rect[2].toDouble(),
        rect[3].toDouble(),
      ),
      label: json['label'] as String?,
      labels: json['labels'] as String?,
      assign: json['assign'] as String?,
    );
  }

  final String name;
  final _Rect rect;
  final String? label;
  final String? labels;
  final String? assign;

  String? assignLabel(_Point point, List<_Char> allLabels) {
    if (label != null) {
      return label;
    }
    final candidates = allLabels.where(
      (char) => labels!.contains(char.value) && rect.contains(char.rect.center),
    );
    _Char? nearest;
    var nearestDistance = double.infinity;
    for (final candidate in candidates) {
      final distance = assign == 'x'
          ? (candidate.rect.center.dx - point.dx).abs()
          : (candidate.rect.center.dy - point.dy).abs();
      if (distance < nearestDistance) {
        nearest = candidate;
        nearestDistance = distance;
      }
    }
    return nearest?.value;
  }
}

class _Char {
  _Char(this.value, this.rect);
  final String value;
  final _Rect rect;
}

class _Number {
  _Number(this.value, this.rect);
  final int value;
  final _Rect rect;
}

class _Point {
  const _Point(this.dx, this.dy);
  final double dx;
  final double dy;

  double get distance => math.sqrt(dx * dx + dy * dy);

  _Point operator -(_Point other) => _Point(dx - other.dx, dy - other.dy);
  _Point operator *(double factor) => _Point(dx * factor, dy * factor);
}

class _Rect {
  const _Rect(this.left, this.top, this.right, this.bottom);

  factory _Rect.fromCenter(_Point center, double width, double height) {
    return _Rect(
      center.dx - width / 2,
      center.dy - height / 2,
      center.dx + width / 2,
      center.dy + height / 2,
    );
  }

  final double left;
  final double top;
  final double right;
  final double bottom;

  double get height => bottom - top;
  double get centerY => (top + bottom) / 2;
  _Point get center => _Point((left + right) / 2, centerY);

  bool contains(_Point point) {
    return point.dx >= left &&
        point.dx <= right &&
        point.dy >= top &&
        point.dy <= bottom;
  }

  _Rect expandToInclude(_Rect other) {
    return _Rect(
      math.min(left, other.left),
      math.min(top, other.top),
      math.max(right, other.right),
      math.max(bottom, other.bottom),
    );
  }
}
