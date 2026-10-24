// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_space_circles_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// マップのスペース("A-01")ごとのサークル

@ProviderFor(MapSpaceCirclesController)
final mapSpaceCirclesControllerProvider = MapSpaceCirclesControllerProvider._();

/// マップのスペース("A-01")ごとのサークル
final class MapSpaceCirclesControllerProvider
    extends
        $AsyncNotifierProvider<
          MapSpaceCirclesController,
          Map<String, List<CircleModel>>
        > {
  /// マップのスペース("A-01")ごとのサークル
  MapSpaceCirclesControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mapSpaceCirclesControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mapSpaceCirclesControllerHash();

  @$internal
  @override
  MapSpaceCirclesController create() => MapSpaceCirclesController();
}

String _$mapSpaceCirclesControllerHash() =>
    r'b5559e9076d01db95ce59211023494f79ff45974';

/// マップのスペース("A-01")ごとのサークル

abstract class _$MapSpaceCirclesController
    extends $AsyncNotifier<Map<String, List<CircleModel>>> {
  FutureOr<Map<String, List<CircleModel>>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<Map<String, List<CircleModel>>>,
              Map<String, List<CircleModel>>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<Map<String, List<CircleModel>>>,
                Map<String, List<CircleModel>>
              >,
              AsyncValue<Map<String, List<CircleModel>>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
