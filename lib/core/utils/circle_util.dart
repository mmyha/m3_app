import '../../domain/model/circle_model.dart';

// ignore: avoid_classes_with_only_static_members
class CircleUtil {
  static String generateSpaceName({
    RealSpModel? realSp,
    WebSpModel? webSp,
  }) {
    var spaceName = '';

    if (realSp != null && webSp != null) {
      spaceName = '${realSp.area}-${realSp.no} / ${webSp.area}-${webSp.no}';
    } else if (realSp != null && webSp == null) {
      spaceName = '${realSp.area}-${realSp.no}';
    } else {
      spaceName = '${webSp!.area}-${webSp.no}';
    }
    return spaceName;
  }
}
