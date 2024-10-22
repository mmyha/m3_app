import 'package:m3_app/provider/common/shared_preference_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'budget_state.g.dart';

@riverpod
class BudgetState extends _$BudgetState {
  @override
  int build() {
    final budget = ref.read(sharedPreferencesProvider).getInt('budget') ?? 0;
    return budget;
  }

  void updateBudget(int budget) {
    ref.read(sharedPreferencesProvider).setInt('budget', budget);
    state = budget;
  }
}
