// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'circle_wish_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CircleWishModel {
  int get circleId;
  String get name;
  String get spaceName;
  bool get isFavorite;
  bool get isDone;
  int get amount;
  String get memo;

  /// Create a copy of CircleWishModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CircleWishModelCopyWith<CircleWishModel> get copyWith =>
      _$CircleWishModelCopyWithImpl<CircleWishModel>(
          this as CircleWishModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CircleWishModel &&
            (identical(other.circleId, circleId) ||
                other.circleId == circleId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.spaceName, spaceName) ||
                other.spaceName == spaceName) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, circleId, name, spaceName, isFavorite, isDone, amount, memo);

  @override
  String toString() {
    return 'CircleWishModel(circleId: $circleId, name: $name, spaceName: $spaceName, isFavorite: $isFavorite, isDone: $isDone, amount: $amount, memo: $memo)';
  }
}

/// @nodoc
abstract mixin class $CircleWishModelCopyWith<$Res> {
  factory $CircleWishModelCopyWith(
          CircleWishModel value, $Res Function(CircleWishModel) _then) =
      _$CircleWishModelCopyWithImpl;
  @useResult
  $Res call(
      {int circleId,
      String name,
      String spaceName,
      bool isFavorite,
      bool isDone,
      int amount,
      String memo});
}

/// @nodoc
class _$CircleWishModelCopyWithImpl<$Res>
    implements $CircleWishModelCopyWith<$Res> {
  _$CircleWishModelCopyWithImpl(this._self, this._then);

  final CircleWishModel _self;
  final $Res Function(CircleWishModel) _then;

  /// Create a copy of CircleWishModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? circleId = null,
    Object? name = null,
    Object? spaceName = null,
    Object? isFavorite = null,
    Object? isDone = null,
    Object? amount = null,
    Object? memo = null,
  }) {
    return _then(_self.copyWith(
      circleId: null == circleId
          ? _self.circleId
          : circleId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      spaceName: null == spaceName
          ? _self.spaceName
          : spaceName // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _self.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _self.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      memo: null == memo
          ? _self.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [CircleWishModel].
extension CircleWishModelPatterns on CircleWishModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CircleWishModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CircleWishModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CircleWishModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CircleWishModel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CircleWishModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CircleWishModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int circleId, String name, String spaceName,
            bool isFavorite, bool isDone, int amount, String memo)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CircleWishModel() when $default != null:
        return $default(_that.circleId, _that.name, _that.spaceName,
            _that.isFavorite, _that.isDone, _that.amount, _that.memo);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int circleId, String name, String spaceName,
            bool isFavorite, bool isDone, int amount, String memo)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CircleWishModel():
        return $default(_that.circleId, _that.name, _that.spaceName,
            _that.isFavorite, _that.isDone, _that.amount, _that.memo);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int circleId, String name, String spaceName,
            bool isFavorite, bool isDone, int amount, String memo)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CircleWishModel() when $default != null:
        return $default(_that.circleId, _that.name, _that.spaceName,
            _that.isFavorite, _that.isDone, _that.amount, _that.memo);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CircleWishModel implements CircleWishModel {
  const _CircleWishModel(
      {required this.circleId,
      required this.name,
      required this.spaceName,
      required this.isFavorite,
      required this.isDone,
      required this.amount,
      required this.memo});

  @override
  final int circleId;
  @override
  final String name;
  @override
  final String spaceName;
  @override
  final bool isFavorite;
  @override
  final bool isDone;
  @override
  final int amount;
  @override
  final String memo;

  /// Create a copy of CircleWishModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CircleWishModelCopyWith<_CircleWishModel> get copyWith =>
      __$CircleWishModelCopyWithImpl<_CircleWishModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CircleWishModel &&
            (identical(other.circleId, circleId) ||
                other.circleId == circleId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.spaceName, spaceName) ||
                other.spaceName == spaceName) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, circleId, name, spaceName, isFavorite, isDone, amount, memo);

  @override
  String toString() {
    return 'CircleWishModel(circleId: $circleId, name: $name, spaceName: $spaceName, isFavorite: $isFavorite, isDone: $isDone, amount: $amount, memo: $memo)';
  }
}

/// @nodoc
abstract mixin class _$CircleWishModelCopyWith<$Res>
    implements $CircleWishModelCopyWith<$Res> {
  factory _$CircleWishModelCopyWith(
          _CircleWishModel value, $Res Function(_CircleWishModel) _then) =
      __$CircleWishModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int circleId,
      String name,
      String spaceName,
      bool isFavorite,
      bool isDone,
      int amount,
      String memo});
}

/// @nodoc
class __$CircleWishModelCopyWithImpl<$Res>
    implements _$CircleWishModelCopyWith<$Res> {
  __$CircleWishModelCopyWithImpl(this._self, this._then);

  final _CircleWishModel _self;
  final $Res Function(_CircleWishModel) _then;

  /// Create a copy of CircleWishModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? circleId = null,
    Object? name = null,
    Object? spaceName = null,
    Object? isFavorite = null,
    Object? isDone = null,
    Object? amount = null,
    Object? memo = null,
  }) {
    return _then(_CircleWishModel(
      circleId: null == circleId
          ? _self.circleId
          : circleId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      spaceName: null == spaceName
          ? _self.spaceName
          : spaceName // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _self.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _self.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      memo: null == memo
          ? _self.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
