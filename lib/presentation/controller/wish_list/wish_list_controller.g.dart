// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wish_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(WishListController)
final wishListControllerProvider = WishListControllerProvider._();

final class WishListControllerProvider
    extends $AsyncNotifierProvider<WishListController, List<CircleWishModel>> {
  WishListControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wishListControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wishListControllerHash();

  @$internal
  @override
  WishListController create() => WishListController();
}

String _$wishListControllerHash() =>
    r'4066f13f51d4483c8f04782fdf298f8d0f93da00';

abstract class _$WishListController
    extends $AsyncNotifier<List<CircleWishModel>> {
  FutureOr<List<CircleWishModel>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<CircleWishModel>>, List<CircleWishModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<CircleWishModel>>,
                List<CircleWishModel>
              >,
              AsyncValue<List<CircleWishModel>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
