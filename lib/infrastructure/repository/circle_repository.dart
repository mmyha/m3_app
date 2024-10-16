import 'package:m3_app/core/constant/circle_event_name_const.dart';
import 'package:m3_app/domain/model/circle_model.dart';
import 'package:m3_app/infrastructure/http/circle_api/circle_api_service.dart';
import 'package:m3_app/infrastructure/local/dao/circle_dao.dart';

import '../model/circle_api_response/circle_api_response_model.dart';

class CircleRepository {
  const CircleRepository(this._apiService, this._dao);
  final CircleApiService _apiService;
  final CircleInfoDao _dao;

  /// DBからサークル情報を取得
  Future<List<CircleModel>> fetchCircleInfoFromDB() async {
    try {
      final data = await _dao.getAllCircle();
      if (data.isEmpty) {
        throw Exception('APIからデータを取得してください');
      }
      return data;
    } on Exception catch (_) {
      rethrow;
    }
  }

  /// サークルのお気に入り情報を更新
  Future<void> updateCircleFavorite(
      {required int circleId, required bool isFav}) async {
    try {
      await _dao.updateCircleFav(circleId: circleId, isFav: isFav);
    } on Exception catch (_) {
      rethrow;
    }
  }

  /// APIからサークル情報を取得し、DBに保存
  Future<void> saveCircleInfoToDB() async {
    try {
      final circles = await _fetchCircleInfoFromAPI();
      await _dao.addCircleInfoFromResponse(circles);
    } on Exception catch (_) {
      rethrow;
    }
  }

  /// APIからサークル情報を取得
  Future<CircleApiResponse> _fetchCircleInfoFromAPI() async {
    try {
      final response = await _apiService
          .getLatestEventCircles(CircleEventNameConst.CURRENT_EVENT);

      return response;
    } on Exception catch (_) {
      rethrow;
    }
  }
}
