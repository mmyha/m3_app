import 'package:m3_app/provider/common/shared_preference_provider.dart';
import 'package:m3_app/provider/usecase/usecase_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/result.dart';

part 'circle_db_controller.g.dart';

@riverpod
class CircleDBController extends _$CircleDBController {
  @override
  FutureOr<AsyncValue<void>> build() async {
    state = const AsyncValue<void>.loading();
    final isLocalAvailable = isLocalDataAvailable();
    state = isLocalAvailable
        ? const AsyncValue.data(true)
        : const AsyncValue<void>.loading();
    if (!isLocalAvailable) {
      await _saveLocal();
    }
    return state;
  }

  bool isLocalDataAvailable() {
    final prefs = ref.read(sharedPreferencesProvider);
    return prefs.getBool('isLocalAvailable') ?? false;
  }

  Future<void> _saveLocal() async {
    final useCase = ref.read(saveCircleUseCaseProvider);

    state = const AsyncValue<void>.loading();

    // await Future<void>.delayed(const Duration(seconds: 10));

    final result = await useCase.call();

    switch (result) {
      case Success<void, Exception>():
        await ref
            .read(sharedPreferencesProvider)
            .setBool('isLocalAvailable', true);
        print('fetch circle list success');
        state = const AsyncValue.data(true);
      case Failure<void, Exception>():
        throw result.exception;
    }
  }
}
