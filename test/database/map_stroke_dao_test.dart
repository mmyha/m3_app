import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:m3_app/domain/model/map_stroke_model.dart';
import 'package:m3_app/infrastructure/local/dao/map_stroke_dao.dart';
import 'package:m3_app/infrastructure/local/db/circle_database.dart';

void main() {
  late CircleDatabase db;
  late MapStrokeDao dao;

  const mockStroke = MapStrokeModel(
    pageNumber: 1,
    color: 0xFFE53935,
    width: 0.0015,
    points: [Offset(0.1, 0.2), Offset(0.25, 0.5)],
  );

  setUp(() {
    db = CircleDatabase.memory();
    dao = MapStrokeDao(db);
  });

  tearDown(() async {
    await db.close();
  });

  group('マップの手書きdaoテスト', () {
    test('追加、取得', () async {
      final id = await dao.addMapStroke(stroke: mockStroke);

      final data = await dao.getAllMapStrokes();

      expect(data.length, 1);
      expect(data[0], mockStroke.copyWith(id: id));
    });

    test('ID指定で削除', () async {
      final firstId = await dao.addMapStroke(stroke: mockStroke);
      final secondId = await dao.addMapStroke(stroke: mockStroke);
      final thirdId = await dao.addMapStroke(stroke: mockStroke);

      await dao.deleteMapStrokes(ids: [firstId, thirdId]);

      final data = await dao.getAllMapStrokes();
      expect(data.map((stroke) => stroke.id), [secondId]);
    });

    test('消しゴムの跡を追加、取得', () async {
      final eraser = mockStroke.copyWith(isEraser: true);
      final id = await dao.addMapStroke(stroke: eraser);

      final data = await dao.getAllMapStrokes();

      expect(data, [eraser.copyWith(id: id)]);
    });

    test('全件削除', () async {
      await dao.addMapStroke(stroke: mockStroke);
      await dao.addMapStroke(stroke: mockStroke);

      await dao.deleteAllMapStrokes();

      expect(await dao.getAllMapStrokes(), isEmpty);
    });
  });

  Future<int> userVersion(CircleDatabase db) {
    return db
        .customSelect('PRAGMA user_version')
        .map((row) => row.read<int>('user_version'))
        .getSingle();
  }

  test('schemaVersion 1 からのマイグレーションでテーブルが作られる', () async {
    final oldDb = CircleDatabase.fotTest(
      NativeDatabase.memory(
        setup: (rawDb) {
          // 既存のDBを再現する
          if (rawDb.userVersion == 0) {
            rawDb.userVersion = 1;
          }
        },
      ),
    );
    addTearDown(oldDb.close);

    final oldDao = MapStrokeDao(oldDb);
    await oldDao.addMapStroke(stroke: mockStroke.copyWith(isEraser: true));

    expect((await oldDao.getAllMapStrokes()).single.isEraser, isTrue);
    expect(await userVersion(oldDb), 3);
  });

  test('schemaVersion 2 からのマイグレーションで消しゴムの列が追加される', () async {
    final oldDb = CircleDatabase.fotTest(
      NativeDatabase.memory(
        setup: (rawDb) {
          // isEraser がない頃のテーブルと保存済みの線を再現する
          if (rawDb.userVersion == 0) {
            rawDb
              ..execute(
                'CREATE TABLE map_strokes ('
                'id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, '
                'page_number INTEGER NOT NULL, '
                'color INTEGER NOT NULL, '
                'width REAL NOT NULL, '
                'points TEXT NOT NULL)',
              )
              ..execute(
                'INSERT INTO map_strokes (page_number, color, width, points) '
                "VALUES (1, 4293212469, 0.0015, '[0.1,0.2]')",
              )
              ..userVersion = 2;
          }
        },
      ),
    );
    addTearDown(oldDb.close);

    final oldDao = MapStrokeDao(oldDb);
    await oldDao.addMapStroke(stroke: mockStroke.copyWith(isEraser: true));

    final data = await oldDao.getAllMapStrokes();
    expect(data.map((stroke) => stroke.isEraser), [false, true]);
    expect(await userVersion(oldDb), 3);
  });
}
