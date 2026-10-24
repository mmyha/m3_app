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

    test('1件削除', () async {
      final firstId = await dao.addMapStroke(stroke: mockStroke);
      final secondId = await dao.addMapStroke(
        stroke: mockStroke.copyWith(pageNumber: 2),
      );

      await dao.deleteMapStroke(id: secondId);

      final data = await dao.getAllMapStrokes();
      expect(data.map((stroke) => stroke.id), [firstId]);
    });

    test('全件削除', () async {
      await dao.addMapStroke(stroke: mockStroke);
      await dao.addMapStroke(stroke: mockStroke);

      await dao.deleteAllMapStrokes();

      expect(await dao.getAllMapStrokes(), isEmpty);
    });
  });

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
    await oldDao.addMapStroke(stroke: mockStroke);

    expect((await oldDao.getAllMapStrokes()).length, 1);
    expect(
      await oldDb
          .customSelect('PRAGMA user_version')
          .map((row) => row.read<int>('user_version'))
          .getSingle(),
      2,
    );
  });
}
