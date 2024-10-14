// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'circle_wish_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CircleWishModel {
  int get circleId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get spaceName => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;

  /// Create a copy of CircleWishModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CircleWishModelCopyWith<CircleWishModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CircleWishModelCopyWith<$Res> {
  factory $CircleWishModelCopyWith(
          CircleWishModel value, $Res Function(CircleWishModel) then) =
      _$CircleWishModelCopyWithImpl<$Res, CircleWishModel>;
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
class _$CircleWishModelCopyWithImpl<$Res, $Val extends CircleWishModel>
    implements $CircleWishModelCopyWith<$Res> {
  _$CircleWishModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      circleId: null == circleId
          ? _value.circleId
          : circleId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      spaceName: null == spaceName
          ? _value.spaceName
          : spaceName // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CircleWishModelImplCopyWith<$Res>
    implements $CircleWishModelCopyWith<$Res> {
  factory _$$CircleWishModelImplCopyWith(_$CircleWishModelImpl value,
          $Res Function(_$CircleWishModelImpl) then) =
      __$$CircleWishModelImplCopyWithImpl<$Res>;
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
class __$$CircleWishModelImplCopyWithImpl<$Res>
    extends _$CircleWishModelCopyWithImpl<$Res, _$CircleWishModelImpl>
    implements _$$CircleWishModelImplCopyWith<$Res> {
  __$$CircleWishModelImplCopyWithImpl(
      _$CircleWishModelImpl _value, $Res Function(_$CircleWishModelImpl) _then)
      : super(_value, _then);

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
    return _then(_$CircleWishModelImpl(
      circleId: null == circleId
          ? _value.circleId
          : circleId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      spaceName: null == spaceName
          ? _value.spaceName
          : spaceName // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CircleWishModelImpl implements _CircleWishModel {
  const _$CircleWishModelImpl(
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

  @override
  String toString() {
    return 'CircleWishModel(circleId: $circleId, name: $name, spaceName: $spaceName, isFavorite: $isFavorite, isDone: $isDone, amount: $amount, memo: $memo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CircleWishModelImpl &&
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

  /// Create a copy of CircleWishModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CircleWishModelImplCopyWith<_$CircleWishModelImpl> get copyWith =>
      __$$CircleWishModelImplCopyWithImpl<_$CircleWishModelImpl>(
          this, _$identity);
}

abstract class _CircleWishModel implements CircleWishModel {
  const factory _CircleWishModel(
      {required final int circleId,
      required final String name,
      required final String spaceName,
      required final bool isFavorite,
      required final bool isDone,
      required final int amount,
      required final String memo}) = _$CircleWishModelImpl;

  @override
  int get circleId;
  @override
  String get name;
  @override
  String get spaceName;
  @override
  bool get isFavorite;
  @override
  bool get isDone;
  @override
  int get amount;
  @override
  String get memo;

  /// Create a copy of CircleWishModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CircleWishModelImplCopyWith<_$CircleWishModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
