// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'circle_model_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CircleModelDto {
  int get id;
  String get name;
  String get phonetic;
  String get genre;
  @IntOrStringConverter()
  int? get spaceSize;
  bool get adult;
  String get prText;
  SnsLinksModel get links; // nullable
  List<KeywordModel> get keywords;
  String? get area;
  String? get number;
  bool? get isFavorite;

  /// Create a copy of CircleModelDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CircleModelDtoCopyWith<CircleModelDto> get copyWith =>
      _$CircleModelDtoCopyWithImpl<CircleModelDto>(
          this as CircleModelDto, _$identity);

  /// Serializes this CircleModelDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CircleModelDto &&
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
            const DeepCollectionEquality().equals(other.keywords, keywords) &&
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
      const DeepCollectionEquality().hash(keywords),
      area,
      number,
      isFavorite);

  @override
  String toString() {
    return 'CircleModelDto(id: $id, name: $name, phonetic: $phonetic, genre: $genre, spaceSize: $spaceSize, adult: $adult, prText: $prText, links: $links, keywords: $keywords, area: $area, number: $number, isFavorite: $isFavorite)';
  }
}

/// @nodoc
abstract mixin class $CircleModelDtoCopyWith<$Res> {
  factory $CircleModelDtoCopyWith(
          CircleModelDto value, $Res Function(CircleModelDto) _then) =
      _$CircleModelDtoCopyWithImpl;
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
class _$CircleModelDtoCopyWithImpl<$Res>
    implements $CircleModelDtoCopyWith<$Res> {
  _$CircleModelDtoCopyWithImpl(this._self, this._then);

  final CircleModelDto _self;
  final $Res Function(CircleModelDto) _then;

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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phonetic: null == phonetic
          ? _self.phonetic
          : phonetic // ignore: cast_nullable_to_non_nullable
              as String,
      genre: null == genre
          ? _self.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      spaceSize: freezed == spaceSize
          ? _self.spaceSize
          : spaceSize // ignore: cast_nullable_to_non_nullable
              as int?,
      adult: null == adult
          ? _self.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      prText: null == prText
          ? _self.prText
          : prText // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _self.links
          : links // ignore: cast_nullable_to_non_nullable
              as SnsLinksModel,
      keywords: null == keywords
          ? _self.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<KeywordModel>,
      area: freezed == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: freezed == isFavorite
          ? _self.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of CircleModelDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnsLinksModelCopyWith<$Res> get links {
    return $SnsLinksModelCopyWith<$Res>(_self.links, (value) {
      return _then(_self.copyWith(links: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CircleModelDto].
extension CircleModelDtoPatterns on CircleModelDto {
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
    TResult Function(_CircleModelDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CircleModelDto() when $default != null:
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
    TResult Function(_CircleModelDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CircleModelDto():
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
    TResult? Function(_CircleModelDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CircleModelDto() when $default != null:
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
    TResult Function(
            int id,
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
            bool? isFavorite)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CircleModelDto() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.phonetic,
            _that.genre,
            _that.spaceSize,
            _that.adult,
            _that.prText,
            _that.links,
            _that.keywords,
            _that.area,
            _that.number,
            _that.isFavorite);
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
    TResult Function(
            int id,
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
            bool? isFavorite)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CircleModelDto():
        return $default(
            _that.id,
            _that.name,
            _that.phonetic,
            _that.genre,
            _that.spaceSize,
            _that.adult,
            _that.prText,
            _that.links,
            _that.keywords,
            _that.area,
            _that.number,
            _that.isFavorite);
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
    TResult? Function(
            int id,
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
            bool? isFavorite)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CircleModelDto() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.phonetic,
            _that.genre,
            _that.spaceSize,
            _that.adult,
            _that.prText,
            _that.links,
            _that.keywords,
            _that.area,
            _that.number,
            _that.isFavorite);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CircleModelDto implements CircleModelDto {
  const _CircleModelDto(
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
  factory _CircleModelDto.fromJson(Map<String, dynamic> json) =>
      _$CircleModelDtoFromJson(json);

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

  /// Create a copy of CircleModelDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CircleModelDtoCopyWith<_CircleModelDto> get copyWith =>
      __$CircleModelDtoCopyWithImpl<_CircleModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CircleModelDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CircleModelDto &&
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

  @override
  String toString() {
    return 'CircleModelDto(id: $id, name: $name, phonetic: $phonetic, genre: $genre, spaceSize: $spaceSize, adult: $adult, prText: $prText, links: $links, keywords: $keywords, area: $area, number: $number, isFavorite: $isFavorite)';
  }
}

/// @nodoc
abstract mixin class _$CircleModelDtoCopyWith<$Res>
    implements $CircleModelDtoCopyWith<$Res> {
  factory _$CircleModelDtoCopyWith(
          _CircleModelDto value, $Res Function(_CircleModelDto) _then) =
      __$CircleModelDtoCopyWithImpl;
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
class __$CircleModelDtoCopyWithImpl<$Res>
    implements _$CircleModelDtoCopyWith<$Res> {
  __$CircleModelDtoCopyWithImpl(this._self, this._then);

  final _CircleModelDto _self;
  final $Res Function(_CircleModelDto) _then;

  /// Create a copy of CircleModelDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_CircleModelDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phonetic: null == phonetic
          ? _self.phonetic
          : phonetic // ignore: cast_nullable_to_non_nullable
              as String,
      genre: null == genre
          ? _self.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      spaceSize: freezed == spaceSize
          ? _self.spaceSize
          : spaceSize // ignore: cast_nullable_to_non_nullable
              as int?,
      adult: null == adult
          ? _self.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      prText: null == prText
          ? _self.prText
          : prText // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _self.links
          : links // ignore: cast_nullable_to_non_nullable
              as SnsLinksModel,
      keywords: null == keywords
          ? _self._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<KeywordModel>,
      area: freezed == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: freezed == isFavorite
          ? _self.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of CircleModelDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnsLinksModelCopyWith<$Res> get links {
    return $SnsLinksModelCopyWith<$Res>(_self.links, (value) {
      return _then(_self.copyWith(links: value));
    });
  }
}

// dart format on
