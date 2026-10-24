import 'dart:math' as math;
import 'dart:ui' show PointMode;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m3_app/core/theme/m3_theme_config.dart';
import 'package:m3_app/core/utils/map_space_util.dart';
import 'package:m3_app/domain/model/circle_wish_model.dart';
import 'package:m3_app/domain/model/map_space_model.dart';
import 'package:m3_app/domain/model/map_stroke_model.dart';
import 'package:m3_app/presentation/controller/circle_map/circle_map_controller.dart';
import 'package:m3_app/presentation/controller/map_space/map_space_controller.dart';
import 'package:m3_app/presentation/controller/map_stroke/map_stroke_controller.dart';
import 'package:m3_app/presentation/controller/wish_list/wish_list_controller.dart';
import 'package:m3_app/presentation/view/components/common/error_page.dart';
import 'package:m3_app/presentation/view/components/common/loading_page.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:pdfrx/pdfrx.dart';

/// 書き込みモードの道具
sealed class _MapTool {
  const _MapTool();
}

/// ペン。線幅はページ幅に対する割合
class _PenTool extends _MapTool {
  const _PenTool({required this.color, required this.width});
  final Color color;
  final double width;
}

/// なぞった部分のインクを消す
class _EraserTool extends _MapTool {
  const _EraserTool();

  // 消しゴムの太さ(ページ幅に対する割合)
  static const width = 0.012;
}

const _penTools = [
  _PenTool(color: Color(0xFFE53935), width: 0.0015),
  _PenTool(color: Color(0xFF1E88E5), width: 0.0015),
  _PenTool(color: Color(0xFF43A047), width: 0.0015),
  // 蛍光ペン
  _PenTool(color: Color(0x66FFEB3B), width: 0.01),
];

const _eraserTool = _EraserTool();

class CircleMapPage extends HookConsumerWidget {
  const CircleMapPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapController = ref.watch(circleMapControllerProvider);
    final isPenMode = useState(false);
    final tool = useState<_MapTool>(_penTools.first);
    final showSpaces = useState(false);
    final showWishes = useState(true);

    return Scaffold(
      appBar: AppBar(
        title: const Text('マップ'),
        actions: [
          // 開催ごとに生成するスペース位置の確認用
          if (kDebugMode && mapController.hasValue)
            IconButton(
              tooltip: 'スペースの位置を表示',
              isSelected: showSpaces.value,
              icon: const Icon(Icons.grid_on_outlined),
              selectedIcon: const Icon(Icons.grid_on),
              onPressed: () => showSpaces.value = !showSpaces.value,
            ),
          if (mapController.hasValue)
            IconButton(
              tooltip: showWishes.value
                  ? 'ウィッシュリストのハイライトを消す'
                  : 'ウィッシュリストをハイライト',
              isSelected: showWishes.value,
              icon: const Icon(Icons.star_outline),
              selectedIcon: const Icon(Icons.star),
              onPressed: () => showWishes.value = !showWishes.value,
            ),
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
                  tool: isPenMode.value ? tool.value : null,
                  showSpaces: showSpaces.value,
                  showWishes: showWishes.value,
                ),
              ),
              if (isPenMode.value)
                _PenToolbar(
                  selected: tool.value,
                  onSelected: (selected) => tool.value = selected,
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

class _MapPdfView extends HookConsumerWidget {
  const _MapPdfView({
    required this.filePath,
    required this.tool,
    required this.showSpaces,
    required this.showWishes,
  });
  final String filePath;
  final bool showSpaces;
  final bool showWishes;

  /// nullなら閲覧モード
  final _MapTool? tool;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final strokes = ref.watch(mapStrokeControllerProvider).value ?? const [];
    final spaces = showSpaces || showWishes
        ? ref.watch(mapSpaceControllerProvider).value ?? const {}
        : const <String, MapSpaceModel>{};
    final wishes = showWishes
        ? ref.watch(wishListControllerProvider).value ?? const []
        : const <CircleWishModel>[];
    final highlights = [
      for (final wish in wishes)
        if (MapSpaceUtil.findSpace(spaces, wish.spaceName) case final space?)
          (space: space, state: _WishState.of(wish)),
    ];
    final isPenMode = tool != null;
    // 指の数はページの外(余白)に触れた指も含めて、ビューア全体で数える
    final pointers = useRef(<int>{});
    final isMultiTouch = useValueNotifier(false);
    useValueListenable(isMultiTouch);

    void onPointerDown(PointerDownEvent event) {
      pointers.value.add(event.pointer);
      if (pointers.value.length >= 2) {
        isMultiTouch.value = true;
      }
    }

    void onPointerUp(PointerEvent event) {
      pointers.value.remove(event.pointer);
      // 指を全て離すまでは2本指の操作を続ける
      if (pointers.value.isEmpty) {
        isMultiTouch.value = false;
      }
    }

    final viewer = PdfViewer.file(
      filePath,
      params: PdfViewerParams(
        // 地図なので長押しでテキスト選択されないようにする
        textSelectionParams: const PdfTextSelectionParams(enabled: false),
        // 書き込みモード中は1本指を線に使い、2本指で移動・拡大縮小する
        panEnabled: !isPenMode || isMultiTouch.value,
        // 書き込みモード中は長押しメニューなどを出さない
        onGeneralTap: isPenMode ? (_, _, _) => true : null,
        pageOverlaysBuilder: (context, pageRect, page) {
          return [
            _WishHighlightLayer(
              highlights: [
                for (final highlight in highlights)
                  if (highlight.space.pageNumber == page.pageNumber)
                    (rect: highlight.space.rect, state: highlight.state),
              ],
            ),
            if (showSpaces)
              _SpaceDebugLayer(
                spaces: [
                  for (final space in spaces.values)
                    if (space.pageNumber == page.pageNumber) space,
                ],
              ),
            _StrokeLayer(
              key: ValueKey(page.pageNumber),
              pageNumber: page.pageNumber,
              strokes: strokes
                  .where((stroke) => stroke.pageNumber == page.pageNumber)
                  .toList(),
              tool: tool,
              isMultiTouch: isMultiTouch,
              onStrokeEnd: (stroke) {
                ref.read(mapStrokeControllerProvider.notifier).add(stroke);
              },
            ),
          ];
        },
      ),
    );

    return Stack(
      children: [
        Listener(
          onPointerDown: onPointerDown,
          onPointerUp: onPointerUp,
          onPointerCancel: onPointerUp,
          child: viewer,
        ),
        if (showWishes)
          const Positioned(left: 8, bottom: 8, child: _WishLegend()),
      ],
    );
  }
}

/// ページに重ねる手書きレイヤー
class _StrokeLayer extends StatefulWidget {
  const _StrokeLayer({
    super.key,
    required this.pageNumber,
    required this.strokes,
    required this.tool,
    required this.isMultiTouch,
    required this.onStrokeEnd,
  });
  final int pageNumber;
  final List<MapStrokeModel> strokes;
  final _MapTool? tool;

  /// 2本指以上でマップを操作中か
  final ValueListenable<bool> isMultiTouch;
  final ValueChanged<MapStrokeModel> onStrokeEnd;

  @override
  State<_StrokeLayer> createState() => _StrokeLayerState();
}

class _StrokeLayerState extends State<_StrokeLayer> {
  // 線を描いている指
  int? _pointer;

  // 描いている途中の点
  List<Offset> _points = [];

  // 細かすぎる点は保存しない(ページ幅に対する割合)
  static const _minDistance = 0.001;

  @override
  void initState() {
    super.initState();
    widget.isMultiTouch.addListener(_onMultiTouchChanged);
  }

  @override
  void didUpdateWidget(_StrokeLayer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isMultiTouch != widget.isMultiTouch) {
      oldWidget.isMultiTouch.removeListener(_onMultiTouchChanged);
      widget.isMultiTouch.addListener(_onMultiTouchChanged);
    }
  }

  @override
  void dispose() {
    widget.isMultiTouch.removeListener(_onMultiTouchChanged);
    super.dispose();
  }

  // 2本指はマップの操作なので、描きかけの線は捨てる
  void _onMultiTouchChanged() {
    if (widget.isMultiTouch.value && _pointer != null) {
      _pointer = null;
      setState(() => _points = []);
    }
  }

  void _onPointerDown(PointerDownEvent event, Size size) {
    // 描いている途中の2本目や、2本指の操作中は描かない
    if (_pointer != null || widget.isMultiTouch.value) {
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
    final stroke = _buildStroke();
    if (stroke != null) {
      widget.onStrokeEnd(stroke);
    }
    _pointer = null;
    setState(() => _points = []);
  }

  MapStrokeModel? _buildStroke() {
    if (_points.isEmpty) {
      return null;
    }
    return switch (widget.tool) {
      _PenTool(:final color, :final width) => MapStrokeModel(
        pageNumber: widget.pageNumber,
        color: color.toARGB32(),
        width: width,
        points: _points,
      ),
      _EraserTool() => MapStrokeModel(
        pageNumber: widget.pageNumber,
        color: Colors.black.toARGB32(),
        width: _EraserTool.width,
        points: _points,
        isEraser: true,
      ),
      null => null,
    };
  }

  Offset _normalize(Offset position, Size size) {
    return Offset(position.dx / size.width, position.dy / size.height);
  }

  @override
  Widget build(BuildContext context) {
    final drawing = _buildStroke();
    final painter = CustomPaint(
      size: Size.infinite,
      painter: _StrokePainter(
        strokes: [...widget.strokes, ?drawing],
        // 消しゴムは今どこを消しているか分かるように円を出す
        eraserPosition: drawing != null && drawing.isEraser
            ? drawing.points.last
            : null,
      ),
    );

    if (widget.tool == null) {
      // 閲覧モードではPdfViewerの操作を邪魔しない
      return IgnorePointer(child: painter);
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final size = constraints.biggest;
        // このレイヤーはPdfViewerの上に重なっているので、指の操作を下にも通して
        // 2本指の移動・拡大縮小をPdfViewerに任せる
        return Listener(
          behavior: HitTestBehavior.translucent,
          onPointerDown: (event) => _onPointerDown(event, size),
          onPointerMove: (event) => _onPointerMove(event, size),
          onPointerUp: _onPointerUp,
          onPointerCancel: _onPointerUp,
          child: IgnorePointer(child: painter),
        );
      },
    );
  }
}

class _StrokePainter extends CustomPainter {
  _StrokePainter({required this.strokes, required this.eraserPosition});
  final List<MapStrokeModel> strokes;

  /// ページサイズに対する割合
  final Offset? eraserPosition;

  @override
  void paint(Canvas canvas, Size size) {
    // 消しゴムがPDFまで消さないよう、インクだけのレイヤーに描く
    final hasEraser = strokes.any((stroke) => stroke.isEraser);
    if (hasEraser) {
      canvas.saveLayer(Offset.zero & size, Paint());
    }
    for (final stroke in strokes) {
      final paint = Paint()
        ..color = Color(stroke.color)
        ..strokeWidth = stroke.width * size.width
        ..strokeCap = StrokeCap.round
        ..strokeJoin = StrokeJoin.round
        ..style = PaintingStyle.stroke
        ..blendMode = stroke.isEraser ? BlendMode.clear : BlendMode.srcOver;

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
    if (hasEraser) {
      canvas.restore();
    }

    final eraser = eraserPosition;
    if (eraser != null) {
      final center = Offset(eraser.dx * size.width, eraser.dy * size.height);
      final radius = _EraserTool.width / 2 * size.width;
      canvas
        ..drawCircle(center, radius, Paint()..color = const Color(0x33000000))
        ..drawCircle(
          center,
          radius,
          Paint()
            ..color = const Color(0x99000000)
            ..style = PaintingStyle.stroke
            ..strokeWidth = math.max(radius * 0.1, 0.5),
        );
    }
  }

  @override
  bool shouldRepaint(_StrokePainter oldDelegate) {
    return oldDelegate.strokes != strokes ||
        oldDelegate.eraserPosition != eraserPosition;
  }
}

/// ウィッシュリストでの状態
enum _WishState {
  going('行くかも'),
  // 行くかものチェックを外した
  undecided('未チェック'),
  done('済');

  const _WishState(this.label);

  /// 凡例に出す名前
  final String label;

  static _WishState of(CircleWishModel wish) {
    if (wish.isDone) {
      return done;
    }
    return wish.isFavorite ? going : undecided;
  }
}

/// ウィッシュリストのスペースをハイライトする
class _WishHighlightLayer extends StatelessWidget {
  const _WishHighlightLayer({required this.highlights});
  final List<({Rect rect, _WishState state})> highlights;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: CustomPaint(
        size: Size.infinite,
        painter: _WishHighlightPainter(
          highlights: highlights,
          color: M3ThemeConfig.customColor.favoriteButton,
        ),
      ),
    );
  }
}

class _WishHighlightPainter extends CustomPainter {
  _WishHighlightPainter({required this.highlights, required this.color});
  final List<({Rect rect, _WishState state})> highlights;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    for (final (:rect, :state) in highlights) {
      paintHighlight(
        canvas,
        Rect.fromLTRB(
          rect.left * size.width,
          rect.top * size.height,
          rect.right * size.width,
          rect.bottom * size.height,
        ),
        state: state,
        color: color,
        outlineWidth: size.width * 0.0012,
      );
    }
  }

  /// 凡例の見本と同じ描き方にするため共通にしている
  static void paintHighlight(
    Canvas canvas,
    Rect rect, {
    required _WishState state,
    required Color color,
    required double outlineWidth,
  }) {
    // 番号が読めるように半透明にする
    switch (state) {
      case _WishState.going:
        canvas.drawRect(rect, Paint()..color = color.withValues(alpha: 0.55));
      case _WishState.undecided:
        canvas.drawRect(
          rect.deflate(outlineWidth / 2),
          Paint()
            ..color = color
            ..style = PaintingStyle.stroke
            ..strokeWidth = outlineWidth,
        );
      case _WishState.done:
        canvas.drawRect(rect, Paint()..color = const Color(0x80757575));
    }
  }

  @override
  bool shouldRepaint(_WishHighlightPainter oldDelegate) {
    return !listEquals(oldDelegate.highlights, highlights) ||
        oldDelegate.color != color;
  }
}

/// ハイライトの凡例
class _WishLegend extends StatelessWidget {
  const _WishLegend();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final color = M3ThemeConfig.customColor.favoriteButton;

    // 地図の操作を邪魔しない
    return IgnorePointer(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: colorScheme.surface.withValues(alpha: 0.9),
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: colorScheme.outlineVariant),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            spacing: 4,
            children: [
              for (final state in _WishState.values)
                Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 6,
                  children: [
                    CustomPaint(
                      size: const Size(16, 12),
                      painter: _WishSwatchPainter(state: state, color: color),
                    ),
                    Text(
                      state.label,
                      style: TextStyle(fontSize: M3ThemeConfig.fontSize.small),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _WishSwatchPainter extends CustomPainter {
  _WishSwatchPainter({required this.state, required this.color});
  final _WishState state;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    // 地図と同じく白地の上に描く
    final rect = Offset.zero & size;
    canvas.drawRect(rect, Paint()..color = const Color(0xFFFFFFFF));
    _WishHighlightPainter.paintHighlight(
      canvas,
      rect,
      state: state,
      color: color,
      outlineWidth: 2,
    );
  }

  @override
  bool shouldRepaint(_WishSwatchPainter oldDelegate) {
    return oldDelegate.state != state || oldDelegate.color != color;
  }
}

/// スペースの枠と番号が増える向きを表示する(デバッグ用)
class _SpaceDebugLayer extends StatelessWidget {
  const _SpaceDebugLayer({required this.spaces});
  final List<MapSpaceModel> spaces;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: CustomPaint(
        size: Size.infinite,
        painter: _SpaceDebugPainter(spaces: spaces),
      ),
    );
  }
}

class _SpaceDebugPainter extends CustomPainter {
  _SpaceDebugPainter({required this.spaces});
  final List<MapSpaceModel> spaces;

  @override
  void paint(Canvas canvas, Size size) {
    final fill = Paint()..color = const Color(0x331E88E5);
    final outline = Paint()
      ..color = const Color(0xFF1E88E5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0005;
    final arrow = Paint()
      ..color = const Color(0xFF000000)
      ..strokeWidth = size.width * 0.0008;

    for (final space in spaces) {
      final rect = Rect.fromLTRB(
        space.rect.left * size.width,
        space.rect.top * size.height,
        space.rect.right * size.width,
        space.rect.bottom * size.height,
      );
      canvas
        ..drawRect(rect, fill)
        ..drawRect(rect, outline);

      // 中心から番号が増える向きへ線を引く
      final length = math.min(rect.width, rect.height) * 0.35;
      final direction = switch (space.direction) {
        MapSpaceDirection.up => const Offset(0, -1),
        MapSpaceDirection.down => const Offset(0, 1),
        MapSpaceDirection.left => const Offset(-1, 0),
        MapSpaceDirection.right => const Offset(1, 0),
      };
      final end = rect.center + direction * length;
      canvas
        ..drawLine(rect.center, end, arrow)
        ..drawCircle(end, arrow.strokeWidth * 1.5, arrow);
    }
  }

  @override
  bool shouldRepaint(_SpaceDebugPainter oldDelegate) {
    return oldDelegate.spaces != spaces;
  }
}

class _PenToolbar extends ConsumerWidget {
  const _PenToolbar({required this.selected, required this.onSelected});
  final _MapTool selected;
  final ValueChanged<_MapTool> onSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasStrokes =
        ref.watch(mapStrokeControllerProvider).value?.isNotEmpty ?? false;
    final colorScheme = Theme.of(context).colorScheme;

    Widget toolButton(_MapTool tool, Widget icon, {String? tooltip}) {
      final isSelected = tool == selected;
      return IconButton(
        tooltip: tooltip,
        isSelected: isSelected,
        onPressed: () => onSelected(tool),
        icon: icon,
        style: IconButton.styleFrom(
          side: isSelected
              ? BorderSide(color: colorScheme.primary, width: 2)
              : null,
        ),
      );
    }

    return Material(
      color: colorScheme.surfaceContainer,
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Row(
            children: [
              for (final pen in _penTools)
                toolButton(
                  pen,
                  Icon(
                    pen.width > 0.005 ? Icons.highlight : Icons.circle,
                    color: pen.color.withAlpha(0xFF),
                  ),
                ),
              toolButton(
                _eraserTool,
                const Icon(Symbols.ink_eraser),
                tooltip: '消しゴム',
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
