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
      // spaceName = '${webSp!.area}-${webSp.no}';
    }
    return spaceName;
  }

  static bool isUpperCaseEnglish(String input) {
    final upperCaseRegExp = RegExp(r'^[A-Z]+$');
    return upperCaseRegExp.hasMatch(input);
  }

  static bool isHiragana(String input) {
    final hiraganaRegExp = RegExp(r'^[\u3040-\u309F]+$');
    return hiraganaRegExp.hasMatch(input);
  }

  static bool isKatakana(String input) {
    final katakanaRegExp = RegExp(r'^[\u30A0-\u30FF]+$');
    return katakanaRegExp.hasMatch(input);
  }
}
