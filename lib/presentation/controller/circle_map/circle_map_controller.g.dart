// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circle_map_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CircleMapController)
final circleMapControllerProvider = CircleMapControllerProvider._();

final class CircleMapControllerProvider
    extends $AsyncNotifierProvider<CircleMapController, String> {
  CircleMapControllerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'circleMapControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$circleMapControllerHash();

  @$internal
  @override
  CircleMapController create() => CircleMapController();
}

String _$circleMapControllerHash() =>
    r'7741d8d2930ee86a5bd139e73656097ba870ccff';

abstract class _$CircleMapController extends $AsyncNotifier<String> {
  FutureOr<String> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<String>, String>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<String>, String>,
        AsyncValue<String>,
        Object?,
        Object?>;
    return element.handleCreate(ref, build);
  }
}
