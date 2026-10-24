// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_space_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MapSpaceModel {

 int get pageNumber; Rect get rect; MapSpaceDirection get direction;
/// Create a copy of MapSpaceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapSpaceModelCopyWith<MapSpaceModel> get copyWith => _$MapSpaceModelCopyWithImpl<MapSpaceModel>(this as MapSpaceModel, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MapSpaceModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapSpaceModel&&(identical(other.pageNumber, _this.pageNumber) || other.pageNumber == _this.pageNumber)&&(identical(other.rect, _this.rect) || other.rect == _this.rect)&&(identical(other.direction, _this.direction) || other.direction == _this.direction));
}


@override
int get hashCode {
  final _this = this as MapSpaceModel;
  return Object.hash(runtimeType,_this.pageNumber,_this.rect,_this.direction);
}

@override
String toString() {
  final _this = this as MapSpaceModel;
  return 'MapSpaceModel(pageNumber: ${_this.pageNumber}, rect: ${_this.rect}, direction: ${_this.direction})';
}


}

/// @nodoc
abstract mixin class $MapSpaceModelCopyWith<$Res>  {
  factory $MapSpaceModelCopyWith(MapSpaceModel value, $Res Function(MapSpaceModel) _then) = _$MapSpaceModelCopyWithImpl;
@useResult
$Res call({
 int pageNumber, Rect rect, MapSpaceDirection direction
});




}
/// @nodoc
class _$MapSpaceModelCopyWithImpl<$Res>
    implements $MapSpaceModelCopyWith<$Res> {
  _$MapSpaceModelCopyWithImpl(this._self, this._then);

  final MapSpaceModel _self;
  final $Res Function(MapSpaceModel) _then;

/// Create a copy of MapSpaceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pageNumber = null,Object? rect = null,Object? direction = null,}) {
  return _then(MapSpaceModel(
pageNumber: null == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int,rect: null == rect ? _self.rect : rect // ignore: cast_nullable_to_non_nullable
as Rect,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as MapSpaceDirection,
  ));
}

}


/// Adds pattern-matching-related methods to [MapSpaceModel].
extension MapSpaceModelPatterns on MapSpaceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MapSpaceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapSpaceModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MapSpaceModel value)  $default,){
final _that = this;
switch (_that) {
case _MapSpaceModel():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MapSpaceModel value)?  $default,){
final _that = this;
switch (_that) {
case _MapSpaceModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int pageNumber,  Rect rect,  MapSpaceDirection direction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapSpaceModel() when $default != null:
return $default(_that.pageNumber,_that.rect,_that.direction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int pageNumber,  Rect rect,  MapSpaceDirection direction)  $default,) {final _that = this;
switch (_that) {
case _MapSpaceModel():
return $default(_that.pageNumber,_that.rect,_that.direction);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int pageNumber,  Rect rect,  MapSpaceDirection direction)?  $default,) {final _that = this;
switch (_that) {
case _MapSpaceModel() when $default != null:
return $default(_that.pageNumber,_that.rect,_that.direction);case _:
  return null;

}
}

}

/// @nodoc


class _MapSpaceModel implements MapSpaceModel {
  const _MapSpaceModel({required this.pageNumber, required this.rect, required this.direction});
  

@override final  int pageNumber;
@override final  Rect rect;
@override final  MapSpaceDirection direction;

/// Create a copy of MapSpaceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapSpaceModelCopyWith<_MapSpaceModel> get copyWith => __$MapSpaceModelCopyWithImpl<_MapSpaceModel>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapSpaceModel&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber)&&(identical(other.rect, rect) || other.rect == rect)&&(identical(other.direction, direction) || other.direction == direction));
}


@override
int get hashCode {
    return Object.hash(runtimeType,pageNumber,rect,direction);
}

@override
String toString() {
    return 'MapSpaceModel(pageNumber: $pageNumber, rect: $rect, direction: $direction)';
}


}

/// @nodoc
abstract mixin class _$MapSpaceModelCopyWith<$Res> implements $MapSpaceModelCopyWith<$Res> {
  factory _$MapSpaceModelCopyWith(_MapSpaceModel value, $Res Function(_MapSpaceModel) _then) = __$MapSpaceModelCopyWithImpl;
@override @useResult
$Res call({
 int pageNumber, Rect rect, MapSpaceDirection direction
});




}
/// @nodoc
class __$MapSpaceModelCopyWithImpl<$Res>
    implements _$MapSpaceModelCopyWith<$Res> {
  __$MapSpaceModelCopyWithImpl(this._self, this._then);

  final _MapSpaceModel _self;
  final $Res Function(_MapSpaceModel) _then;

/// Create a copy of MapSpaceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pageNumber = null,Object? rect = null,Object? direction = null,}) {
  return _then(_MapSpaceModel(
pageNumber: null == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int,rect: null == rect ? _self.rect : rect // ignore: cast_nullable_to_non_nullable
as Rect,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as MapSpaceDirection,
  ));
}


}

// dart format on
