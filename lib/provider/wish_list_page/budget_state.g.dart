// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budget_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BudgetState)
final budgetStateProvider = BudgetStateProvider._();

final class BudgetStateProvider extends $NotifierProvider<BudgetState, int> {
  BudgetStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'budgetStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$budgetStateHash();

  @$internal
  @override
  BudgetState create() => BudgetState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$budgetStateHash() => r'b8b7e4fce0be775e2a436a81821ca25069af9cb1';

abstract class _$BudgetState extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
