// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circle_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CircleListController)
final circleListControllerProvider = CircleListControllerProvider._();

final class CircleListControllerProvider
    extends $AsyncNotifierProvider<CircleListController, List<CircleModel>> {
  CircleListControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'circleListControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$circleListControllerHash();

  @$internal
  @override
  CircleListController create() => CircleListController();
}

String _$circleListControllerHash() =>
    r'9ddd6f0804497a7fe9392e24dd28e6c0dc0c7f29';

abstract class _$CircleListController
    extends $AsyncNotifier<List<CircleModel>> {
  FutureOr<List<CircleModel>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<CircleModel>>, List<CircleModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<CircleModel>>, List<CircleModel>>,
              AsyncValue<List<CircleModel>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
