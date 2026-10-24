// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_stroke_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MapStrokeModel {

 int? get id; int get pageNumber; int get color; double get width; List<Offset> get points;
/// Create a copy of MapStrokeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapStrokeModelCopyWith<MapStrokeModel> get copyWith => _$MapStrokeModelCopyWithImpl<MapStrokeModel>(this as MapStrokeModel, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MapStrokeModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapStrokeModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.pageNumber, _this.pageNumber) || other.pageNumber == _this.pageNumber)&&(identical(other.color, _this.color) || other.color == _this.color)&&(identical(other.width, _this.width) || other.width == _this.width)&&const DeepCollectionEquality().equals(other.points, _this.points));
}


@override
int get hashCode {
  final _this = this as MapStrokeModel;
  return Object.hash(runtimeType,_this.id,_this.pageNumber,_this.color,_this.width,const DeepCollectionEquality().hash(_this.points));
}

@override
String toString() {
  final _this = this as MapStrokeModel;
  return 'MapStrokeModel(id: ${_this.id}, pageNumber: ${_this.pageNumber}, color: ${_this.color}, width: ${_this.width}, points: ${_this.points})';
}


}

/// @nodoc
abstract mixin class $MapStrokeModelCopyWith<$Res>  {
  factory $MapStrokeModelCopyWith(MapStrokeModel value, $Res Function(MapStrokeModel) _then) = _$MapStrokeModelCopyWithImpl;
@useResult
$Res call({
 int? id, int pageNumber, int color, double width, List<Offset> points
});




}
/// @nodoc
class _$MapStrokeModelCopyWithImpl<$Res>
    implements $MapStrokeModelCopyWith<$Res> {
  _$MapStrokeModelCopyWithImpl(this._self, this._then);

  final MapStrokeModel _self;
  final $Res Function(MapStrokeModel) _then;

/// Create a copy of MapStrokeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? pageNumber = null,Object? color = null,Object? width = null,Object? points = null,}) {
  return _then(MapStrokeModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,pageNumber: null == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as int,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as List<Offset>,
  ));
}

}


/// Adds pattern-matching-related methods to [MapStrokeModel].
extension MapStrokeModelPatterns on MapStrokeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MapStrokeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapStrokeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MapStrokeModel value)  $default,){
final _that = this;
switch (_that) {
case _MapStrokeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MapStrokeModel value)?  $default,){
final _that = this;
switch (_that) {
case _MapStrokeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int pageNumber,  int color,  double width,  List<Offset> points)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapStrokeModel() when $default != null:
return $default(_that.id,_that.pageNumber,_that.color,_that.width,_that.points);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int pageNumber,  int color,  double width,  List<Offset> points)  $default,) {final _that = this;
switch (_that) {
case _MapStrokeModel():
return $default(_that.id,_that.pageNumber,_that.color,_that.width,_that.points);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int pageNumber,  int color,  double width,  List<Offset> points)?  $default,) {final _that = this;
switch (_that) {
case _MapStrokeModel() when $default != null:
return $default(_that.id,_that.pageNumber,_that.color,_that.width,_that.points);case _:
  return null;

}
}

}

/// @nodoc


class _MapStrokeModel implements MapStrokeModel {
  const _MapStrokeModel({this.id, required this.pageNumber, required this.color, required this.width, required  List<Offset> points}): _points = points;
  

@override final  int? id;
@override final  int pageNumber;
@override final  int color;
@override final  double width;
 final  List<Offset> _points;
@override List<Offset> get points {
  if (_points is EqualUnmodifiableListView) return _points;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_points);
}


/// Create a copy of MapStrokeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapStrokeModelCopyWith<_MapStrokeModel> get copyWith => __$MapStrokeModelCopyWithImpl<_MapStrokeModel>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapStrokeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.pageNumber, pageNumber) || other.pageNumber == pageNumber)&&(identical(other.color, color) || other.color == color)&&(identical(other.width, width) || other.width == width)&&const DeepCollectionEquality().equals(other.points, _points));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,pageNumber,color,width,const DeepCollectionEquality().hash(_points));
}

@override
String toString() {
    return 'MapStrokeModel(id: $id, pageNumber: $pageNumber, color: $color, width: $width, points: $points)';
}


}

/// @nodoc
abstract mixin class _$MapStrokeModelCopyWith<$Res> implements $MapStrokeModelCopyWith<$Res> {
  factory _$MapStrokeModelCopyWith(_MapStrokeModel value, $Res Function(_MapStrokeModel) _then) = __$MapStrokeModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, int pageNumber, int color, double width, List<Offset> points
});




}
/// @nodoc
class __$MapStrokeModelCopyWithImpl<$Res>
    implements _$MapStrokeModelCopyWith<$Res> {
  __$MapStrokeModelCopyWithImpl(this._self, this._then);

  final _MapStrokeModel _self;
  final $Res Function(_MapStrokeModel) _then;

/// Create a copy of MapStrokeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? pageNumber = null,Object? color = null,Object? width = null,Object? points = null,}) {
  return _then(_MapStrokeModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,pageNumber: null == pageNumber ? _self.pageNumber : pageNumber // ignore: cast_nullable_to_non_nullable
as int,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as int,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,points: null == points ? _self._points : points // ignore: cast_nullable_to_non_nullable
as List<Offset>,
  ));
}


}

// dart format on
