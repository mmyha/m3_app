// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'circle_api_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CircleApiResponse _$CircleApiResponseFromJson(Map<String, dynamic> json) {
  return _CircleApiResponse.fromJson(json);
}

/// @nodoc
mixin _$CircleApiResponse {
  List<CircleModelDto> get items => throw _privateConstructorUsedError;

  /// Serializes this CircleApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CircleApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CircleApiResponseCopyWith<CircleApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CircleApiResponseCopyWith<$Res> {
  factory $CircleApiResponseCopyWith(
          CircleApiResponse value, $Res Function(CircleApiResponse) then) =
      _$CircleApiResponseCopyWithImpl<$Res, CircleApiResponse>;
  @useResult
  $Res call({List<CircleModelDto> items});
}

/// @nodoc
class _$CircleApiResponseCopyWithImpl<$Res, $Val extends CircleApiResponse>
    implements $CircleApiResponseCopyWith<$Res> {
  _$CircleApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CircleApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CircleModelDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CircleApiResponseImplCopyWith<$Res>
    implements $CircleApiResponseCopyWith<$Res> {
  factory _$$CircleApiResponseImplCopyWith(_$CircleApiResponseImpl value,
          $Res Function(_$CircleApiResponseImpl) then) =
      __$$CircleApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CircleModelDto> items});
}

/// @nodoc
class __$$CircleApiResponseImplCopyWithImpl<$Res>
    extends _$CircleApiResponseCopyWithImpl<$Res, _$CircleApiResponseImpl>
    implements _$$CircleApiResponseImplCopyWith<$Res> {
  __$$CircleApiResponseImplCopyWithImpl(_$CircleApiResponseImpl _value,
      $Res Function(_$CircleApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CircleApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$CircleApiResponseImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CircleModelDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CircleApiResponseImpl implements _CircleApiResponse {
  const _$CircleApiResponseImpl({required final List<CircleModelDto> items})
      : _items = items;

  factory _$CircleApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CircleApiResponseImplFromJson(json);

  final List<CircleModelDto> _items;
  @override
  List<CircleModelDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CircleApiResponse(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CircleApiResponseImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of CircleApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CircleApiResponseImplCopyWith<_$CircleApiResponseImpl> get copyWith =>
      __$$CircleApiResponseImplCopyWithImpl<_$CircleApiResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CircleApiResponseImplToJson(
      this,
    );
  }
}

abstract class _CircleApiResponse implements CircleApiResponse {
  const factory _CircleApiResponse(
      {required final List<CircleModelDto> items}) = _$CircleApiResponseImpl;

  factory _CircleApiResponse.fromJson(Map<String, dynamic> json) =
      _$CircleApiResponseImpl.fromJson;

  @override
  List<CircleModelDto> get items;

  /// Create a copy of CircleApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CircleApiResponseImplCopyWith<_$CircleApiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
