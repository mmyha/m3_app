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
  CircleModel get circle => throw _privateConstructorUsedError;
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
  $Res call({CircleModel circle, bool isDone, int amount, String memo});

  $CircleModelCopyWith<$Res> get circle;
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
    Object? circle = null,
    Object? isDone = null,
    Object? amount = null,
    Object? memo = null,
  }) {
    return _then(_value.copyWith(
      circle: null == circle
          ? _value.circle
          : circle // ignore: cast_nullable_to_non_nullable
              as CircleModel,
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

  /// Create a copy of CircleWishModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CircleModelCopyWith<$Res> get circle {
    return $CircleModelCopyWith<$Res>(_value.circle, (value) {
      return _then(_value.copyWith(circle: value) as $Val);
    });
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
  $Res call({CircleModel circle, bool isDone, int amount, String memo});

  @override
  $CircleModelCopyWith<$Res> get circle;
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
    Object? circle = null,
    Object? isDone = null,
    Object? amount = null,
    Object? memo = null,
  }) {
    return _then(_$CircleWishModelImpl(
      circle: null == circle
          ? _value.circle
          : circle // ignore: cast_nullable_to_non_nullable
              as CircleModel,
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
      {required this.circle,
      required this.isDone,
      required this.amount,
      required this.memo});

  @override
  final CircleModel circle;
  @override
  final bool isDone;
  @override
  final int amount;
  @override
  final String memo;

  @override
  String toString() {
    return 'CircleWishModel(circle: $circle, isDone: $isDone, amount: $amount, memo: $memo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CircleWishModelImpl &&
            (identical(other.circle, circle) || other.circle == circle) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, circle, isDone, amount, memo);

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
      {required final CircleModel circle,
      required final bool isDone,
      required final int amount,
      required final String memo}) = _$CircleWishModelImpl;

  @override
  CircleModel get circle;
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
