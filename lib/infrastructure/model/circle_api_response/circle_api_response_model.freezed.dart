// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'circle_api_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CircleApiResponse {
  List<CircleModelDto> get items;

  /// Create a copy of CircleApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CircleApiResponseCopyWith<CircleApiResponse> get copyWith =>
      _$CircleApiResponseCopyWithImpl<CircleApiResponse>(
          this as CircleApiResponse, _$identity);

  /// Serializes this CircleApiResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CircleApiResponse &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @override
  String toString() {
    return 'CircleApiResponse(items: $items)';
  }
}

/// @nodoc
abstract mixin class $CircleApiResponseCopyWith<$Res> {
  factory $CircleApiResponseCopyWith(
          CircleApiResponse value, $Res Function(CircleApiResponse) _then) =
      _$CircleApiResponseCopyWithImpl;
  @useResult
  $Res call({List<CircleModelDto> items});
}

/// @nodoc
class _$CircleApiResponseCopyWithImpl<$Res>
    implements $CircleApiResponseCopyWith<$Res> {
  _$CircleApiResponseCopyWithImpl(this._self, this._then);

  final CircleApiResponse _self;
  final $Res Function(CircleApiResponse) _then;

  /// Create a copy of CircleApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_self.copyWith(
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CircleModelDto>,
    ));
  }
}

/// Adds pattern-matching-related methods to [CircleApiResponse].
extension CircleApiResponsePatterns on CircleApiResponse {
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
    TResult Function(_CircleApiResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CircleApiResponse() when $default != null:
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
    TResult Function(_CircleApiResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CircleApiResponse():
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
    TResult? Function(_CircleApiResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CircleApiResponse() when $default != null:
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
    TResult Function(List<CircleModelDto> items)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CircleApiResponse() when $default != null:
        return $default(_that.items);
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
    TResult Function(List<CircleModelDto> items) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CircleApiResponse():
        return $default(_that.items);
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
    TResult? Function(List<CircleModelDto> items)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CircleApiResponse() when $default != null:
        return $default(_that.items);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CircleApiResponse implements CircleApiResponse {
  const _CircleApiResponse({required final List<CircleModelDto> items})
      : _items = items;
  factory _CircleApiResponse.fromJson(Map<String, dynamic> json) =>
      _$CircleApiResponseFromJson(json);

  final List<CircleModelDto> _items;
  @override
  List<CircleModelDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// Create a copy of CircleApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CircleApiResponseCopyWith<_CircleApiResponse> get copyWith =>
      __$CircleApiResponseCopyWithImpl<_CircleApiResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CircleApiResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CircleApiResponse &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @override
  String toString() {
    return 'CircleApiResponse(items: $items)';
  }
}

/// @nodoc
abstract mixin class _$CircleApiResponseCopyWith<$Res>
    implements $CircleApiResponseCopyWith<$Res> {
  factory _$CircleApiResponseCopyWith(
          _CircleApiResponse value, $Res Function(_CircleApiResponse) _then) =
      __$CircleApiResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<CircleModelDto> items});
}

/// @nodoc
class __$CircleApiResponseCopyWithImpl<$Res>
    implements _$CircleApiResponseCopyWith<$Res> {
  __$CircleApiResponseCopyWithImpl(this._self, this._then);

  final _CircleApiResponse _self;
  final $Res Function(_CircleApiResponse) _then;

  /// Create a copy of CircleApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = null,
  }) {
    return _then(_CircleApiResponse(
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CircleModelDto>,
    ));
  }
}

// dart format on
