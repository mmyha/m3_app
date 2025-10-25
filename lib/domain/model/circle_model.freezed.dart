// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'circle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CircleModel {
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
  RealSpModel? get realSp; // nullable
  WebSpModel? get webSp;
  bool? get isFavorite;

  /// Create a copy of CircleModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CircleModelCopyWith<CircleModel> get copyWith =>
      _$CircleModelCopyWithImpl<CircleModel>(this as CircleModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CircleModel &&
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
      const DeepCollectionEquality().hash(keywords),
      realSp,
      webSp,
      isFavorite);

  @override
  String toString() {
    return 'CircleModel(id: $id, name: $name, phonetic: $phonetic, genre: $genre, spaceSize: $spaceSize, adult: $adult, prText: $prText, links: $links, keywords: $keywords, realSp: $realSp, webSp: $webSp, isFavorite: $isFavorite)';
  }
}

/// @nodoc
abstract mixin class $CircleModelCopyWith<$Res> {
  factory $CircleModelCopyWith(
          CircleModel value, $Res Function(CircleModel) _then) =
      _$CircleModelCopyWithImpl;
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
class _$CircleModelCopyWithImpl<$Res> implements $CircleModelCopyWith<$Res> {
  _$CircleModelCopyWithImpl(this._self, this._then);

  final CircleModel _self;
  final $Res Function(CircleModel) _then;

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
      realSp: freezed == realSp
          ? _self.realSp
          : realSp // ignore: cast_nullable_to_non_nullable
              as RealSpModel?,
      webSp: freezed == webSp
          ? _self.webSp
          : webSp // ignore: cast_nullable_to_non_nullable
              as WebSpModel?,
      isFavorite: freezed == isFavorite
          ? _self.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of CircleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnsLinksModelCopyWith<$Res> get links {
    return $SnsLinksModelCopyWith<$Res>(_self.links, (value) {
      return _then(_self.copyWith(links: value));
    });
  }

  /// Create a copy of CircleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RealSpModelCopyWith<$Res>? get realSp {
    if (_self.realSp == null) {
      return null;
    }

    return $RealSpModelCopyWith<$Res>(_self.realSp!, (value) {
      return _then(_self.copyWith(realSp: value));
    });
  }

  /// Create a copy of CircleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebSpModelCopyWith<$Res>? get webSp {
    if (_self.webSp == null) {
      return null;
    }

    return $WebSpModelCopyWith<$Res>(_self.webSp!, (value) {
      return _then(_self.copyWith(webSp: value));
    });
  }
}

/// Adds pattern-matching-related methods to [CircleModel].
extension CircleModelPatterns on CircleModel {
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
    TResult Function(_CircleModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CircleModel() when $default != null:
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
    TResult Function(_CircleModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CircleModel():
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
    TResult? Function(_CircleModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CircleModel() when $default != null:
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
            RealSpModel? realSp,
            WebSpModel? webSp,
            bool? isFavorite)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CircleModel() when $default != null:
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
            _that.realSp,
            _that.webSp,
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
            RealSpModel? realSp,
            WebSpModel? webSp,
            bool? isFavorite)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CircleModel():
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
            _that.realSp,
            _that.webSp,
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
            RealSpModel? realSp,
            WebSpModel? webSp,
            bool? isFavorite)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CircleModel() when $default != null:
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
            _that.realSp,
            _that.webSp,
            _that.isFavorite);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CircleModel implements CircleModel {
  const _CircleModel(
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

  /// Create a copy of CircleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CircleModelCopyWith<_CircleModel> get copyWith =>
      __$CircleModelCopyWithImpl<_CircleModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CircleModel &&
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

  @override
  String toString() {
    return 'CircleModel(id: $id, name: $name, phonetic: $phonetic, genre: $genre, spaceSize: $spaceSize, adult: $adult, prText: $prText, links: $links, keywords: $keywords, realSp: $realSp, webSp: $webSp, isFavorite: $isFavorite)';
  }
}

/// @nodoc
abstract mixin class _$CircleModelCopyWith<$Res>
    implements $CircleModelCopyWith<$Res> {
  factory _$CircleModelCopyWith(
          _CircleModel value, $Res Function(_CircleModel) _then) =
      __$CircleModelCopyWithImpl;
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
class __$CircleModelCopyWithImpl<$Res> implements _$CircleModelCopyWith<$Res> {
  __$CircleModelCopyWithImpl(this._self, this._then);

  final _CircleModel _self;
  final $Res Function(_CircleModel) _then;

  /// Create a copy of CircleModel
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
    Object? realSp = freezed,
    Object? webSp = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_CircleModel(
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
      realSp: freezed == realSp
          ? _self.realSp
          : realSp // ignore: cast_nullable_to_non_nullable
              as RealSpModel?,
      webSp: freezed == webSp
          ? _self.webSp
          : webSp // ignore: cast_nullable_to_non_nullable
              as WebSpModel?,
      isFavorite: freezed == isFavorite
          ? _self.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of CircleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnsLinksModelCopyWith<$Res> get links {
    return $SnsLinksModelCopyWith<$Res>(_self.links, (value) {
      return _then(_self.copyWith(links: value));
    });
  }

  /// Create a copy of CircleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RealSpModelCopyWith<$Res>? get realSp {
    if (_self.realSp == null) {
      return null;
    }

    return $RealSpModelCopyWith<$Res>(_self.realSp!, (value) {
      return _then(_self.copyWith(realSp: value));
    });
  }

  /// Create a copy of CircleModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebSpModelCopyWith<$Res>? get webSp {
    if (_self.webSp == null) {
      return null;
    }

    return $WebSpModelCopyWith<$Res>(_self.webSp!, (value) {
      return _then(_self.copyWith(webSp: value));
    });
  }
}

/// @nodoc
mixin _$SnsLinksModel {
  SocialLink? get site; // nullable
  SocialLink? get twitter; // nullable
  SocialLink? get youtube; // nullable
  SocialLink? get sns;

  /// Create a copy of SnsLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnsLinksModelCopyWith<SnsLinksModel> get copyWith =>
      _$SnsLinksModelCopyWithImpl<SnsLinksModel>(
          this as SnsLinksModel, _$identity);

  /// Serializes this SnsLinksModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnsLinksModel &&
            (identical(other.site, site) || other.site == site) &&
            (identical(other.twitter, twitter) || other.twitter == twitter) &&
            (identical(other.youtube, youtube) || other.youtube == youtube) &&
            (identical(other.sns, sns) || other.sns == sns));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, site, twitter, youtube, sns);

  @override
  String toString() {
    return 'SnsLinksModel(site: $site, twitter: $twitter, youtube: $youtube, sns: $sns)';
  }
}

/// @nodoc
abstract mixin class $SnsLinksModelCopyWith<$Res> {
  factory $SnsLinksModelCopyWith(
          SnsLinksModel value, $Res Function(SnsLinksModel) _then) =
      _$SnsLinksModelCopyWithImpl;
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
class _$SnsLinksModelCopyWithImpl<$Res>
    implements $SnsLinksModelCopyWith<$Res> {
  _$SnsLinksModelCopyWithImpl(this._self, this._then);

  final SnsLinksModel _self;
  final $Res Function(SnsLinksModel) _then;

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
    return _then(_self.copyWith(
      site: freezed == site
          ? _self.site
          : site // ignore: cast_nullable_to_non_nullable
              as SocialLink?,
      twitter: freezed == twitter
          ? _self.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as SocialLink?,
      youtube: freezed == youtube
          ? _self.youtube
          : youtube // ignore: cast_nullable_to_non_nullable
              as SocialLink?,
      sns: freezed == sns
          ? _self.sns
          : sns // ignore: cast_nullable_to_non_nullable
              as SocialLink?,
    ));
  }

  /// Create a copy of SnsLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialLinkCopyWith<$Res>? get site {
    if (_self.site == null) {
      return null;
    }

    return $SocialLinkCopyWith<$Res>(_self.site!, (value) {
      return _then(_self.copyWith(site: value));
    });
  }

  /// Create a copy of SnsLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialLinkCopyWith<$Res>? get twitter {
    if (_self.twitter == null) {
      return null;
    }

    return $SocialLinkCopyWith<$Res>(_self.twitter!, (value) {
      return _then(_self.copyWith(twitter: value));
    });
  }

  /// Create a copy of SnsLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialLinkCopyWith<$Res>? get youtube {
    if (_self.youtube == null) {
      return null;
    }

    return $SocialLinkCopyWith<$Res>(_self.youtube!, (value) {
      return _then(_self.copyWith(youtube: value));
    });
  }

  /// Create a copy of SnsLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialLinkCopyWith<$Res>? get sns {
    if (_self.sns == null) {
      return null;
    }

    return $SocialLinkCopyWith<$Res>(_self.sns!, (value) {
      return _then(_self.copyWith(sns: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SnsLinksModel].
extension SnsLinksModelPatterns on SnsLinksModel {
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
    TResult Function(_SnsLinksModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnsLinksModel() when $default != null:
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
    TResult Function(_SnsLinksModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnsLinksModel():
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
    TResult? Function(_SnsLinksModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnsLinksModel() when $default != null:
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
    TResult Function(SocialLink? site, SocialLink? twitter, SocialLink? youtube,
            SocialLink? sns)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnsLinksModel() when $default != null:
        return $default(_that.site, _that.twitter, _that.youtube, _that.sns);
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
    TResult Function(SocialLink? site, SocialLink? twitter, SocialLink? youtube,
            SocialLink? sns)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnsLinksModel():
        return $default(_that.site, _that.twitter, _that.youtube, _that.sns);
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
    TResult? Function(SocialLink? site, SocialLink? twitter,
            SocialLink? youtube, SocialLink? sns)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnsLinksModel() when $default != null:
        return $default(_that.site, _that.twitter, _that.youtube, _that.sns);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnsLinksModel implements SnsLinksModel {
  const _SnsLinksModel({this.site, this.twitter, this.youtube, this.sns});
  factory _SnsLinksModel.fromJson(Map<String, dynamic> json) =>
      _$SnsLinksModelFromJson(json);

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

  /// Create a copy of SnsLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnsLinksModelCopyWith<_SnsLinksModel> get copyWith =>
      __$SnsLinksModelCopyWithImpl<_SnsLinksModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnsLinksModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnsLinksModel &&
            (identical(other.site, site) || other.site == site) &&
            (identical(other.twitter, twitter) || other.twitter == twitter) &&
            (identical(other.youtube, youtube) || other.youtube == youtube) &&
            (identical(other.sns, sns) || other.sns == sns));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, site, twitter, youtube, sns);

  @override
  String toString() {
    return 'SnsLinksModel(site: $site, twitter: $twitter, youtube: $youtube, sns: $sns)';
  }
}

/// @nodoc
abstract mixin class _$SnsLinksModelCopyWith<$Res>
    implements $SnsLinksModelCopyWith<$Res> {
  factory _$SnsLinksModelCopyWith(
          _SnsLinksModel value, $Res Function(_SnsLinksModel) _then) =
      __$SnsLinksModelCopyWithImpl;
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
class __$SnsLinksModelCopyWithImpl<$Res>
    implements _$SnsLinksModelCopyWith<$Res> {
  __$SnsLinksModelCopyWithImpl(this._self, this._then);

  final _SnsLinksModel _self;
  final $Res Function(_SnsLinksModel) _then;

  /// Create a copy of SnsLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? site = freezed,
    Object? twitter = freezed,
    Object? youtube = freezed,
    Object? sns = freezed,
  }) {
    return _then(_SnsLinksModel(
      site: freezed == site
          ? _self.site
          : site // ignore: cast_nullable_to_non_nullable
              as SocialLink?,
      twitter: freezed == twitter
          ? _self.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as SocialLink?,
      youtube: freezed == youtube
          ? _self.youtube
          : youtube // ignore: cast_nullable_to_non_nullable
              as SocialLink?,
      sns: freezed == sns
          ? _self.sns
          : sns // ignore: cast_nullable_to_non_nullable
              as SocialLink?,
    ));
  }

  /// Create a copy of SnsLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialLinkCopyWith<$Res>? get site {
    if (_self.site == null) {
      return null;
    }

    return $SocialLinkCopyWith<$Res>(_self.site!, (value) {
      return _then(_self.copyWith(site: value));
    });
  }

  /// Create a copy of SnsLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialLinkCopyWith<$Res>? get twitter {
    if (_self.twitter == null) {
      return null;
    }

    return $SocialLinkCopyWith<$Res>(_self.twitter!, (value) {
      return _then(_self.copyWith(twitter: value));
    });
  }

  /// Create a copy of SnsLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialLinkCopyWith<$Res>? get youtube {
    if (_self.youtube == null) {
      return null;
    }

    return $SocialLinkCopyWith<$Res>(_self.youtube!, (value) {
      return _then(_self.copyWith(youtube: value));
    });
  }

  /// Create a copy of SnsLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocialLinkCopyWith<$Res>? get sns {
    if (_self.sns == null) {
      return null;
    }

    return $SocialLinkCopyWith<$Res>(_self.sns!, (value) {
      return _then(_self.copyWith(sns: value));
    });
  }
}

/// @nodoc
mixin _$SocialLink {
  String get text;
  String get url;

  /// Create a copy of SocialLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SocialLinkCopyWith<SocialLink> get copyWith =>
      _$SocialLinkCopyWithImpl<SocialLink>(this as SocialLink, _$identity);

  /// Serializes this SocialLink to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SocialLink &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, url);

  @override
  String toString() {
    return 'SocialLink(text: $text, url: $url)';
  }
}

/// @nodoc
abstract mixin class $SocialLinkCopyWith<$Res> {
  factory $SocialLinkCopyWith(
          SocialLink value, $Res Function(SocialLink) _then) =
      _$SocialLinkCopyWithImpl;
  @useResult
  $Res call({String text, String url});
}

/// @nodoc
class _$SocialLinkCopyWithImpl<$Res> implements $SocialLinkCopyWith<$Res> {
  _$SocialLinkCopyWithImpl(this._self, this._then);

  final SocialLink _self;
  final $Res Function(SocialLink) _then;

  /// Create a copy of SocialLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? url = null,
  }) {
    return _then(_self.copyWith(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SocialLink].
extension SocialLinkPatterns on SocialLink {
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
    TResult Function(_SocialLink value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SocialLink() when $default != null:
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
    TResult Function(_SocialLink value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocialLink():
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
    TResult? Function(_SocialLink value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocialLink() when $default != null:
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
    TResult Function(String text, String url)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SocialLink() when $default != null:
        return $default(_that.text, _that.url);
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
    TResult Function(String text, String url) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocialLink():
        return $default(_that.text, _that.url);
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
    TResult? Function(String text, String url)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocialLink() when $default != null:
        return $default(_that.text, _that.url);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SocialLink implements SocialLink {
  const _SocialLink({required this.text, required this.url});
  factory _SocialLink.fromJson(Map<String, dynamic> json) =>
      _$SocialLinkFromJson(json);

  @override
  final String text;
  @override
  final String url;

  /// Create a copy of SocialLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SocialLinkCopyWith<_SocialLink> get copyWith =>
      __$SocialLinkCopyWithImpl<_SocialLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SocialLinkToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocialLink &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, url);

  @override
  String toString() {
    return 'SocialLink(text: $text, url: $url)';
  }
}

/// @nodoc
abstract mixin class _$SocialLinkCopyWith<$Res>
    implements $SocialLinkCopyWith<$Res> {
  factory _$SocialLinkCopyWith(
          _SocialLink value, $Res Function(_SocialLink) _then) =
      __$SocialLinkCopyWithImpl;
  @override
  @useResult
  $Res call({String text, String url});
}

/// @nodoc
class __$SocialLinkCopyWithImpl<$Res> implements _$SocialLinkCopyWith<$Res> {
  __$SocialLinkCopyWithImpl(this._self, this._then);

  final _SocialLink _self;
  final $Res Function(_SocialLink) _then;

  /// Create a copy of SocialLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = null,
    Object? url = null,
  }) {
    return _then(_SocialLink(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$KeywordModel {
  String get text;
  String get phonetic;

  /// Create a copy of KeywordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KeywordModelCopyWith<KeywordModel> get copyWith =>
      _$KeywordModelCopyWithImpl<KeywordModel>(
          this as KeywordModel, _$identity);

  /// Serializes this KeywordModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KeywordModel &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.phonetic, phonetic) ||
                other.phonetic == phonetic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, phonetic);

  @override
  String toString() {
    return 'KeywordModel(text: $text, phonetic: $phonetic)';
  }
}

/// @nodoc
abstract mixin class $KeywordModelCopyWith<$Res> {
  factory $KeywordModelCopyWith(
          KeywordModel value, $Res Function(KeywordModel) _then) =
      _$KeywordModelCopyWithImpl;
  @useResult
  $Res call({String text, String phonetic});
}

/// @nodoc
class _$KeywordModelCopyWithImpl<$Res> implements $KeywordModelCopyWith<$Res> {
  _$KeywordModelCopyWithImpl(this._self, this._then);

  final KeywordModel _self;
  final $Res Function(KeywordModel) _then;

  /// Create a copy of KeywordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? phonetic = null,
  }) {
    return _then(_self.copyWith(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      phonetic: null == phonetic
          ? _self.phonetic
          : phonetic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [KeywordModel].
extension KeywordModelPatterns on KeywordModel {
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
    TResult Function(_KeywordModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KeywordModel() when $default != null:
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
    TResult Function(_KeywordModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeywordModel():
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
    TResult? Function(_KeywordModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeywordModel() when $default != null:
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
    TResult Function(String text, String phonetic)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KeywordModel() when $default != null:
        return $default(_that.text, _that.phonetic);
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
    TResult Function(String text, String phonetic) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeywordModel():
        return $default(_that.text, _that.phonetic);
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
    TResult? Function(String text, String phonetic)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KeywordModel() when $default != null:
        return $default(_that.text, _that.phonetic);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _KeywordModel implements KeywordModel {
  const _KeywordModel({required this.text, required this.phonetic});
  factory _KeywordModel.fromJson(Map<String, dynamic> json) =>
      _$KeywordModelFromJson(json);

  @override
  final String text;
  @override
  final String phonetic;

  /// Create a copy of KeywordModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$KeywordModelCopyWith<_KeywordModel> get copyWith =>
      __$KeywordModelCopyWithImpl<_KeywordModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KeywordModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KeywordModel &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.phonetic, phonetic) ||
                other.phonetic == phonetic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, phonetic);

  @override
  String toString() {
    return 'KeywordModel(text: $text, phonetic: $phonetic)';
  }
}

/// @nodoc
abstract mixin class _$KeywordModelCopyWith<$Res>
    implements $KeywordModelCopyWith<$Res> {
  factory _$KeywordModelCopyWith(
          _KeywordModel value, $Res Function(_KeywordModel) _then) =
      __$KeywordModelCopyWithImpl;
  @override
  @useResult
  $Res call({String text, String phonetic});
}

/// @nodoc
class __$KeywordModelCopyWithImpl<$Res>
    implements _$KeywordModelCopyWith<$Res> {
  __$KeywordModelCopyWithImpl(this._self, this._then);

  final _KeywordModel _self;
  final $Res Function(_KeywordModel) _then;

  /// Create a copy of KeywordModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = null,
    Object? phonetic = null,
  }) {
    return _then(_KeywordModel(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      phonetic: null == phonetic
          ? _self.phonetic
          : phonetic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$RealSpModel {
  String? get area; // nullable
  String? get no;

  /// Create a copy of RealSpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RealSpModelCopyWith<RealSpModel> get copyWith =>
      _$RealSpModelCopyWithImpl<RealSpModel>(this as RealSpModel, _$identity);

  /// Serializes this RealSpModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RealSpModel &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.no, no) || other.no == no));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, area, no);

  @override
  String toString() {
    return 'RealSpModel(area: $area, no: $no)';
  }
}

/// @nodoc
abstract mixin class $RealSpModelCopyWith<$Res> {
  factory $RealSpModelCopyWith(
          RealSpModel value, $Res Function(RealSpModel) _then) =
      _$RealSpModelCopyWithImpl;
  @useResult
  $Res call({String? area, String? no});
}

/// @nodoc
class _$RealSpModelCopyWithImpl<$Res> implements $RealSpModelCopyWith<$Res> {
  _$RealSpModelCopyWithImpl(this._self, this._then);

  final RealSpModel _self;
  final $Res Function(RealSpModel) _then;

  /// Create a copy of RealSpModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = freezed,
    Object? no = freezed,
  }) {
    return _then(_self.copyWith(
      area: freezed == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      no: freezed == no
          ? _self.no
          : no // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RealSpModel].
extension RealSpModelPatterns on RealSpModel {
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
    TResult Function(_RealSpModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RealSpModel() when $default != null:
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
    TResult Function(_RealSpModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RealSpModel():
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
    TResult? Function(_RealSpModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RealSpModel() when $default != null:
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
    TResult Function(String? area, String? no)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RealSpModel() when $default != null:
        return $default(_that.area, _that.no);
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
    TResult Function(String? area, String? no) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RealSpModel():
        return $default(_that.area, _that.no);
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
    TResult? Function(String? area, String? no)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RealSpModel() when $default != null:
        return $default(_that.area, _that.no);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RealSpModel implements RealSpModel {
  const _RealSpModel({this.area, this.no});
  factory _RealSpModel.fromJson(Map<String, dynamic> json) =>
      _$RealSpModelFromJson(json);

  @override
  final String? area;
// nullable
  @override
  final String? no;

  /// Create a copy of RealSpModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RealSpModelCopyWith<_RealSpModel> get copyWith =>
      __$RealSpModelCopyWithImpl<_RealSpModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RealSpModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RealSpModel &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.no, no) || other.no == no));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, area, no);

  @override
  String toString() {
    return 'RealSpModel(area: $area, no: $no)';
  }
}

/// @nodoc
abstract mixin class _$RealSpModelCopyWith<$Res>
    implements $RealSpModelCopyWith<$Res> {
  factory _$RealSpModelCopyWith(
          _RealSpModel value, $Res Function(_RealSpModel) _then) =
      __$RealSpModelCopyWithImpl;
  @override
  @useResult
  $Res call({String? area, String? no});
}

/// @nodoc
class __$RealSpModelCopyWithImpl<$Res> implements _$RealSpModelCopyWith<$Res> {
  __$RealSpModelCopyWithImpl(this._self, this._then);

  final _RealSpModel _self;
  final $Res Function(_RealSpModel) _then;

  /// Create a copy of RealSpModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? area = freezed,
    Object? no = freezed,
  }) {
    return _then(_RealSpModel(
      area: freezed == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      no: freezed == no
          ? _self.no
          : no // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$WebSpModel {
  String get area;
  String get no;

  /// Create a copy of WebSpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WebSpModelCopyWith<WebSpModel> get copyWith =>
      _$WebSpModelCopyWithImpl<WebSpModel>(this as WebSpModel, _$identity);

  /// Serializes this WebSpModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WebSpModel &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.no, no) || other.no == no));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, area, no);

  @override
  String toString() {
    return 'WebSpModel(area: $area, no: $no)';
  }
}

/// @nodoc
abstract mixin class $WebSpModelCopyWith<$Res> {
  factory $WebSpModelCopyWith(
          WebSpModel value, $Res Function(WebSpModel) _then) =
      _$WebSpModelCopyWithImpl;
  @useResult
  $Res call({String area, String no});
}

/// @nodoc
class _$WebSpModelCopyWithImpl<$Res> implements $WebSpModelCopyWith<$Res> {
  _$WebSpModelCopyWithImpl(this._self, this._then);

  final WebSpModel _self;
  final $Res Function(WebSpModel) _then;

  /// Create a copy of WebSpModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? no = null,
  }) {
    return _then(_self.copyWith(
      area: null == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      no: null == no
          ? _self.no
          : no // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [WebSpModel].
extension WebSpModelPatterns on WebSpModel {
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
    TResult Function(_WebSpModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WebSpModel() when $default != null:
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
    TResult Function(_WebSpModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WebSpModel():
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
    TResult? Function(_WebSpModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WebSpModel() when $default != null:
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
    TResult Function(String area, String no)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WebSpModel() when $default != null:
        return $default(_that.area, _that.no);
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
    TResult Function(String area, String no) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WebSpModel():
        return $default(_that.area, _that.no);
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
    TResult? Function(String area, String no)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WebSpModel() when $default != null:
        return $default(_that.area, _that.no);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _WebSpModel implements WebSpModel {
  const _WebSpModel({required this.area, required this.no});
  factory _WebSpModel.fromJson(Map<String, dynamic> json) =>
      _$WebSpModelFromJson(json);

  @override
  final String area;
  @override
  final String no;

  /// Create a copy of WebSpModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WebSpModelCopyWith<_WebSpModel> get copyWith =>
      __$WebSpModelCopyWithImpl<_WebSpModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WebSpModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WebSpModel &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.no, no) || other.no == no));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, area, no);

  @override
  String toString() {
    return 'WebSpModel(area: $area, no: $no)';
  }
}

/// @nodoc
abstract mixin class _$WebSpModelCopyWith<$Res>
    implements $WebSpModelCopyWith<$Res> {
  factory _$WebSpModelCopyWith(
          _WebSpModel value, $Res Function(_WebSpModel) _then) =
      __$WebSpModelCopyWithImpl;
  @override
  @useResult
  $Res call({String area, String no});
}

/// @nodoc
class __$WebSpModelCopyWithImpl<$Res> implements _$WebSpModelCopyWith<$Res> {
  __$WebSpModelCopyWithImpl(this._self, this._then);

  final _WebSpModel _self;
  final $Res Function(_WebSpModel) _then;

  /// Create a copy of WebSpModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? area = null,
    Object? no = null,
  }) {
    return _then(_WebSpModel(
      area: null == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      no: null == no
          ? _self.no
          : no // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
