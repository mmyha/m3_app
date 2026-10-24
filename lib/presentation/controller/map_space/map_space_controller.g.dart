// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_space_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MapSpaceController)
final mapSpaceControllerProvider = MapSpaceControllerProvider._();

final class MapSpaceControllerProvider
    extends
        $AsyncNotifierProvider<MapSpaceController, Map<String, MapSpaceModel>> {
  MapSpaceControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mapSpaceControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mapSpaceControllerHash();

  @$internal
  @override
  MapSpaceController create() => MapSpaceController();
}

String _$mapSpaceControllerHash() =>
    r'781028c85139dfb468a2df8b85f4a5db60745156';

abstract class _$MapSpaceController
    extends $AsyncNotifier<Map<String, MapSpaceModel>> {
  FutureOr<Map<String, MapSpaceModel>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<Map<String, MapSpaceModel>>,
              Map<String, MapSpaceModel>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<Map<String, MapSpaceModel>>,
                Map<String, MapSpaceModel>
              >,
              AsyncValue<Map<String, MapSpaceModel>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
