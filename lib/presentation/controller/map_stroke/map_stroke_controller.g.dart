// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_stroke_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MapStrokeController)
final mapStrokeControllerProvider = MapStrokeControllerProvider._();

final class MapStrokeControllerProvider
    extends $AsyncNotifierProvider<MapStrokeController, List<MapStrokeModel>> {
  MapStrokeControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mapStrokeControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mapStrokeControllerHash();

  @$internal
  @override
  MapStrokeController create() => MapStrokeController();
}

String _$mapStrokeControllerHash() =>
    r'8edb13374cffe06b2c07854f3680095b6a6e2ead';

abstract class _$MapStrokeController
    extends $AsyncNotifier<List<MapStrokeModel>> {
  FutureOr<List<MapStrokeModel>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<MapStrokeModel>>, List<MapStrokeModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<MapStrokeModel>>,
                List<MapStrokeModel>
              >,
              AsyncValue<List<MapStrokeModel>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
