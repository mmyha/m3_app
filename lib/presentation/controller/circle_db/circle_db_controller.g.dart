// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circle_db_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CircleDBController)
final circleDBControllerProvider = CircleDBControllerProvider._();

final class CircleDBControllerProvider
    extends $AsyncNotifierProvider<CircleDBController, void> {
  CircleDBControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'circleDBControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$circleDBControllerHash();

  @$internal
  @override
  CircleDBController create() => CircleDBController();
}

String _$circleDBControllerHash() =>
    r'1600c7f22a6e8d9ae0643779b7a27ffeeb22b268';

abstract class _$CircleDBController extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
