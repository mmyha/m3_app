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

  static final _spaceNoRegExp = RegExp(r'^(\d+)(.*)$');

  /// 会場のスペース順(エリア → 番号 → a, b などの分割位置)で比較する
  ///
  /// スペースがないサークルは後ろに並べる
  static int compareBySpace(CircleModel a, CircleModel b) {
    final spA = a.realSp;
    final spB = b.realSp;
    if (spA?.area == null || spB?.area == null) {
      return (spA?.area == null ? 1 : 0) - (spB?.area == null ? 1 : 0);
    }

    final area = spA!.area!.compareTo(spB!.area!);
    if (area != 0) {
      return area;
    }

    final matchA = _spaceNoRegExp.firstMatch(spA.no ?? '');
    final matchB = _spaceNoRegExp.firstMatch(spB.no ?? '');
    if (matchA == null || matchB == null) {
      return (spA.no ?? '').compareTo(spB.no ?? '');
    }
    final number = int.parse(
      matchA.group(1)!,
    ).compareTo(int.parse(matchB.group(1)!));
    if (number != 0) {
      return number;
    }
    return matchA.group(2)!.compareTo(matchB.group(2)!);
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
