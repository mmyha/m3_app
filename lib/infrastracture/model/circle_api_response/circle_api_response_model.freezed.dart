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
  List<Item> get items => throw _privateConstructorUsedError;

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
  $Res call({List<Item> items});
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
              as List<Item>,
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
  $Res call({List<Item> items});
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
              as List<Item>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CircleApiResponseImpl implements _CircleApiResponse {
  const _$CircleApiResponseImpl({required final List<Item> items})
      : _items = items;

  factory _$CircleApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CircleApiResponseImplFromJson(json);

  final List<Item> _items;
  @override
  List<Item> get items {
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
  const factory _CircleApiResponse({required final List<Item> items}) =
      _$CircleApiResponseImpl;

  factory _CircleApiResponse.fromJson(Map<String, dynamic> json) =
      _$CircleApiResponseImpl.fromJson;

  @override
  List<Item> get items;

  /// Create a copy of CircleApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CircleApiResponseImplCopyWith<_$CircleApiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phonetic => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;
  int get spaceSize => throw _privateConstructorUsedError;
  bool get adult => throw _privateConstructorUsedError;
  String get prText => throw _privateConstructorUsedError;
  Links? get links => throw _privateConstructorUsedError; // nullable
  List<Keyword> get keywords => throw _privateConstructorUsedError;
  RealSp? get realSp => throw _privateConstructorUsedError; // nullable
  WebSp? get webSp => throw _privateConstructorUsedError;

  /// Serializes this Item to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {int id,
      String name,
      String phonetic,
      String genre,
      int spaceSize,
      bool adult,
      String prText,
      Links? links,
      List<Keyword> keywords,
      RealSp? realSp,
      WebSp? webSp});

  $LinksCopyWith<$Res>? get links;
  $RealSpCopyWith<$Res>? get realSp;
  $WebSpCopyWith<$Res>? get webSp;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phonetic = null,
    Object? genre = null,
    Object? spaceSize = null,
    Object? adult = null,
    Object? prText = null,
    Object? links = freezed,
    Object? keywords = null,
    Object? realSp = freezed,
    Object? webSp = freezed,
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
      spaceSize: null == spaceSize
          ? _value.spaceSize
          : spaceSize // ignore: cast_nullable_to_non_nullable
              as int,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      prText: null == prText
          ? _value.prText
          : prText // ignore: cast_nullable_to_non_nullable
              as String,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<Keyword>,
      realSp: freezed == realSp
          ? _value.realSp
          : realSp // ignore: cast_nullable_to_non_nullable
              as RealSp?,
      webSp: freezed == webSp
          ? _value.webSp
          : webSp // ignore: cast_nullable_to_non_nullable
              as WebSp?,
    ) as $Val);
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $LinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RealSpCopyWith<$Res>? get realSp {
    if (_value.realSp == null) {
      return null;
    }

    return $RealSpCopyWith<$Res>(_value.realSp!, (value) {
      return _then(_value.copyWith(realSp: value) as $Val);
    });
  }

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebSpCopyWith<$Res>? get webSp {
    if (_value.webSp == null) {
      return null;
    }

    return $WebSpCopyWith<$Res>(_value.webSp!, (value) {
      return _then(_value.copyWith(webSp: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String phonetic,
      String genre,
      int spaceSize,
      bool adult,
      String prText,
      Links? links,
      List<Keyword> keywords,
      RealSp? realSp,
      WebSp? webSp});

  @override
  $LinksCopyWith<$Res>? get links;
  @override
  $RealSpCopyWith<$Res>? get realSp;
  @override
  $WebSpCopyWith<$Res>? get webSp;
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phonetic = null,
    Object? genre = null,
    Object? spaceSize = null,
    Object? adult = null,
    Object? prText = null,
    Object? links = freezed,
    Object? keywords = null,
    Object? realSp = freezed,
    Object? webSp = freezed,
  }) {
    return _then(_$ItemImpl(
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
      spaceSize: null == spaceSize
          ? _value.spaceSize
          : spaceSize // ignore: cast_nullable_to_non_nullable
              as int,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      prText: null == prText
          ? _value.prText
          : prText // ignore: cast_nullable_to_non_nullable
              as String,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
      keywords: null == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<Keyword>,
      realSp: freezed == realSp
          ? _value.realSp
          : realSp // ignore: cast_nullable_to_non_nullable
              as RealSp?,
      webSp: freezed == webSp
          ? _value.webSp
          : webSp // ignore: cast_nullable_to_non_nullable
              as WebSp?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  const _$ItemImpl(
      {required this.id,
      required this.name,
      required this.phonetic,
      required this.genre,
      required this.spaceSize,
      required this.adult,
      required this.prText,
      this.links,
      required final List<Keyword> keywords,
      this.realSp,
      this.webSp})
      : _keywords = keywords;

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String phonetic;
  @override
  final String genre;
  @override
  final int spaceSize;
  @override
  final bool adult;
  @override
  final String prText;
  @override
  final Links? links;
// nullable
  final List<Keyword> _keywords;
// nullable
  @override
  List<Keyword> get keywords {
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keywords);
  }

  @override
  final RealSp? realSp;
// nullable
  @override
  final WebSp? webSp;

  @override
  String toString() {
    return 'Item(id: $id, name: $name, phonetic: $phonetic, genre: $genre, spaceSize: $spaceSize, adult: $adult, prText: $prText, links: $links, keywords: $keywords, realSp: $realSp, webSp: $webSp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
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
            (identical(other.webSp, webSp) || other.webSp == webSp));
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
      realSp,
      webSp);

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {required final int id,
      required final String name,
      required final String phonetic,
      required final String genre,
      required final int spaceSize,
      required final bool adult,
      required final String prText,
      final Links? links,
      required final List<Keyword> keywords,
      final RealSp? realSp,
      final WebSp? webSp}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get phonetic;
  @override
  String get genre;
  @override
  int get spaceSize;
  @override
  bool get adult;
  @override
  String get prText;
  @override
  Links? get links; // nullable
  @override
  List<Keyword> get keywords;
  @override
  RealSp? get realSp; // nullable
  @override
  WebSp? get webSp;

  /// Create a copy of Item
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Links _$LinksFromJson(Map<String, dynamic> json) {
  return _Links.fromJson(json);
}

/// @nodoc
mixin _$Links {
  SocialLink? get site => throw _privateConstructorUsedError; // nullable
  SocialLink? get twitter => throw _privateConstructorUsedError; // nullable
  SocialLink? get youtube => throw _privateConstructorUsedError; // nullable
  SocialLink? get sns => throw _privateConstructorUsedError;

  /// Serializes this Links to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Links
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LinksCopyWith<Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksCopyWith<$Res> {
  factory $LinksCopyWith(Links value, $Res Function(Links) then) =
      _$LinksCopyWithImpl<$Res, Links>;
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
class _$LinksCopyWithImpl<$Res, $Val extends Links>
    implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Links
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

  /// Create a copy of Links
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

  /// Create a copy of Links
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

  /// Create a copy of Links
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

  /// Create a copy of Links
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
abstract class _$$LinksImplCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$$LinksImplCopyWith(
          _$LinksImpl value, $Res Function(_$LinksImpl) then) =
      __$$LinksImplCopyWithImpl<$Res>;
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
class __$$LinksImplCopyWithImpl<$Res>
    extends _$LinksCopyWithImpl<$Res, _$LinksImpl>
    implements _$$LinksImplCopyWith<$Res> {
  __$$LinksImplCopyWithImpl(
      _$LinksImpl _value, $Res Function(_$LinksImpl) _then)
      : super(_value, _then);

  /// Create a copy of Links
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? site = freezed,
    Object? twitter = freezed,
    Object? youtube = freezed,
    Object? sns = freezed,
  }) {
    return _then(_$LinksImpl(
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
class _$LinksImpl implements _Links {
  const _$LinksImpl({this.site, this.twitter, this.youtube, this.sns});

  factory _$LinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinksImplFromJson(json);

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
    return 'Links(site: $site, twitter: $twitter, youtube: $youtube, sns: $sns)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinksImpl &&
            (identical(other.site, site) || other.site == site) &&
            (identical(other.twitter, twitter) || other.twitter == twitter) &&
            (identical(other.youtube, youtube) || other.youtube == youtube) &&
            (identical(other.sns, sns) || other.sns == sns));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, site, twitter, youtube, sns);

  /// Create a copy of Links
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinksImplCopyWith<_$LinksImpl> get copyWith =>
      __$$LinksImplCopyWithImpl<_$LinksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinksImplToJson(
      this,
    );
  }
}

abstract class _Links implements Links {
  const factory _Links(
      {final SocialLink? site,
      final SocialLink? twitter,
      final SocialLink? youtube,
      final SocialLink? sns}) = _$LinksImpl;

  factory _Links.fromJson(Map<String, dynamic> json) = _$LinksImpl.fromJson;

  @override
  SocialLink? get site; // nullable
  @override
  SocialLink? get twitter; // nullable
  @override
  SocialLink? get youtube; // nullable
  @override
  SocialLink? get sns;

  /// Create a copy of Links
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinksImplCopyWith<_$LinksImpl> get copyWith =>
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

Keyword _$KeywordFromJson(Map<String, dynamic> json) {
  return _Keyword.fromJson(json);
}

/// @nodoc
mixin _$Keyword {
  String get text => throw _privateConstructorUsedError;
  String get phonetic => throw _privateConstructorUsedError;

  /// Serializes this Keyword to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Keyword
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeywordCopyWith<Keyword> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeywordCopyWith<$Res> {
  factory $KeywordCopyWith(Keyword value, $Res Function(Keyword) then) =
      _$KeywordCopyWithImpl<$Res, Keyword>;
  @useResult
  $Res call({String text, String phonetic});
}

/// @nodoc
class _$KeywordCopyWithImpl<$Res, $Val extends Keyword>
    implements $KeywordCopyWith<$Res> {
  _$KeywordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Keyword
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
abstract class _$$KeywordImplCopyWith<$Res> implements $KeywordCopyWith<$Res> {
  factory _$$KeywordImplCopyWith(
          _$KeywordImpl value, $Res Function(_$KeywordImpl) then) =
      __$$KeywordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String phonetic});
}

/// @nodoc
class __$$KeywordImplCopyWithImpl<$Res>
    extends _$KeywordCopyWithImpl<$Res, _$KeywordImpl>
    implements _$$KeywordImplCopyWith<$Res> {
  __$$KeywordImplCopyWithImpl(
      _$KeywordImpl _value, $Res Function(_$KeywordImpl) _then)
      : super(_value, _then);

  /// Create a copy of Keyword
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? phonetic = null,
  }) {
    return _then(_$KeywordImpl(
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
class _$KeywordImpl implements _Keyword {
  const _$KeywordImpl({required this.text, required this.phonetic});

  factory _$KeywordImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeywordImplFromJson(json);

  @override
  final String text;
  @override
  final String phonetic;

  @override
  String toString() {
    return 'Keyword(text: $text, phonetic: $phonetic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeywordImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.phonetic, phonetic) ||
                other.phonetic == phonetic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, phonetic);

  /// Create a copy of Keyword
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeywordImplCopyWith<_$KeywordImpl> get copyWith =>
      __$$KeywordImplCopyWithImpl<_$KeywordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeywordImplToJson(
      this,
    );
  }
}

abstract class _Keyword implements Keyword {
  const factory _Keyword(
      {required final String text,
      required final String phonetic}) = _$KeywordImpl;

  factory _Keyword.fromJson(Map<String, dynamic> json) = _$KeywordImpl.fromJson;

  @override
  String get text;
  @override
  String get phonetic;

  /// Create a copy of Keyword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeywordImplCopyWith<_$KeywordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RealSp _$RealSpFromJson(Map<String, dynamic> json) {
  return _RealSp.fromJson(json);
}

/// @nodoc
mixin _$RealSp {
  String? get area => throw _privateConstructorUsedError; // nullable
  String? get no => throw _privateConstructorUsedError;

  /// Serializes this RealSp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RealSp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RealSpCopyWith<RealSp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RealSpCopyWith<$Res> {
  factory $RealSpCopyWith(RealSp value, $Res Function(RealSp) then) =
      _$RealSpCopyWithImpl<$Res, RealSp>;
  @useResult
  $Res call({String? area, String? no});
}

/// @nodoc
class _$RealSpCopyWithImpl<$Res, $Val extends RealSp>
    implements $RealSpCopyWith<$Res> {
  _$RealSpCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RealSp
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
abstract class _$$RealSpImplCopyWith<$Res> implements $RealSpCopyWith<$Res> {
  factory _$$RealSpImplCopyWith(
          _$RealSpImpl value, $Res Function(_$RealSpImpl) then) =
      __$$RealSpImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? area, String? no});
}

/// @nodoc
class __$$RealSpImplCopyWithImpl<$Res>
    extends _$RealSpCopyWithImpl<$Res, _$RealSpImpl>
    implements _$$RealSpImplCopyWith<$Res> {
  __$$RealSpImplCopyWithImpl(
      _$RealSpImpl _value, $Res Function(_$RealSpImpl) _then)
      : super(_value, _then);

  /// Create a copy of RealSp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = freezed,
    Object? no = freezed,
  }) {
    return _then(_$RealSpImpl(
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
class _$RealSpImpl implements _RealSp {
  const _$RealSpImpl({this.area, this.no});

  factory _$RealSpImpl.fromJson(Map<String, dynamic> json) =>
      _$$RealSpImplFromJson(json);

  @override
  final String? area;
// nullable
  @override
  final String? no;

  @override
  String toString() {
    return 'RealSp(area: $area, no: $no)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RealSpImpl &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.no, no) || other.no == no));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, area, no);

  /// Create a copy of RealSp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RealSpImplCopyWith<_$RealSpImpl> get copyWith =>
      __$$RealSpImplCopyWithImpl<_$RealSpImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RealSpImplToJson(
      this,
    );
  }
}

abstract class _RealSp implements RealSp {
  const factory _RealSp({final String? area, final String? no}) = _$RealSpImpl;

  factory _RealSp.fromJson(Map<String, dynamic> json) = _$RealSpImpl.fromJson;

  @override
  String? get area; // nullable
  @override
  String? get no;

  /// Create a copy of RealSp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RealSpImplCopyWith<_$RealSpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WebSp _$WebSpFromJson(Map<String, dynamic> json) {
  return _WebSp.fromJson(json);
}

/// @nodoc
mixin _$WebSp {
  String get area => throw _privateConstructorUsedError;
  String get no => throw _privateConstructorUsedError;

  /// Serializes this WebSp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebSp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebSpCopyWith<WebSp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebSpCopyWith<$Res> {
  factory $WebSpCopyWith(WebSp value, $Res Function(WebSp) then) =
      _$WebSpCopyWithImpl<$Res, WebSp>;
  @useResult
  $Res call({String area, String no});
}

/// @nodoc
class _$WebSpCopyWithImpl<$Res, $Val extends WebSp>
    implements $WebSpCopyWith<$Res> {
  _$WebSpCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebSp
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
abstract class _$$WebSpImplCopyWith<$Res> implements $WebSpCopyWith<$Res> {
  factory _$$WebSpImplCopyWith(
          _$WebSpImpl value, $Res Function(_$WebSpImpl) then) =
      __$$WebSpImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String area, String no});
}

/// @nodoc
class __$$WebSpImplCopyWithImpl<$Res>
    extends _$WebSpCopyWithImpl<$Res, _$WebSpImpl>
    implements _$$WebSpImplCopyWith<$Res> {
  __$$WebSpImplCopyWithImpl(
      _$WebSpImpl _value, $Res Function(_$WebSpImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebSp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? no = null,
  }) {
    return _then(_$WebSpImpl(
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
class _$WebSpImpl implements _WebSp {
  const _$WebSpImpl({required this.area, required this.no});

  factory _$WebSpImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebSpImplFromJson(json);

  @override
  final String area;
  @override
  final String no;

  @override
  String toString() {
    return 'WebSp(area: $area, no: $no)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebSpImpl &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.no, no) || other.no == no));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, area, no);

  /// Create a copy of WebSp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebSpImplCopyWith<_$WebSpImpl> get copyWith =>
      __$$WebSpImplCopyWithImpl<_$WebSpImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebSpImplToJson(
      this,
    );
  }
}

abstract class _WebSp implements WebSp {
  const factory _WebSp({required final String area, required final String no}) =
      _$WebSpImpl;

  factory _WebSp.fromJson(Map<String, dynamic> json) = _$WebSpImpl.fromJson;

  @override
  String get area;
  @override
  String get no;

  /// Create a copy of WebSp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebSpImplCopyWith<_$WebSpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
