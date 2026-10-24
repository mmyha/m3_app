import 'dart:ui' show PointMode;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m3_app/domain/model/map_stroke_model.dart';
import 'package:m3_app/presentation/controller/circle_map/circle_map_controller.dart';
import 'package:m3_app/presentation/controller/map_stroke/map_stroke_controller.dart';
import 'package:m3_app/presentation/view/components/common/error_page.dart';
import 'package:m3_app/presentation/view/components/common/loading_page.dart';
import 'package:pdfrx/pdfrx.dart';

/// ペンの種類。線幅はページ幅に対する割合
class _PenStyle {
  const _PenStyle({required this.color, required this.width});
  final Color color;
  final double width;
}

const _penStyles = [
  _PenStyle(color: Color(0xFFE53935), width: 0.0015),
  _PenStyle(color: Color(0xFF1E88E5), width: 0.0015),
  _PenStyle(color: Color(0xFF43A047), width: 0.0015),
  // 蛍光ペン
  _PenStyle(color: Color(0x66FFEB3B), width: 0.01),
];

class CircleMapPage extends HookConsumerWidget {
  const CircleMapPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapController = ref.watch(circleMapControllerProvider);
    final isPenMode = useState(false);
    final penStyle = useState(_penStyles.first);

    return Scaffold(
      appBar: AppBar(
        title: const Text('マップ'),
        actions: [
          if (mapController.hasValue)
            IconButton(
              tooltip: isPenMode.value ? '閲覧モードにする' : '書き込みモードにする',
              isSelected: isPenMode.value,
              icon: const Icon(Icons.edit_outlined),
              selectedIcon: const Icon(Icons.edit),
              onPressed: () => isPenMode.value = !isPenMode.value,
            ),
        ],
      ),
      body: mapController.when(
        data: (data) {
          return Column(
            children: [
              Expanded(
                child: _MapPdfView(
                  filePath: data,
                  penStyle: isPenMode.value ? penStyle.value : null,
                ),
              ),
              if (isPenMode.value)
                _PenToolbar(
                  selected: penStyle.value,
                  onSelected: (style) => penStyle.value = style,
                ),
            ],
          );
        },
        error: (error, stackTrace) {
          return ErrorPage(
            retryMethod: () {
              ref.invalidate(circleMapControllerProvider);
            },
          );
        },
        loading: LoadingPage.new,
      ),
    );
  }
}

class _MapPdfView extends ConsumerWidget {
  const _MapPdfView({required this.filePath, required this.penStyle});
  final String filePath;

  /// nullなら閲覧モード
  final _PenStyle? penStyle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final strokes = ref.watch(mapStrokeControllerProvider).value ?? const [];
    final isPenMode = penStyle != null;

    return PdfViewer.file(
      filePath,
      params: PdfViewerParams(
        // 地図なので長押しでテキスト選択されないようにする
        textSelectionParams: const PdfTextSelectionParams(enabled: false),
        // 書き込みモード中は指の動きを線に使う
        panEnabled: !isPenMode,
        scaleEnabled: !isPenMode,
        pageOverlaysBuilder: (context, pageRect, page) {
          return [
            _StrokeLayer(
              key: ValueKey(page.pageNumber),
              pageNumber: page.pageNumber,
              strokes: strokes
                  .where((stroke) => stroke.pageNumber == page.pageNumber)
                  .toList(),
              penStyle: penStyle,
              onStrokeEnd: (stroke) {
                ref.read(mapStrokeControllerProvider.notifier).add(stroke);
              },
            ),
          ];
        },
      ),
    );
  }
}

/// ページに重ねる手書きレイヤー
class _StrokeLayer extends StatefulWidget {
  const _StrokeLayer({
    super.key,
    required this.pageNumber,
    required this.strokes,
    required this.penStyle,
    required this.onStrokeEnd,
  });
  final int pageNumber;
  final List<MapStrokeModel> strokes;
  final _PenStyle? penStyle;
  final ValueChanged<MapStrokeModel> onStrokeEnd;

  @override
  State<_StrokeLayer> createState() => _StrokeLayerState();
}

class _StrokeLayerState extends State<_StrokeLayer> {
  int? _pointer;
  List<Offset> _points = [];

  // 細かすぎる点は保存しない(ページ幅に対する割合)
  static const _minDistance = 0.001;

  void _onPointerDown(PointerDownEvent event, Size size) {
    // 2本目以降の指は無視する
    if (_pointer != null) {
      return;
    }
    _pointer = event.pointer;
    setState(() => _points = [_normalize(event.localPosition, size)]);
  }

  void _onPointerMove(PointerMoveEvent event, Size size) {
    if (event.pointer != _pointer) {
      return;
    }
    final point = _normalize(event.localPosition, size);
    if ((point - _points.last).distance < _minDistance) {
      return;
    }
    setState(() => _points = [..._points, point]);
  }

  void _onPointerUp(PointerEvent event) {
    if (event.pointer != _pointer) {
      return;
    }
    final style = widget.penStyle;
    if (style != null && _points.isNotEmpty) {
      widget.onStrokeEnd(
        MapStrokeModel(
          pageNumber: widget.pageNumber,
          color: style.color.toARGB32(),
          width: style.width,
          points: _points,
        ),
      );
    }
    _pointer = null;
    setState(() => _points = []);
  }

  Offset _normalize(Offset position, Size size) {
    return Offset(position.dx / size.width, position.dy / size.height);
  }

  @override
  Widget build(BuildContext context) {
    final style = widget.penStyle;
    final drawing = style != null && _points.isNotEmpty
        ? MapStrokeModel(
            pageNumber: widget.pageNumber,
            color: style.color.toARGB32(),
            width: style.width,
            points: _points,
          )
        : null;

    final painter = CustomPaint(
      size: Size.infinite,
      painter: _StrokePainter(
        strokes: [...widget.strokes, ?drawing],
      ),
    );

    if (style == null) {
      // 閲覧モードではPdfViewerの操作を邪魔しない
      return IgnorePointer(child: painter);
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final size = constraints.biggest;
        return Listener(
          behavior: HitTestBehavior.opaque,
          onPointerDown: (event) => _onPointerDown(event, size),
          onPointerMove: (event) => _onPointerMove(event, size),
          onPointerUp: _onPointerUp,
          onPointerCancel: _onPointerUp,
          child: painter,
        );
      },
    );
  }
}

class _StrokePainter extends CustomPainter {
  _StrokePainter({required this.strokes});
  final List<MapStrokeModel> strokes;

  @override
  void paint(Canvas canvas, Size size) {
    for (final stroke in strokes) {
      final paint = Paint()
        ..color = Color(stroke.color)
        ..strokeWidth = stroke.width * size.width
        ..strokeCap = StrokeCap.round
        ..strokeJoin = StrokeJoin.round
        ..style = PaintingStyle.stroke;

      final points = [
        for (final point in stroke.points)
          Offset(point.dx * size.width, point.dy * size.height),
      ];
      if (points.length == 1) {
        // タップだけなら点を打つ
        canvas.drawPoints(PointMode.points, points, paint);
        continue;
      }
      final path = Path()..moveTo(points.first.dx, points.first.dy);
      for (final point in points.skip(1)) {
        path.lineTo(point.dx, point.dy);
      }
      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(_StrokePainter oldDelegate) {
    return oldDelegate.strokes != strokes;
  }
}

class _PenToolbar extends ConsumerWidget {
  const _PenToolbar({required this.selected, required this.onSelected});
  final _PenStyle selected;
  final ValueChanged<_PenStyle> onSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasStrokes =
        ref.watch(mapStrokeControllerProvider).value?.isNotEmpty ?? false;
    final colorScheme = Theme.of(context).colorScheme;

    return Material(
      color: colorScheme.surfaceContainer,
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Row(
            children: [
              for (final style in _penStyles)
                IconButton(
                  isSelected: style == selected,
                  onPressed: () => onSelected(style),
                  icon: Icon(
                    style.width > 0.005 ? Icons.highlight : Icons.circle,
                    color: style.color.withAlpha(0xFF),
                  ),
                  style: IconButton.styleFrom(
                    side: style == selected
                        ? BorderSide(color: colorScheme.primary, width: 2)
                        : null,
                  ),
                ),
              const Spacer(),
              IconButton(
                tooltip: '元に戻す',
                onPressed: hasStrokes
                    ? () =>
                          ref.read(mapStrokeControllerProvider.notifier).undo()
                    : null,
                icon: const Icon(Icons.undo),
              ),
              IconButton(
                tooltip: '全て消す',
                onPressed: hasStrokes
                    ? () => _confirmClear(context, ref)
                    : null,
                icon: const Icon(Icons.delete_outline),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _confirmClear(BuildContext context, WidgetRef ref) async {
    await showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('書き込みを全て消しますか？'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('キャンセル'),
            ),
            TextButton(
              onPressed: () {
                ref.read(mapStrokeControllerProvider.notifier).clear();
                Navigator.of(context).pop();
              },
              child: const Text('消す'),
            ),
          ],
        );
      },
    );
  }
}
