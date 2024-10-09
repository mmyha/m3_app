sealed class Result<T, E extends Exception> {
  const Result();
}

final class Success<T, E extends Exception> extends Result<T, E> {
  const Success(this.value);
  final T value;
}

final class Failure<T, E extends Exception> extends Result<T, E> {
  const Failure(this.exception);
  final E exception;
}
