import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m3_app/domain/model/circle_model.dart';
import 'package:m3_app/domain/model/circle_wish_model.dart';
import 'package:m3_app/infrastracture/local/dao/circle_dao.dart';
import 'package:m3_app/infrastracture/local/dao/circle_fav_dao.dart';
import 'package:m3_app/infrastracture/local/db/circle_database.dart';
import 'package:m3_app/infrastracture/model/circle_api_response/circle_api_response_model.dart';
import 'package:m3_app/provider/infrastructure/dao_provider.dart';
import 'package:test/test.dart';

void main() {
  late ProviderContainer container;
  late CircleInfoDao dao;
  late CircleFavDao favDao;

  final db = CircleDatabase.memory();
  ProviderContainer createContainer() => ProviderContainer(
        overrides: [
          circleDaoProvider.overrideWithValue(CircleInfoDao(db)),
          circleFavDaoProvider.overrideWithValue(CircleFavDao(db)),
        ],
      );

  setUp(() {
    container = createContainer();
    dao = container.read(circleDaoProvider);
    favDao = container.read(circleFavDaoProvider);
  });

  tearDown(() {
    container.dispose();
  });

  group('daoテスト', () {
    test('responseからdb', () async {
      const mockModel = CircleModel(
        id: 1,
        name: 'name',
        phonetic: 'phonetic',
        genre: 'genre',
        spaceSize: 1,
        adult: false,
        prText: 'prText',
        links: SnsLinksModel(
          twitter: SocialLink(text: 'twitter', url: 'twitter'),
        ),
        keywords: [
          KeywordModel(text: 'text', phonetic: 'phonetic'),
        ],
        realSp: RealSpModel(area: 'A', no: '01'),
      );

      const response = CircleApiResponse(items: [mockModel]);

      try {
        await dao.addCircleInfoFromResponse(response);
      } on Exception catch (_) {
        fail('データベース追加エラー');
      }
      // await dao.addCircleInfoFromResponse(response);

      final fromDatabase = await dao.getAllCircle();

      expect(fromDatabase, isA<List<CircleModel>>());
      expect(fromDatabase.length, 1);
      expect(fromDatabase[0].name, 'name');
      expect(fromDatabase[0].links.twitter?.text, 'twitter');
    });
  });

  test('ウィッシュリスト daoテスト', () async {
    const mockModel = CircleWishModel(
      circleId: 1,
      name: 'name',
      spaceName: 'A01',
      isFavorite: true,
      isDone: true,
      amount: 1000,
      memo: 'memo',
    );

    // 追加
    try {
      await favDao.addCircleFav(wish: mockModel);
    } on Exception catch (_) {
      fail('データベース追加エラー');
    }

    // 取得
    final fromDatabase = await favDao.getAllCircleFav();

    expect(fromDatabase, isA<List<CircleWishModel>>());
    expect(fromDatabase.length, 1);
    expect(fromDatabase[0].name, 'name');
    expect(fromDatabase[0].amount, 1000);
  });
}
