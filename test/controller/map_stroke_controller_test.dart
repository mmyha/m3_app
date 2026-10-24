import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m3_app/domain/model/map_stroke_model.dart';
import 'package:m3_app/infrastructure/local/db/circle_database.dart';
import 'package:m3_app/presentation/controller/map_stroke/map_stroke_controller.dart';
import 'package:m3_app/provider/infrastructure/database_provider.dart';

void main() {
  late CircleDatabase db;

  MapStrokeModel stroke(int pageNumber, {bool isEraser = false}) =>
      MapStrokeModel(
        pageNumber: pageNumber,
        color: 0xFFE53935,
        width: 0.0015,
        points: const [Offset(0.1, 0.2), Offset(0.25, 0.5)],
        isEraser: isEraser,
      );

  Future<ProviderContainer> createContainer() async {
    final container =
        ProviderContainer(
            overrides: [databaseProvider.overrideWithValue(db)],
          )
          // 破棄されないように購読しておく
          ..listen(mapStrokeControllerProvider, (_, _) {});
    addTearDown(container.dispose);
    await container.read(mapStrokeControllerProvider.future);
    return container;
  }

  setUp(() {
    db = CircleDatabase.memory();
  });

  tearDown(() async {
    await db.close();
  });

  test('元に戻すと消しゴムの跡も最後の1本として取り消される', () async {
    final container = await createContainer();
    final controller = container.read(mapStrokeControllerProvider.notifier);
    await controller.add(stroke(1));
    await controller.add(stroke(1, isEraser: true));

    await controller.undo();

    final strokes = container.read(mapStrokeControllerProvider).value!;
    expect(strokes.map((s) => s.isEraser), [false]);
    expect((await db.getAllMapStrokes()).map((s) => s.isEraser), [false]);
  });

  test('再起動後も元に戻せる', () async {
    final before = await createContainer();
    await before.read(mapStrokeControllerProvider.notifier).add(stroke(1));
    await before.read(mapStrokeControllerProvider.notifier).add(stroke(2));
    before.dispose();

    final after = await createContainer();
    await after.read(mapStrokeControllerProvider.notifier).undo();

    final strokes = after.read(mapStrokeControllerProvider).value!;
    expect(strokes.map((s) => s.pageNumber), [1]);
  });

  test('全て消す', () async {
    final container = await createContainer();
    final controller = container.read(mapStrokeControllerProvider.notifier);
    await controller.add(stroke(1));
    await controller.add(stroke(1, isEraser: true));

    await controller.clear();

    expect(container.read(mapStrokeControllerProvider).value, isEmpty);
    expect(await db.getAllMapStrokes(), isEmpty);
  });
}
