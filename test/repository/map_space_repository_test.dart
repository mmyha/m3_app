import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:m3_app/domain/model/map_space_model.dart';
import 'package:m3_app/infrastructure/repository/map_space_repository.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('今回の開催のスペース位置を読み込める', () async {
    final spaces = await MapSpaceRepository(rootBundle).getMapSpaces();

    expect(spaces.length, 925);
    for (final space in spaces.values) {
      expect(space.pageNumber, 1);
      expect(space.rect.left, inInclusiveRange(0, 1));
      expect(space.rect.bottom, inInclusiveRange(0, 1));
      expect(space.rect.width, greaterThan(0));
      expect(space.rect.height, greaterThan(0));
    }
    // ク列: 下の段は右へ、上の段は左へ番号が増え、右端で下から上へ折り返す
    expect(spaces['ク-05']!.direction, MapSpaceDirection.right);
    expect(spaces['ク-19']!.direction, MapSpaceDirection.up);
    expect(spaces['ク-25']!.direction, MapSpaceDirection.left);
    expect(spaces.keys, containsAll(['A-01', 'あ-17', 'キ-13', 'V-37']));
  });
}
