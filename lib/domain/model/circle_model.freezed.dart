// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'circle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CircleModel {
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
  RealSpModel? get realSp => throw _privateConstructorUsedError; // nullable
  WebSpModel? get webSp => throw _privateConstructorUsedError;
  bool? get isFavorite => throw _privateConstructorUsedError;

  /// Create a copy of CircleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CircleModelCopyWith<CircleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CircleModelCopyWith<$Res> {
  factory $CircleModelCopyWith(
          CircleModel value, $Res Function(CircleModel) then) =
      _$CircleModelCopyWithImpl<$Res, CircleModel>;
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
      RealSpModel? realSp,
      WebSpModel? webSp,
      bool? isFavorite});

  $SnsLinksModelCopyWith<$Res> get links;
  $RealSpModelCopyWith<$Res>? get realSp;
  $WebSpModelCopyWith<$Res>? get webSp;
}

/// @nodoc
class _$CircleModelCopyWithImpl<$Res, $Val extends CircleModel>
    implements $CircleModelCopyWith<$Res> {
  _$CircleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CircleModel
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
    Object? realSp = freezed,
    Object? webSp = freezed,
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
      realSp: freezed == realSp
          ? _value.realSp
          : realSp // ignore: cast_nullable_to_non_nullable
              as RealSpModel?,
      webSp: freezed == webSp
          ? _value.webSp
          : webSp // ignore: cast_nullable_to_non_nullable
              as WebSpModel?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of CircleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnsLinksModelCopyWith<$Res> get links {
    return $SnsLinksModelCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }

  /// Create a copy of CircleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RealSpModelCopyWith<$Res>? get realSp {
    if (_value.realSp == null) {
      return null;
    }

    return $RealSpModelCopyWith<$Res>(_value.realSp!, (value) {
      return _then(_value.copyWith(realSp: value) as $Val);
    });
  }

  /// Create a copy of CircleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebSpModelCopyWith<$Res>? get webSp {
    if (_value.webSp == null) {
      return null;
    }

    return $WebSpModelCopyWith<$Res>(_value.webSp!, (value) {
      return _then(_value.copyWith(webSp: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CircleModelImplCopyWith<$Res>
    implements $CircleModelCopyWith<$Res> {
  factory _$$CircleModelImplCopyWith(
          _$CircleModelImpl value, $Res Function(_$CircleModelImpl) then) =
      __$$CircleModelImplCopyWithImpl<$Res>;
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
      RealSpModel? realSp,
      WebSpModel? webSp,
      bool? isFavorite});

  @override
  $SnsLinksModelCopyWith<$Res> get links;
  @override
  $RealSpModelCopyWith<$Res>? get realSp;
  @override
  $WebSpModelCopyWith<$Res>? get webSp;
}

/// @nodoc
class __$$CircleModelImplCopyWithImpl<$Res>
    extends _$CircleModelCopyWithImpl<$Res, _$CircleModelImpl>
    implements _$$CircleModelImplCopyWith<$Res> {
  __$$CircleModelImplCopyWithImpl(
      _$CircleModelImpl _value, $Res Function(_$CircleModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CircleModel
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
    Object? realSp = freezed,
    Object? webSp = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_$CircleModelImpl(
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
      realSp: freezed == realSp
          ? _value.realSp
          : realSp // ignore: cast_nullable_to_non_nullable
              as RealSpModel?,
      webSp: freezed == webSp
          ? _value.webSp
          : webSp // ignore: cast_nullable_to_non_nullable
              as WebSpModel?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$CircleModelImpl implements _CircleModel {
  const _$CircleModelImpl(
      {required this.id,
      required this.name,
      required this.phonetic,
      required this.genre,
      @IntOrStringConverter() required this.spaceSize,
      required this.adult,
      required this.prText,
      this.links = const SnsLinksModel(),
      required final List<KeywordModel> keywords,
      this.realSp,
      this.webSp,
      this.isFavorite = false})
      : _keywords = keywords;

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
  final RealSpModel? realSp;
// nullable
  @override
  final WebSpModel? webSp;
  @override
  @JsonKey()
  final bool? isFavorite;

  @override
  String toString() {
    return 'CircleModel(id: $id, name: $name, phonetic: $phonetic, genre: $genre, spaceSize: $spaceSize, adult: $adult, prText: $prText, links: $links, keywords: $keywords, realSp: $realSp, webSp: $webSp, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CircleModelImpl &&
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
            (identical(other.realSp, realSp) || other.realSp == realSp) &&
            (identical(other.webSp, webSp) || other.webSp == webSp) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

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
      realSp,
      webSp,
      isFavorite);

  /// Create a copy of CircleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CircleModelImplCopyWith<_$CircleModelImpl> get copyWith =>
      __$$CircleModelImplCopyWithImpl<_$CircleModelImpl>(this, _$identity);
}

abstract class _CircleModel implements CircleModel {
  const factory _CircleModel(
      {required final int id,
      required final String name,
      required final String phonetic,
      required final String genre,
      @IntOrStringConverter() required final int? spaceSize,
      required final bool adult,
      required final String prText,
      final SnsLinksModel links,
      required final List<KeywordModel> keywords,
      final RealSpModel? realSp,
      final WebSpModel? webSp,
      final bool? isFavorite}) = _$CircleModelImpl;

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
  RealSpModel? get realSp; // nullable
  @override
  WebSpModel? get webSp;
  @override
  bool? get isFavorite;

  /// Create a copy of CircleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CircleModelImplCopyWith<_$CircleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnsLinksModel _$SnsLinksModelFromJson(Map<String, dynamic> json) {
  return _SnsLinksModel.fromJson(json);
}

/// @nodoc
mixin _$SnsLinksModel {
  SocialLink? get site => throw _privateConstructorUsedError; // nullable
  SocialLink? get twitter => throw _privateConstructorUsedError; // nullable
  SocialLink? get youtube => throw _privateConstructorUsedError; // nullable
  SocialLink? get sns => throw _privateConstructorUsedError;

  /// Serializes this SnsLinksModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnsLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnsLinksModelCopyWith<SnsLinksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnsLinksModelCopyWith<$Res> {
  factory $SnsLinksModelCopyWith(
          SnsLinksModel value, $Res Function(SnsLinksModel) then) =
      _$SnsLinksModelCopyWithImpl<$Res, SnsLinksModel>;
  @useResult
  $Res call(
      {SocialLink? site,
      SocialLink? twitter,
      SocialLink? youtube,
      SocialLink? sns});

  $SocialLinkCopyWith<$Res>? get site;
  $SocialLinkCopyWith<$Res>? get twitter;
  $SocialLinkCopyWith<$Res>? get youtube;
  $SocialLinkCopyWith<$Res>? get sns;
}

/// @nodoc
class _$SnsLinksModelCopyWithImpl<$Res, $Val extends SnsLinksModel>
    implements $SnsLinksModelCopyWith<$Res> {
  _$SnsLinksModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnsLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? site = freezed,
    Object? twitter = freezed,
    Object? youtube = freezed,
    Object? sns = freezed,
  }) {
    return _then(_value.copyWith(
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as SocialLink?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as SocialLink?,
      youtube: freezed == youtube
          ? _value.youtube
          : youtube // ignore: cast_nullable_to_non_nullable
              as SocialLink?,
      sns: freezed == sns
          ? _value.sns
          : sns // ignore: cast_nullable_to_non_nullable
              as SocialLink?,
    ) as $Val);
  }

  /// Create a copy of SnsLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialLinkCopyWith<$Res>? get site {
    if (_value.site == null) {
      return null;
    }

    return $SocialLinkCopyWith<$Res>(_value.site!, (value) {
      return _then(_value.copyWith(site: value) as $Val);
    });
  }

  /// Create a copy of SnsLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialLinkCopyWith<$Res>? get twitter {
    if (_value.twitter == null) {
      return null;
    }

    return $SocialLinkCopyWith<$Res>(_value.twitter!, (value) {
      return _then(_value.copyWith(twitter: value) as $Val);
    });
  }

  /// Create a copy of SnsLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialLinkCopyWith<$Res>? get youtube {
    if (_value.youtube == null) {
      return null;
    }

    return $SocialLinkCopyWith<$Res>(_value.youtube!, (value) {
      return _then(_value.copyWith(youtube: value) as $Val);
    });
  }

  /// Create a copy of SnsLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialLinkCopyWith<$Res>? get sns {
    if (_value.sns == null) {
      return null;
    }

    return $SocialLinkCopyWith<$Res>(_value.sns!, (value) {
      return _then(_value.copyWith(sns: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SnsLinksModelImplCopyWith<$Res>
    implements $SnsLinksModelCopyWith<$Res> {
  factory _$$SnsLinksModelImplCopyWith(
          _$SnsLinksModelImpl value, $Res Function(_$SnsLinksModelImpl) then) =
      __$$SnsLinksModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SocialLink? site,
      SocialLink? twitter,
      SocialLink? youtube,
      SocialLink? sns});

  @override
  $SocialLinkCopyWith<$Res>? get site;
  @override
  $SocialLinkCopyWith<$Res>? get twitter;
  @override
  $SocialLinkCopyWith<$Res>? get youtube;
  @override
  $SocialLinkCopyWith<$Res>? get sns;
}

/// @nodoc
class __$$SnsLinksModelImplCopyWithImpl<$Res>
    extends _$SnsLinksModelCopyWithImpl<$Res, _$SnsLinksModelImpl>
    implements _$$SnsLinksModelImplCopyWith<$Res> {
  __$$SnsLinksModelImplCopyWithImpl(
      _$SnsLinksModelImpl _value, $Res Function(_$SnsLinksModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnsLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? site = freezed,
    Object? twitter = freezed,
    Object? youtube = freezed,
    Object? sns = freezed,
  }) {
    return _then(_$SnsLinksModelImpl(
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as SocialLink?,
      twitter: freezed == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as SocialLink?,
      youtube: freezed == youtube
          ? _value.youtube
          : youtube // ignore: cast_nullable_to_non_nullable
              as SocialLink?,
      sns: freezed == sns
          ? _value.sns
          : sns // ignore: cast_nullable_to_non_nullable
              as SocialLink?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnsLinksModelImpl implements _SnsLinksModel {
  const _$SnsLinksModelImpl({this.site, this.twitter, this.youtube, this.sns});

  factory _$SnsLinksModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnsLinksModelImplFromJson(json);

  @override
  final SocialLink? site;
// nullable
  @override
  final SocialLink? twitter;
// nullable
  @override
  final SocialLink? youtube;
// nullable
  @override
  final SocialLink? sns;

  @override
  String toString() {
    return 'SnsLinksModel(site: $site, twitter: $twitter, youtube: $youtube, sns: $sns)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnsLinksModelImpl &&
            (identical(other.site, site) || other.site == site) &&
            (identical(other.twitter, twitter) || other.twitter == twitter) &&
            (identical(other.youtube, youtube) || other.youtube == youtube) &&
            (identical(other.sns, sns) || other.sns == sns));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, site, twitter, youtube, sns);

  /// Create a copy of SnsLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnsLinksModelImplCopyWith<_$SnsLinksModelImpl> get copyWith =>
      __$$SnsLinksModelImplCopyWithImpl<_$SnsLinksModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnsLinksModelImplToJson(
      this,
    );
  }
}

abstract class _SnsLinksModel implements SnsLinksModel {
  const factory _SnsLinksModel(
      {final SocialLink? site,
      final SocialLink? twitter,
      final SocialLink? youtube,
      final SocialLink? sns}) = _$SnsLinksModelImpl;

  factory _SnsLinksModel.fromJson(Map<String, dynamic> json) =
      _$SnsLinksModelImpl.fromJson;

  @override
  SocialLink? get site; // nullable
  @override
  SocialLink? get twitter; // nullable
  @override
  SocialLink? get youtube; // nullable
  @override
  SocialLink? get sns;

  /// Create a copy of SnsLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnsLinksModelImplCopyWith<_$SnsLinksModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialLink _$SocialLinkFromJson(Map<String, dynamic> json) {
  return _SocialLink.fromJson(json);
}

/// @nodoc
mixin _$SocialLink {
  String get text => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this SocialLink to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialLinkCopyWith<SocialLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialLinkCopyWith<$Res> {
  factory $SocialLinkCopyWith(
          SocialLink value, $Res Function(SocialLink) then) =
      _$SocialLinkCopyWithImpl<$Res, SocialLink>;
  @useResult
  $Res call({String text, String url});
}

/// @nodoc
class _$SocialLinkCopyWithImpl<$Res, $Val extends SocialLink>
    implements $SocialLinkCopyWith<$Res> {
  _$SocialLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialLinkImplCopyWith<$Res>
    implements $SocialLinkCopyWith<$Res> {
  factory _$$SocialLinkImplCopyWith(
          _$SocialLinkImpl value, $Res Function(_$SocialLinkImpl) then) =
      __$$SocialLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String url});
}

/// @nodoc
class __$$SocialLinkImplCopyWithImpl<$Res>
    extends _$SocialLinkCopyWithImpl<$Res, _$SocialLinkImpl>
    implements _$$SocialLinkImplCopyWith<$Res> {
  __$$SocialLinkImplCopyWithImpl(
      _$SocialLinkImpl _value, $Res Function(_$SocialLinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? url = null,
  }) {
    return _then(_$SocialLinkImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialLinkImpl implements _SocialLink {
  const _$SocialLinkImpl({required this.text, required this.url});

  factory _$SocialLinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialLinkImplFromJson(json);

  @override
  final String text;
  @override
  final String url;

  @override
  String toString() {
    return 'SocialLink(text: $text, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialLinkImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, url);

  /// Create a copy of SocialLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialLinkImplCopyWith<_$SocialLinkImpl> get copyWith =>
      __$$SocialLinkImplCopyWithImpl<_$SocialLinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialLinkImplToJson(
      this,
    );
  }
}

abstract class _SocialLink implements SocialLink {
  const factory _SocialLink(
      {required final String text,
      required final String url}) = _$SocialLinkImpl;

  factory _SocialLink.fromJson(Map<String, dynamic> json) =
      _$SocialLinkImpl.fromJson;

  @override
  String get text;
  @override
  String get url;

  /// Create a copy of SocialLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialLinkImplCopyWith<_$SocialLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KeywordModel _$KeywordModelFromJson(Map<String, dynamic> json) {
  return _KeywordModel.fromJson(json);
}

/// @nodoc
mixin _$KeywordModel {
  String get text => throw _privateConstructorUsedError;
  String get phonetic => throw _privateConstructorUsedError;

  /// Serializes this KeywordModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KeywordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeywordModelCopyWith<KeywordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeywordModelCopyWith<$Res> {
  factory $KeywordModelCopyWith(
          KeywordModel value, $Res Function(KeywordModel) then) =
      _$KeywordModelCopyWithImpl<$Res, KeywordModel>;
  @useResult
  $Res call({String text, String phonetic});
}

/// @nodoc
class _$KeywordModelCopyWithImpl<$Res, $Val extends KeywordModel>
    implements $KeywordModelCopyWith<$Res> {
  _$KeywordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KeywordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? phonetic = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      phonetic: null == phonetic
          ? _value.phonetic
          : phonetic // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeywordModelImplCopyWith<$Res>
    implements $KeywordModelCopyWith<$Res> {
  factory _$$KeywordModelImplCopyWith(
          _$KeywordModelImpl value, $Res Function(_$KeywordModelImpl) then) =
      __$$KeywordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String phonetic});
}

/// @nodoc
class __$$KeywordModelImplCopyWithImpl<$Res>
    extends _$KeywordModelCopyWithImpl<$Res, _$KeywordModelImpl>
    implements _$$KeywordModelImplCopyWith<$Res> {
  __$$KeywordModelImplCopyWithImpl(
      _$KeywordModelImpl _value, $Res Function(_$KeywordModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of KeywordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? phonetic = null,
  }) {
    return _then(_$KeywordModelImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      phonetic: null == phonetic
          ? _value.phonetic
          : phonetic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeywordModelImpl implements _KeywordModel {
  const _$KeywordModelImpl({required this.text, required this.phonetic});

  factory _$KeywordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeywordModelImplFromJson(json);

  @override
  final String text;
  @override
  final String phonetic;

  @override
  String toString() {
    return 'KeywordModel(text: $text, phonetic: $phonetic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeywordModelImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.phonetic, phonetic) ||
                other.phonetic == phonetic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, phonetic);

  /// Create a copy of KeywordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeywordModelImplCopyWith<_$KeywordModelImpl> get copyWith =>
      __$$KeywordModelImplCopyWithImpl<_$KeywordModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeywordModelImplToJson(
      this,
    );
  }
}

abstract class _KeywordModel implements KeywordModel {
  const factory _KeywordModel(
      {required final String text,
      required final String phonetic}) = _$KeywordModelImpl;

  factory _KeywordModel.fromJson(Map<String, dynamic> json) =
      _$KeywordModelImpl.fromJson;

  @override
  String get text;
  @override
  String get phonetic;

  /// Create a copy of KeywordModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeywordModelImplCopyWith<_$KeywordModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RealSpModel _$RealSpModelFromJson(Map<String, dynamic> json) {
  return _RealSpModel.fromJson(json);
}

/// @nodoc
mixin _$RealSpModel {
  String? get area => throw _privateConstructorUsedError; // nullable
  String? get no => throw _privateConstructorUsedError;

  /// Serializes this RealSpModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RealSpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RealSpModelCopyWith<RealSpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RealSpModelCopyWith<$Res> {
  factory $RealSpModelCopyWith(
          RealSpModel value, $Res Function(RealSpModel) then) =
      _$RealSpModelCopyWithImpl<$Res, RealSpModel>;
  @useResult
  $Res call({String? area, String? no});
}

/// @nodoc
class _$RealSpModelCopyWithImpl<$Res, $Val extends RealSpModel>
    implements $RealSpModelCopyWith<$Res> {
  _$RealSpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RealSpModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = freezed,
    Object? no = freezed,
  }) {
    return _then(_value.copyWith(
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      no: freezed == no
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RealSpModelImplCopyWith<$Res>
    implements $RealSpModelCopyWith<$Res> {
  factory _$$RealSpModelImplCopyWith(
          _$RealSpModelImpl value, $Res Function(_$RealSpModelImpl) then) =
      __$$RealSpModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? area, String? no});
}

/// @nodoc
class __$$RealSpModelImplCopyWithImpl<$Res>
    extends _$RealSpModelCopyWithImpl<$Res, _$RealSpModelImpl>
    implements _$$RealSpModelImplCopyWith<$Res> {
  __$$RealSpModelImplCopyWithImpl(
      _$RealSpModelImpl _value, $Res Function(_$RealSpModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RealSpModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = freezed,
    Object? no = freezed,
  }) {
    return _then(_$RealSpModelImpl(
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      no: freezed == no
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RealSpModelImpl implements _RealSpModel {
  const _$RealSpModelImpl({this.area, this.no});

  factory _$RealSpModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RealSpModelImplFromJson(json);

  @override
  final String? area;
// nullable
  @override
  final String? no;

  @override
  String toString() {
    return 'RealSpModel(area: $area, no: $no)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RealSpModelImpl &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.no, no) || other.no == no));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, area, no);

  /// Create a copy of RealSpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RealSpModelImplCopyWith<_$RealSpModelImpl> get copyWith =>
      __$$RealSpModelImplCopyWithImpl<_$RealSpModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RealSpModelImplToJson(
      this,
    );
  }
}

abstract class _RealSpModel implements RealSpModel {
  const factory _RealSpModel({final String? area, final String? no}) =
      _$RealSpModelImpl;

  factory _RealSpModel.fromJson(Map<String, dynamic> json) =
      _$RealSpModelImpl.fromJson;

  @override
  String? get area; // nullable
  @override
  String? get no;

  /// Create a copy of RealSpModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RealSpModelImplCopyWith<_$RealSpModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WebSpModel _$WebSpModelFromJson(Map<String, dynamic> json) {
  return _WebSpModel.fromJson(json);
}

/// @nodoc
mixin _$WebSpModel {
  String get area => throw _privateConstructorUsedError;
  String get no => throw _privateConstructorUsedError;

  /// Serializes this WebSpModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebSpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebSpModelCopyWith<WebSpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebSpModelCopyWith<$Res> {
  factory $WebSpModelCopyWith(
          WebSpModel value, $Res Function(WebSpModel) then) =
      _$WebSpModelCopyWithImpl<$Res, WebSpModel>;
  @useResult
  $Res call({String area, String no});
}

/// @nodoc
class _$WebSpModelCopyWithImpl<$Res, $Val extends WebSpModel>
    implements $WebSpModelCopyWith<$Res> {
  _$WebSpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebSpModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? no = null,
  }) {
    return _then(_value.copyWith(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      no: null == no
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebSpModelImplCopyWith<$Res>
    implements $WebSpModelCopyWith<$Res> {
  factory _$$WebSpModelImplCopyWith(
          _$WebSpModelImpl value, $Res Function(_$WebSpModelImpl) then) =
      __$$WebSpModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String area, String no});
}

/// @nodoc
class __$$WebSpModelImplCopyWithImpl<$Res>
    extends _$WebSpModelCopyWithImpl<$Res, _$WebSpModelImpl>
    implements _$$WebSpModelImplCopyWith<$Res> {
  __$$WebSpModelImplCopyWithImpl(
      _$WebSpModelImpl _value, $Res Function(_$WebSpModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebSpModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? no = null,
  }) {
    return _then(_$WebSpModelImpl(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      no: null == no
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebSpModelImpl implements _WebSpModel {
  const _$WebSpModelImpl({required this.area, required this.no});

  factory _$WebSpModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebSpModelImplFromJson(json);

  @override
  final String area;
  @override
  final String no;

  @override
  String toString() {
    return 'WebSpModel(area: $area, no: $no)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebSpModelImpl &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.no, no) || other.no == no));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, area, no);

  /// Create a copy of WebSpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebSpModelImplCopyWith<_$WebSpModelImpl> get copyWith =>
      __$$WebSpModelImplCopyWithImpl<_$WebSpModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebSpModelImplToJson(
      this,
    );
  }
}

abstract class _WebSpModel implements WebSpModel {
  const factory _WebSpModel(
      {required final String area,
      required final String no}) = _$WebSpModelImpl;

  factory _WebSpModel.fromJson(Map<String, dynamic> json) =
      _$WebSpModelImpl.fromJson;

  @override
  String get area;
  @override
  String get no;

  /// Create a copy of WebSpModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebSpModelImplCopyWith<_$WebSpModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
