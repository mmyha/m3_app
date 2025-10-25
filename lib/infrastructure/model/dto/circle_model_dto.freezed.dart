// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'circle_model_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CircleModelDto _$CircleModelDtoFromJson(Map<String, dynamic> json) {
  return _CircleModelDto.fromJson(json);
}

/// @nodoc
mixin _$CircleModelDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phonetic => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;
  @IntOrStringConverter()
  int? get spaceSize => throw _privateConstructorUsedError;
  bool get adult => throw _privateConstructorUsedError;
  String get prText => throw _privateConstructorUsedError;
  SnsLinksModel get links => throw _privateConstructorUsedError; // nullable
  List<KeywordModel> get keywords => throw _privateConstructorUsedError;
  String? get area => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  bool? get isFavorite => throw _privateConstructorUsedError;

  /// Serializes this CircleModelDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CircleModelDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CircleModelDtoCopyWith<CircleModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CircleModelDtoCopyWith<$Res> {
  factory $CircleModelDtoCopyWith(
          CircleModelDto value, $Res Function(CircleModelDto) then) =
      _$CircleModelDtoCopyWithImpl<$Res, CircleModelDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      String phonetic,
      String genre,
      @IntOrStringConverter() int? spaceSize,
      bool adult,
      String prText,
      SnsLinksModel links,
      List<KeywordModel> keywords,
      String? area,
      String? number,
      bool? isFavorite});

  $SnsLinksModelCopyWith<$Res> get links;
}

/// @nodoc
class _$CircleModelDtoCopyWithImpl<$Res, $Val extends CircleModelDto>
    implements $CircleModelDtoCopyWith<$Res> {
  _$CircleModelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CircleModelDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phonetic = null,
    Object? genre = null,
    Object? spaceSize = freezed,
    Object? adult = null,
    Object? prText = null,
    Object? links = null,
    Object? keywords = null,
    Object? area = freezed,
    Object? number = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phonetic: null == phonetic
          ? _value.phonetic
          : phonetic // ignore: cast_nullable_to_non_nullable
              as String,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      spaceSize: freezed == spaceSize
          ? _value.spaceSize
          : spaceSize // ignore: cast_nullable_to_non_nullable
              as int?,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      prText: null == prText
          ? _value.prText
          : prText // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as SnsLinksModel,
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<KeywordModel>,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of CircleModelDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnsLinksModelCopyWith<$Res> get links {
    return $SnsLinksModelCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CircleModelDtoImplCopyWith<$Res>
    implements $CircleModelDtoCopyWith<$Res> {
  factory _$$CircleModelDtoImplCopyWith(_$CircleModelDtoImpl value,
          $Res Function(_$CircleModelDtoImpl) then) =
      __$$CircleModelDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String phonetic,
      String genre,
      @IntOrStringConverter() int? spaceSize,
      bool adult,
      String prText,
      SnsLinksModel links,
      List<KeywordModel> keywords,
      String? area,
      String? number,
      bool? isFavorite});

  @override
  $SnsLinksModelCopyWith<$Res> get links;
}

/// @nodoc
class __$$CircleModelDtoImplCopyWithImpl<$Res>
    extends _$CircleModelDtoCopyWithImpl<$Res, _$CircleModelDtoImpl>
    implements _$$CircleModelDtoImplCopyWith<$Res> {
  __$$CircleModelDtoImplCopyWithImpl(
      _$CircleModelDtoImpl _value, $Res Function(_$CircleModelDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CircleModelDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phonetic = null,
    Object? genre = null,
    Object? spaceSize = freezed,
    Object? adult = null,
    Object? prText = null,
    Object? links = null,
    Object? keywords = null,
    Object? area = freezed,
    Object? number = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_$CircleModelDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phonetic: null == phonetic
          ? _value.phonetic
          : phonetic // ignore: cast_nullable_to_non_nullable
              as String,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      spaceSize: freezed == spaceSize
          ? _value.spaceSize
          : spaceSize // ignore: cast_nullable_to_non_nullable
              as int?,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      prText: null == prText
          ? _value.prText
          : prText // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as SnsLinksModel,
      keywords: null == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<KeywordModel>,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CircleModelDtoImpl implements _CircleModelDto {
  const _$CircleModelDtoImpl(
      {required this.id,
      required this.name,
      required this.phonetic,
      required this.genre,
      @IntOrStringConverter() required this.spaceSize,
      required this.adult,
      required this.prText,
      this.links = const SnsLinksModel(),
      required final List<KeywordModel> keywords,
      this.area,
      this.number,
      this.isFavorite = false})
      : _keywords = keywords;

  factory _$CircleModelDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CircleModelDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String phonetic;
  @override
  final String genre;
  @override
  @IntOrStringConverter()
  final int? spaceSize;
  @override
  final bool adult;
  @override
  final String prText;
  @override
  @JsonKey()
  final SnsLinksModel links;
// nullable
  final List<KeywordModel> _keywords;
// nullable
  @override
  List<KeywordModel> get keywords {
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keywords);
  }

  @override
  final String? area;
  @override
  final String? number;
  @override
  @JsonKey()
  final bool? isFavorite;

  @override
  String toString() {
    return 'CircleModelDto(id: $id, name: $name, phonetic: $phonetic, genre: $genre, spaceSize: $spaceSize, adult: $adult, prText: $prText, links: $links, keywords: $keywords, area: $area, number: $number, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CircleModelDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phonetic, phonetic) ||
                other.phonetic == phonetic) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.spaceSize, spaceSize) ||
                other.spaceSize == spaceSize) &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.prText, prText) || other.prText == prText) &&
            (identical(other.links, links) || other.links == links) &&
            const DeepCollectionEquality().equals(other._keywords, _keywords) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      phonetic,
      genre,
      spaceSize,
      adult,
      prText,
      links,
      const DeepCollectionEquality().hash(_keywords),
      area,
      number,
      isFavorite);

  /// Create a copy of CircleModelDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CircleModelDtoImplCopyWith<_$CircleModelDtoImpl> get copyWith =>
      __$$CircleModelDtoImplCopyWithImpl<_$CircleModelDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CircleModelDtoImplToJson(
      this,
    );
  }
}

abstract class _CircleModelDto implements CircleModelDto {
  const factory _CircleModelDto(
      {required final int id,
      required final String name,
      required final String phonetic,
      required final String genre,
      @IntOrStringConverter() required final int? spaceSize,
      required final bool adult,
      required final String prText,
      final SnsLinksModel links,
      required final List<KeywordModel> keywords,
      final String? area,
      final String? number,
      final bool? isFavorite}) = _$CircleModelDtoImpl;

  factory _CircleModelDto.fromJson(Map<String, dynamic> json) =
      _$CircleModelDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get phonetic;
  @override
  String get genre;
  @override
  @IntOrStringConverter()
  int? get spaceSize;
  @override
  bool get adult;
  @override
  String get prText;
  @override
  SnsLinksModel get links; // nullable
  @override
  List<KeywordModel> get keywords;
  @override
  String? get area;
  @override
  String? get number;
  @override
  bool? get isFavorite;

  /// Create a copy of CircleModelDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CircleModelDtoImplCopyWith<_$CircleModelDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
