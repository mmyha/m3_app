// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circle_database.dart';

// ignore_for_file: type=lint
class $CirclesTable extends Circles with TableInfo<$CirclesTable, Circle> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CirclesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneticMeta =
      const VerificationMeta('phonetic');
  @override
  late final GeneratedColumn<String> phonetic = GeneratedColumn<String>(
      'phonetic', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _genreMeta = const VerificationMeta('genre');
  @override
  late final GeneratedColumn<String> genre = GeneratedColumn<String>(
      'genre', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _spaceSizeMeta =
      const VerificationMeta('spaceSize');
  @override
  late final GeneratedColumn<int> spaceSize = GeneratedColumn<int>(
      'space_size', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _adultMeta = const VerificationMeta('adult');
  @override
  late final GeneratedColumn<bool> adult = GeneratedColumn<bool>(
      'adult', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("adult" IN (0, 1))'));
  static const VerificationMeta _prTextMeta = const VerificationMeta('prText');
  @override
  late final GeneratedColumn<String> prText = GeneratedColumn<String>(
      'pr_text', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isFavoriteMeta =
      const VerificationMeta('isFavorite');
  @override
  late final GeneratedColumn<bool> isFavorite = GeneratedColumn<bool>(
      'is_favorite', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_favorite" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, phonetic, genre, spaceSize, adult, prText, isFavorite];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'circles';
  @override
  VerificationContext validateIntegrity(Insertable<Circle> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('phonetic')) {
      context.handle(_phoneticMeta,
          phonetic.isAcceptableOrUnknown(data['phonetic']!, _phoneticMeta));
    } else if (isInserting) {
      context.missing(_phoneticMeta);
    }
    if (data.containsKey('genre')) {
      context.handle(
          _genreMeta, genre.isAcceptableOrUnknown(data['genre']!, _genreMeta));
    } else if (isInserting) {
      context.missing(_genreMeta);
    }
    if (data.containsKey('space_size')) {
      context.handle(_spaceSizeMeta,
          spaceSize.isAcceptableOrUnknown(data['space_size']!, _spaceSizeMeta));
    } else if (isInserting) {
      context.missing(_spaceSizeMeta);
    }
    if (data.containsKey('adult')) {
      context.handle(
          _adultMeta, adult.isAcceptableOrUnknown(data['adult']!, _adultMeta));
    } else if (isInserting) {
      context.missing(_adultMeta);
    }
    if (data.containsKey('pr_text')) {
      context.handle(_prTextMeta,
          prText.isAcceptableOrUnknown(data['pr_text']!, _prTextMeta));
    } else if (isInserting) {
      context.missing(_prTextMeta);
    }
    if (data.containsKey('is_favorite')) {
      context.handle(
          _isFavoriteMeta,
          isFavorite.isAcceptableOrUnknown(
              data['is_favorite']!, _isFavoriteMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  Circle map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Circle(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      phonetic: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phonetic'])!,
      genre: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}genre'])!,
      spaceSize: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}space_size'])!,
      adult: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}adult'])!,
      prText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pr_text'])!,
      isFavorite: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_favorite'])!,
    );
  }

  @override
  $CirclesTable createAlias(String alias) {
    return $CirclesTable(attachedDatabase, alias);
  }
}

class Circle extends DataClass implements Insertable<Circle> {
  final int id;
  final String name;
  final String phonetic;
  final String genre;
  final int spaceSize;
  final bool adult;
  final String prText;
  final bool isFavorite;
  const Circle(
      {required this.id,
      required this.name,
      required this.phonetic,
      required this.genre,
      required this.spaceSize,
      required this.adult,
      required this.prText,
      required this.isFavorite});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['phonetic'] = Variable<String>(phonetic);
    map['genre'] = Variable<String>(genre);
    map['space_size'] = Variable<int>(spaceSize);
    map['adult'] = Variable<bool>(adult);
    map['pr_text'] = Variable<String>(prText);
    map['is_favorite'] = Variable<bool>(isFavorite);
    return map;
  }

  CirclesCompanion toCompanion(bool nullToAbsent) {
    return CirclesCompanion(
      id: Value(id),
      name: Value(name),
      phonetic: Value(phonetic),
      genre: Value(genre),
      spaceSize: Value(spaceSize),
      adult: Value(adult),
      prText: Value(prText),
      isFavorite: Value(isFavorite),
    );
  }

  factory Circle.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Circle(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      phonetic: serializer.fromJson<String>(json['phonetic']),
      genre: serializer.fromJson<String>(json['genre']),
      spaceSize: serializer.fromJson<int>(json['spaceSize']),
      adult: serializer.fromJson<bool>(json['adult']),
      prText: serializer.fromJson<String>(json['prText']),
      isFavorite: serializer.fromJson<bool>(json['isFavorite']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'phonetic': serializer.toJson<String>(phonetic),
      'genre': serializer.toJson<String>(genre),
      'spaceSize': serializer.toJson<int>(spaceSize),
      'adult': serializer.toJson<bool>(adult),
      'prText': serializer.toJson<String>(prText),
      'isFavorite': serializer.toJson<bool>(isFavorite),
    };
  }

  Circle copyWith(
          {int? id,
          String? name,
          String? phonetic,
          String? genre,
          int? spaceSize,
          bool? adult,
          String? prText,
          bool? isFavorite}) =>
      Circle(
        id: id ?? this.id,
        name: name ?? this.name,
        phonetic: phonetic ?? this.phonetic,
        genre: genre ?? this.genre,
        spaceSize: spaceSize ?? this.spaceSize,
        adult: adult ?? this.adult,
        prText: prText ?? this.prText,
        isFavorite: isFavorite ?? this.isFavorite,
      );
  Circle copyWithCompanion(CirclesCompanion data) {
    return Circle(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      phonetic: data.phonetic.present ? data.phonetic.value : this.phonetic,
      genre: data.genre.present ? data.genre.value : this.genre,
      spaceSize: data.spaceSize.present ? data.spaceSize.value : this.spaceSize,
      adult: data.adult.present ? data.adult.value : this.adult,
      prText: data.prText.present ? data.prText.value : this.prText,
      isFavorite:
          data.isFavorite.present ? data.isFavorite.value : this.isFavorite,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Circle(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('phonetic: $phonetic, ')
          ..write('genre: $genre, ')
          ..write('spaceSize: $spaceSize, ')
          ..write('adult: $adult, ')
          ..write('prText: $prText, ')
          ..write('isFavorite: $isFavorite')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, name, phonetic, genre, spaceSize, adult, prText, isFavorite);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Circle &&
          other.id == this.id &&
          other.name == this.name &&
          other.phonetic == this.phonetic &&
          other.genre == this.genre &&
          other.spaceSize == this.spaceSize &&
          other.adult == this.adult &&
          other.prText == this.prText &&
          other.isFavorite == this.isFavorite);
}

class CirclesCompanion extends UpdateCompanion<Circle> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> phonetic;
  final Value<String> genre;
  final Value<int> spaceSize;
  final Value<bool> adult;
  final Value<String> prText;
  final Value<bool> isFavorite;
  final Value<int> rowid;
  const CirclesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.phonetic = const Value.absent(),
    this.genre = const Value.absent(),
    this.spaceSize = const Value.absent(),
    this.adult = const Value.absent(),
    this.prText = const Value.absent(),
    this.isFavorite = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CirclesCompanion.insert({
    required int id,
    required String name,
    required String phonetic,
    required String genre,
    required int spaceSize,
    required bool adult,
    required String prText,
    this.isFavorite = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        phonetic = Value(phonetic),
        genre = Value(genre),
        spaceSize = Value(spaceSize),
        adult = Value(adult),
        prText = Value(prText);
  static Insertable<Circle> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? phonetic,
    Expression<String>? genre,
    Expression<int>? spaceSize,
    Expression<bool>? adult,
    Expression<String>? prText,
    Expression<bool>? isFavorite,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (phonetic != null) 'phonetic': phonetic,
      if (genre != null) 'genre': genre,
      if (spaceSize != null) 'space_size': spaceSize,
      if (adult != null) 'adult': adult,
      if (prText != null) 'pr_text': prText,
      if (isFavorite != null) 'is_favorite': isFavorite,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CirclesCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? phonetic,
      Value<String>? genre,
      Value<int>? spaceSize,
      Value<bool>? adult,
      Value<String>? prText,
      Value<bool>? isFavorite,
      Value<int>? rowid}) {
    return CirclesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      phonetic: phonetic ?? this.phonetic,
      genre: genre ?? this.genre,
      spaceSize: spaceSize ?? this.spaceSize,
      adult: adult ?? this.adult,
      prText: prText ?? this.prText,
      isFavorite: isFavorite ?? this.isFavorite,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (phonetic.present) {
      map['phonetic'] = Variable<String>(phonetic.value);
    }
    if (genre.present) {
      map['genre'] = Variable<String>(genre.value);
    }
    if (spaceSize.present) {
      map['space_size'] = Variable<int>(spaceSize.value);
    }
    if (adult.present) {
      map['adult'] = Variable<bool>(adult.value);
    }
    if (prText.present) {
      map['pr_text'] = Variable<String>(prText.value);
    }
    if (isFavorite.present) {
      map['is_favorite'] = Variable<bool>(isFavorite.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CirclesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('phonetic: $phonetic, ')
          ..write('genre: $genre, ')
          ..write('spaceSize: $spaceSize, ')
          ..write('adult: $adult, ')
          ..write('prText: $prText, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SnsLinksTable extends SnsLinks with TableInfo<$SnsLinksTable, SnsLink> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SnsLinksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _circleIdMeta =
      const VerificationMeta('circleId');
  @override
  late final GeneratedColumn<int> circleId = GeneratedColumn<int>(
      'circle_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES circles (id)'));
  static const VerificationMeta _siteTextMeta =
      const VerificationMeta('siteText');
  @override
  late final GeneratedColumn<String> siteText = GeneratedColumn<String>(
      'site_text', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _siteUrlMeta =
      const VerificationMeta('siteUrl');
  @override
  late final GeneratedColumn<String> siteUrl = GeneratedColumn<String>(
      'site_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _twitterTextMeta =
      const VerificationMeta('twitterText');
  @override
  late final GeneratedColumn<String> twitterText = GeneratedColumn<String>(
      'twitter_text', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _twitterUrlMeta =
      const VerificationMeta('twitterUrl');
  @override
  late final GeneratedColumn<String> twitterUrl = GeneratedColumn<String>(
      'twitter_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _youtubeTextMeta =
      const VerificationMeta('youtubeText');
  @override
  late final GeneratedColumn<String> youtubeText = GeneratedColumn<String>(
      'youtube_text', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _youtubeUrlMeta =
      const VerificationMeta('youtubeUrl');
  @override
  late final GeneratedColumn<String> youtubeUrl = GeneratedColumn<String>(
      'youtube_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _snsTextMeta =
      const VerificationMeta('snsText');
  @override
  late final GeneratedColumn<String> snsText = GeneratedColumn<String>(
      'sns_text', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _snsUrlMeta = const VerificationMeta('snsUrl');
  @override
  late final GeneratedColumn<String> snsUrl = GeneratedColumn<String>(
      'sns_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        circleId,
        siteText,
        siteUrl,
        twitterText,
        twitterUrl,
        youtubeText,
        youtubeUrl,
        snsText,
        snsUrl
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sns_links';
  @override
  VerificationContext validateIntegrity(Insertable<SnsLink> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('circle_id')) {
      context.handle(_circleIdMeta,
          circleId.isAcceptableOrUnknown(data['circle_id']!, _circleIdMeta));
    } else if (isInserting) {
      context.missing(_circleIdMeta);
    }
    if (data.containsKey('site_text')) {
      context.handle(_siteTextMeta,
          siteText.isAcceptableOrUnknown(data['site_text']!, _siteTextMeta));
    }
    if (data.containsKey('site_url')) {
      context.handle(_siteUrlMeta,
          siteUrl.isAcceptableOrUnknown(data['site_url']!, _siteUrlMeta));
    }
    if (data.containsKey('twitter_text')) {
      context.handle(
          _twitterTextMeta,
          twitterText.isAcceptableOrUnknown(
              data['twitter_text']!, _twitterTextMeta));
    }
    if (data.containsKey('twitter_url')) {
      context.handle(
          _twitterUrlMeta,
          twitterUrl.isAcceptableOrUnknown(
              data['twitter_url']!, _twitterUrlMeta));
    }
    if (data.containsKey('youtube_text')) {
      context.handle(
          _youtubeTextMeta,
          youtubeText.isAcceptableOrUnknown(
              data['youtube_text']!, _youtubeTextMeta));
    }
    if (data.containsKey('youtube_url')) {
      context.handle(
          _youtubeUrlMeta,
          youtubeUrl.isAcceptableOrUnknown(
              data['youtube_url']!, _youtubeUrlMeta));
    }
    if (data.containsKey('sns_text')) {
      context.handle(_snsTextMeta,
          snsText.isAcceptableOrUnknown(data['sns_text']!, _snsTextMeta));
    }
    if (data.containsKey('sns_url')) {
      context.handle(_snsUrlMeta,
          snsUrl.isAcceptableOrUnknown(data['sns_url']!, _snsUrlMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SnsLink map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SnsLink(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      circleId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}circle_id'])!,
      siteText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}site_text']),
      siteUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}site_url']),
      twitterText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}twitter_text']),
      twitterUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}twitter_url']),
      youtubeText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}youtube_text']),
      youtubeUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}youtube_url']),
      snsText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sns_text']),
      snsUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sns_url']),
    );
  }

  @override
  $SnsLinksTable createAlias(String alias) {
    return $SnsLinksTable(attachedDatabase, alias);
  }
}

class SnsLink extends DataClass implements Insertable<SnsLink> {
  final int id;
  final int circleId;
  final String? siteText;
  final String? siteUrl;
  final String? twitterText;
  final String? twitterUrl;
  final String? youtubeText;
  final String? youtubeUrl;
  final String? snsText;
  final String? snsUrl;
  const SnsLink(
      {required this.id,
      required this.circleId,
      this.siteText,
      this.siteUrl,
      this.twitterText,
      this.twitterUrl,
      this.youtubeText,
      this.youtubeUrl,
      this.snsText,
      this.snsUrl});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['circle_id'] = Variable<int>(circleId);
    if (!nullToAbsent || siteText != null) {
      map['site_text'] = Variable<String>(siteText);
    }
    if (!nullToAbsent || siteUrl != null) {
      map['site_url'] = Variable<String>(siteUrl);
    }
    if (!nullToAbsent || twitterText != null) {
      map['twitter_text'] = Variable<String>(twitterText);
    }
    if (!nullToAbsent || twitterUrl != null) {
      map['twitter_url'] = Variable<String>(twitterUrl);
    }
    if (!nullToAbsent || youtubeText != null) {
      map['youtube_text'] = Variable<String>(youtubeText);
    }
    if (!nullToAbsent || youtubeUrl != null) {
      map['youtube_url'] = Variable<String>(youtubeUrl);
    }
    if (!nullToAbsent || snsText != null) {
      map['sns_text'] = Variable<String>(snsText);
    }
    if (!nullToAbsent || snsUrl != null) {
      map['sns_url'] = Variable<String>(snsUrl);
    }
    return map;
  }

  SnsLinksCompanion toCompanion(bool nullToAbsent) {
    return SnsLinksCompanion(
      id: Value(id),
      circleId: Value(circleId),
      siteText: siteText == null && nullToAbsent
          ? const Value.absent()
          : Value(siteText),
      siteUrl: siteUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(siteUrl),
      twitterText: twitterText == null && nullToAbsent
          ? const Value.absent()
          : Value(twitterText),
      twitterUrl: twitterUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(twitterUrl),
      youtubeText: youtubeText == null && nullToAbsent
          ? const Value.absent()
          : Value(youtubeText),
      youtubeUrl: youtubeUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(youtubeUrl),
      snsText: snsText == null && nullToAbsent
          ? const Value.absent()
          : Value(snsText),
      snsUrl:
          snsUrl == null && nullToAbsent ? const Value.absent() : Value(snsUrl),
    );
  }

  factory SnsLink.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SnsLink(
      id: serializer.fromJson<int>(json['id']),
      circleId: serializer.fromJson<int>(json['circleId']),
      siteText: serializer.fromJson<String?>(json['siteText']),
      siteUrl: serializer.fromJson<String?>(json['siteUrl']),
      twitterText: serializer.fromJson<String?>(json['twitterText']),
      twitterUrl: serializer.fromJson<String?>(json['twitterUrl']),
      youtubeText: serializer.fromJson<String?>(json['youtubeText']),
      youtubeUrl: serializer.fromJson<String?>(json['youtubeUrl']),
      snsText: serializer.fromJson<String?>(json['snsText']),
      snsUrl: serializer.fromJson<String?>(json['snsUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'circleId': serializer.toJson<int>(circleId),
      'siteText': serializer.toJson<String?>(siteText),
      'siteUrl': serializer.toJson<String?>(siteUrl),
      'twitterText': serializer.toJson<String?>(twitterText),
      'twitterUrl': serializer.toJson<String?>(twitterUrl),
      'youtubeText': serializer.toJson<String?>(youtubeText),
      'youtubeUrl': serializer.toJson<String?>(youtubeUrl),
      'snsText': serializer.toJson<String?>(snsText),
      'snsUrl': serializer.toJson<String?>(snsUrl),
    };
  }

  SnsLink copyWith(
          {int? id,
          int? circleId,
          Value<String?> siteText = const Value.absent(),
          Value<String?> siteUrl = const Value.absent(),
          Value<String?> twitterText = const Value.absent(),
          Value<String?> twitterUrl = const Value.absent(),
          Value<String?> youtubeText = const Value.absent(),
          Value<String?> youtubeUrl = const Value.absent(),
          Value<String?> snsText = const Value.absent(),
          Value<String?> snsUrl = const Value.absent()}) =>
      SnsLink(
        id: id ?? this.id,
        circleId: circleId ?? this.circleId,
        siteText: siteText.present ? siteText.value : this.siteText,
        siteUrl: siteUrl.present ? siteUrl.value : this.siteUrl,
        twitterText: twitterText.present ? twitterText.value : this.twitterText,
        twitterUrl: twitterUrl.present ? twitterUrl.value : this.twitterUrl,
        youtubeText: youtubeText.present ? youtubeText.value : this.youtubeText,
        youtubeUrl: youtubeUrl.present ? youtubeUrl.value : this.youtubeUrl,
        snsText: snsText.present ? snsText.value : this.snsText,
        snsUrl: snsUrl.present ? snsUrl.value : this.snsUrl,
      );
  SnsLink copyWithCompanion(SnsLinksCompanion data) {
    return SnsLink(
      id: data.id.present ? data.id.value : this.id,
      circleId: data.circleId.present ? data.circleId.value : this.circleId,
      siteText: data.siteText.present ? data.siteText.value : this.siteText,
      siteUrl: data.siteUrl.present ? data.siteUrl.value : this.siteUrl,
      twitterText:
          data.twitterText.present ? data.twitterText.value : this.twitterText,
      twitterUrl:
          data.twitterUrl.present ? data.twitterUrl.value : this.twitterUrl,
      youtubeText:
          data.youtubeText.present ? data.youtubeText.value : this.youtubeText,
      youtubeUrl:
          data.youtubeUrl.present ? data.youtubeUrl.value : this.youtubeUrl,
      snsText: data.snsText.present ? data.snsText.value : this.snsText,
      snsUrl: data.snsUrl.present ? data.snsUrl.value : this.snsUrl,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SnsLink(')
          ..write('id: $id, ')
          ..write('circleId: $circleId, ')
          ..write('siteText: $siteText, ')
          ..write('siteUrl: $siteUrl, ')
          ..write('twitterText: $twitterText, ')
          ..write('twitterUrl: $twitterUrl, ')
          ..write('youtubeText: $youtubeText, ')
          ..write('youtubeUrl: $youtubeUrl, ')
          ..write('snsText: $snsText, ')
          ..write('snsUrl: $snsUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, circleId, siteText, siteUrl, twitterText,
      twitterUrl, youtubeText, youtubeUrl, snsText, snsUrl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SnsLink &&
          other.id == this.id &&
          other.circleId == this.circleId &&
          other.siteText == this.siteText &&
          other.siteUrl == this.siteUrl &&
          other.twitterText == this.twitterText &&
          other.twitterUrl == this.twitterUrl &&
          other.youtubeText == this.youtubeText &&
          other.youtubeUrl == this.youtubeUrl &&
          other.snsText == this.snsText &&
          other.snsUrl == this.snsUrl);
}

class SnsLinksCompanion extends UpdateCompanion<SnsLink> {
  final Value<int> id;
  final Value<int> circleId;
  final Value<String?> siteText;
  final Value<String?> siteUrl;
  final Value<String?> twitterText;
  final Value<String?> twitterUrl;
  final Value<String?> youtubeText;
  final Value<String?> youtubeUrl;
  final Value<String?> snsText;
  final Value<String?> snsUrl;
  const SnsLinksCompanion({
    this.id = const Value.absent(),
    this.circleId = const Value.absent(),
    this.siteText = const Value.absent(),
    this.siteUrl = const Value.absent(),
    this.twitterText = const Value.absent(),
    this.twitterUrl = const Value.absent(),
    this.youtubeText = const Value.absent(),
    this.youtubeUrl = const Value.absent(),
    this.snsText = const Value.absent(),
    this.snsUrl = const Value.absent(),
  });
  SnsLinksCompanion.insert({
    this.id = const Value.absent(),
    required int circleId,
    this.siteText = const Value.absent(),
    this.siteUrl = const Value.absent(),
    this.twitterText = const Value.absent(),
    this.twitterUrl = const Value.absent(),
    this.youtubeText = const Value.absent(),
    this.youtubeUrl = const Value.absent(),
    this.snsText = const Value.absent(),
    this.snsUrl = const Value.absent(),
  }) : circleId = Value(circleId);
  static Insertable<SnsLink> custom({
    Expression<int>? id,
    Expression<int>? circleId,
    Expression<String>? siteText,
    Expression<String>? siteUrl,
    Expression<String>? twitterText,
    Expression<String>? twitterUrl,
    Expression<String>? youtubeText,
    Expression<String>? youtubeUrl,
    Expression<String>? snsText,
    Expression<String>? snsUrl,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (circleId != null) 'circle_id': circleId,
      if (siteText != null) 'site_text': siteText,
      if (siteUrl != null) 'site_url': siteUrl,
      if (twitterText != null) 'twitter_text': twitterText,
      if (twitterUrl != null) 'twitter_url': twitterUrl,
      if (youtubeText != null) 'youtube_text': youtubeText,
      if (youtubeUrl != null) 'youtube_url': youtubeUrl,
      if (snsText != null) 'sns_text': snsText,
      if (snsUrl != null) 'sns_url': snsUrl,
    });
  }

  SnsLinksCompanion copyWith(
      {Value<int>? id,
      Value<int>? circleId,
      Value<String?>? siteText,
      Value<String?>? siteUrl,
      Value<String?>? twitterText,
      Value<String?>? twitterUrl,
      Value<String?>? youtubeText,
      Value<String?>? youtubeUrl,
      Value<String?>? snsText,
      Value<String?>? snsUrl}) {
    return SnsLinksCompanion(
      id: id ?? this.id,
      circleId: circleId ?? this.circleId,
      siteText: siteText ?? this.siteText,
      siteUrl: siteUrl ?? this.siteUrl,
      twitterText: twitterText ?? this.twitterText,
      twitterUrl: twitterUrl ?? this.twitterUrl,
      youtubeText: youtubeText ?? this.youtubeText,
      youtubeUrl: youtubeUrl ?? this.youtubeUrl,
      snsText: snsText ?? this.snsText,
      snsUrl: snsUrl ?? this.snsUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (circleId.present) {
      map['circle_id'] = Variable<int>(circleId.value);
    }
    if (siteText.present) {
      map['site_text'] = Variable<String>(siteText.value);
    }
    if (siteUrl.present) {
      map['site_url'] = Variable<String>(siteUrl.value);
    }
    if (twitterText.present) {
      map['twitter_text'] = Variable<String>(twitterText.value);
    }
    if (twitterUrl.present) {
      map['twitter_url'] = Variable<String>(twitterUrl.value);
    }
    if (youtubeText.present) {
      map['youtube_text'] = Variable<String>(youtubeText.value);
    }
    if (youtubeUrl.present) {
      map['youtube_url'] = Variable<String>(youtubeUrl.value);
    }
    if (snsText.present) {
      map['sns_text'] = Variable<String>(snsText.value);
    }
    if (snsUrl.present) {
      map['sns_url'] = Variable<String>(snsUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SnsLinksCompanion(')
          ..write('id: $id, ')
          ..write('circleId: $circleId, ')
          ..write('siteText: $siteText, ')
          ..write('siteUrl: $siteUrl, ')
          ..write('twitterText: $twitterText, ')
          ..write('twitterUrl: $twitterUrl, ')
          ..write('youtubeText: $youtubeText, ')
          ..write('youtubeUrl: $youtubeUrl, ')
          ..write('snsText: $snsText, ')
          ..write('snsUrl: $snsUrl')
          ..write(')'))
        .toString();
  }
}

class $RealSpsTable extends RealSps with TableInfo<$RealSpsTable, RealSp> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RealSpsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _circleIdMeta =
      const VerificationMeta('circleId');
  @override
  late final GeneratedColumn<int> circleId = GeneratedColumn<int>(
      'circle_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES circles (id)'));
  static const VerificationMeta _areaMeta = const VerificationMeta('area');
  @override
  late final GeneratedColumn<String> area = GeneratedColumn<String>(
      'area', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _noMeta = const VerificationMeta('no');
  @override
  late final GeneratedColumn<String> no = GeneratedColumn<String>(
      'no', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, circleId, area, no];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'real_sps';
  @override
  VerificationContext validateIntegrity(Insertable<RealSp> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('circle_id')) {
      context.handle(_circleIdMeta,
          circleId.isAcceptableOrUnknown(data['circle_id']!, _circleIdMeta));
    } else if (isInserting) {
      context.missing(_circleIdMeta);
    }
    if (data.containsKey('area')) {
      context.handle(
          _areaMeta, area.isAcceptableOrUnknown(data['area']!, _areaMeta));
    }
    if (data.containsKey('no')) {
      context.handle(_noMeta, no.isAcceptableOrUnknown(data['no']!, _noMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RealSp map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RealSp(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      circleId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}circle_id'])!,
      area: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}area']),
      no: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}no']),
    );
  }

  @override
  $RealSpsTable createAlias(String alias) {
    return $RealSpsTable(attachedDatabase, alias);
  }
}

class RealSp extends DataClass implements Insertable<RealSp> {
  final int id;
  final int circleId;
  final String? area;
  final String? no;
  const RealSp({required this.id, required this.circleId, this.area, this.no});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['circle_id'] = Variable<int>(circleId);
    if (!nullToAbsent || area != null) {
      map['area'] = Variable<String>(area);
    }
    if (!nullToAbsent || no != null) {
      map['no'] = Variable<String>(no);
    }
    return map;
  }

  RealSpsCompanion toCompanion(bool nullToAbsent) {
    return RealSpsCompanion(
      id: Value(id),
      circleId: Value(circleId),
      area: area == null && nullToAbsent ? const Value.absent() : Value(area),
      no: no == null && nullToAbsent ? const Value.absent() : Value(no),
    );
  }

  factory RealSp.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RealSp(
      id: serializer.fromJson<int>(json['id']),
      circleId: serializer.fromJson<int>(json['circleId']),
      area: serializer.fromJson<String?>(json['area']),
      no: serializer.fromJson<String?>(json['no']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'circleId': serializer.toJson<int>(circleId),
      'area': serializer.toJson<String?>(area),
      'no': serializer.toJson<String?>(no),
    };
  }

  RealSp copyWith(
          {int? id,
          int? circleId,
          Value<String?> area = const Value.absent(),
          Value<String?> no = const Value.absent()}) =>
      RealSp(
        id: id ?? this.id,
        circleId: circleId ?? this.circleId,
        area: area.present ? area.value : this.area,
        no: no.present ? no.value : this.no,
      );
  RealSp copyWithCompanion(RealSpsCompanion data) {
    return RealSp(
      id: data.id.present ? data.id.value : this.id,
      circleId: data.circleId.present ? data.circleId.value : this.circleId,
      area: data.area.present ? data.area.value : this.area,
      no: data.no.present ? data.no.value : this.no,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RealSp(')
          ..write('id: $id, ')
          ..write('circleId: $circleId, ')
          ..write('area: $area, ')
          ..write('no: $no')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, circleId, area, no);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RealSp &&
          other.id == this.id &&
          other.circleId == this.circleId &&
          other.area == this.area &&
          other.no == this.no);
}

class RealSpsCompanion extends UpdateCompanion<RealSp> {
  final Value<int> id;
  final Value<int> circleId;
  final Value<String?> area;
  final Value<String?> no;
  const RealSpsCompanion({
    this.id = const Value.absent(),
    this.circleId = const Value.absent(),
    this.area = const Value.absent(),
    this.no = const Value.absent(),
  });
  RealSpsCompanion.insert({
    this.id = const Value.absent(),
    required int circleId,
    this.area = const Value.absent(),
    this.no = const Value.absent(),
  }) : circleId = Value(circleId);
  static Insertable<RealSp> custom({
    Expression<int>? id,
    Expression<int>? circleId,
    Expression<String>? area,
    Expression<String>? no,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (circleId != null) 'circle_id': circleId,
      if (area != null) 'area': area,
      if (no != null) 'no': no,
    });
  }

  RealSpsCompanion copyWith(
      {Value<int>? id,
      Value<int>? circleId,
      Value<String?>? area,
      Value<String?>? no}) {
    return RealSpsCompanion(
      id: id ?? this.id,
      circleId: circleId ?? this.circleId,
      area: area ?? this.area,
      no: no ?? this.no,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (circleId.present) {
      map['circle_id'] = Variable<int>(circleId.value);
    }
    if (area.present) {
      map['area'] = Variable<String>(area.value);
    }
    if (no.present) {
      map['no'] = Variable<String>(no.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RealSpsCompanion(')
          ..write('id: $id, ')
          ..write('circleId: $circleId, ')
          ..write('area: $area, ')
          ..write('no: $no')
          ..write(')'))
        .toString();
  }
}

class $WebSpsTable extends WebSps with TableInfo<$WebSpsTable, WebSp> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WebSpsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _circleMeta = const VerificationMeta('circle');
  @override
  late final GeneratedColumn<int> circle = GeneratedColumn<int>(
      'circle', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES circles (id)'));
  static const VerificationMeta _areaMeta = const VerificationMeta('area');
  @override
  late final GeneratedColumn<String> area = GeneratedColumn<String>(
      'area', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _noMeta = const VerificationMeta('no');
  @override
  late final GeneratedColumn<String> no = GeneratedColumn<String>(
      'no', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, circle, area, no];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'web_sps';
  @override
  VerificationContext validateIntegrity(Insertable<WebSp> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('circle')) {
      context.handle(_circleMeta,
          circle.isAcceptableOrUnknown(data['circle']!, _circleMeta));
    } else if (isInserting) {
      context.missing(_circleMeta);
    }
    if (data.containsKey('area')) {
      context.handle(
          _areaMeta, area.isAcceptableOrUnknown(data['area']!, _areaMeta));
    }
    if (data.containsKey('no')) {
      context.handle(_noMeta, no.isAcceptableOrUnknown(data['no']!, _noMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WebSp map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WebSp(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      circle: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}circle'])!,
      area: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}area']),
      no: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}no']),
    );
  }

  @override
  $WebSpsTable createAlias(String alias) {
    return $WebSpsTable(attachedDatabase, alias);
  }
}

class WebSp extends DataClass implements Insertable<WebSp> {
  final int id;
  final int circle;
  final String? area;
  final String? no;
  const WebSp({required this.id, required this.circle, this.area, this.no});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['circle'] = Variable<int>(circle);
    if (!nullToAbsent || area != null) {
      map['area'] = Variable<String>(area);
    }
    if (!nullToAbsent || no != null) {
      map['no'] = Variable<String>(no);
    }
    return map;
  }

  WebSpsCompanion toCompanion(bool nullToAbsent) {
    return WebSpsCompanion(
      id: Value(id),
      circle: Value(circle),
      area: area == null && nullToAbsent ? const Value.absent() : Value(area),
      no: no == null && nullToAbsent ? const Value.absent() : Value(no),
    );
  }

  factory WebSp.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WebSp(
      id: serializer.fromJson<int>(json['id']),
      circle: serializer.fromJson<int>(json['circle']),
      area: serializer.fromJson<String?>(json['area']),
      no: serializer.fromJson<String?>(json['no']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'circle': serializer.toJson<int>(circle),
      'area': serializer.toJson<String?>(area),
      'no': serializer.toJson<String?>(no),
    };
  }

  WebSp copyWith(
          {int? id,
          int? circle,
          Value<String?> area = const Value.absent(),
          Value<String?> no = const Value.absent()}) =>
      WebSp(
        id: id ?? this.id,
        circle: circle ?? this.circle,
        area: area.present ? area.value : this.area,
        no: no.present ? no.value : this.no,
      );
  WebSp copyWithCompanion(WebSpsCompanion data) {
    return WebSp(
      id: data.id.present ? data.id.value : this.id,
      circle: data.circle.present ? data.circle.value : this.circle,
      area: data.area.present ? data.area.value : this.area,
      no: data.no.present ? data.no.value : this.no,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WebSp(')
          ..write('id: $id, ')
          ..write('circle: $circle, ')
          ..write('area: $area, ')
          ..write('no: $no')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, circle, area, no);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WebSp &&
          other.id == this.id &&
          other.circle == this.circle &&
          other.area == this.area &&
          other.no == this.no);
}

class WebSpsCompanion extends UpdateCompanion<WebSp> {
  final Value<int> id;
  final Value<int> circle;
  final Value<String?> area;
  final Value<String?> no;
  const WebSpsCompanion({
    this.id = const Value.absent(),
    this.circle = const Value.absent(),
    this.area = const Value.absent(),
    this.no = const Value.absent(),
  });
  WebSpsCompanion.insert({
    this.id = const Value.absent(),
    required int circle,
    this.area = const Value.absent(),
    this.no = const Value.absent(),
  }) : circle = Value(circle);
  static Insertable<WebSp> custom({
    Expression<int>? id,
    Expression<int>? circle,
    Expression<String>? area,
    Expression<String>? no,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (circle != null) 'circle': circle,
      if (area != null) 'area': area,
      if (no != null) 'no': no,
    });
  }

  WebSpsCompanion copyWith(
      {Value<int>? id,
      Value<int>? circle,
      Value<String?>? area,
      Value<String?>? no}) {
    return WebSpsCompanion(
      id: id ?? this.id,
      circle: circle ?? this.circle,
      area: area ?? this.area,
      no: no ?? this.no,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (circle.present) {
      map['circle'] = Variable<int>(circle.value);
    }
    if (area.present) {
      map['area'] = Variable<String>(area.value);
    }
    if (no.present) {
      map['no'] = Variable<String>(no.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WebSpsCompanion(')
          ..write('id: $id, ')
          ..write('circle: $circle, ')
          ..write('area: $area, ')
          ..write('no: $no')
          ..write(')'))
        .toString();
  }
}

class $KeywordsTable extends Keywords with TableInfo<$KeywordsTable, Keyword> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $KeywordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _circleIdMeta =
      const VerificationMeta('circleId');
  @override
  late final GeneratedColumn<int> circleId = GeneratedColumn<int>(
      'circle_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES circles (id)'));
  static const VerificationMeta _keywordTextMeta =
      const VerificationMeta('keywordText');
  @override
  late final GeneratedColumn<String> keywordText = GeneratedColumn<String>(
      'keyword_text', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneticMeta =
      const VerificationMeta('phonetic');
  @override
  late final GeneratedColumn<String> phonetic = GeneratedColumn<String>(
      'phonetic', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, circleId, keywordText, phonetic];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'keywords';
  @override
  VerificationContext validateIntegrity(Insertable<Keyword> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('circle_id')) {
      context.handle(_circleIdMeta,
          circleId.isAcceptableOrUnknown(data['circle_id']!, _circleIdMeta));
    } else if (isInserting) {
      context.missing(_circleIdMeta);
    }
    if (data.containsKey('keyword_text')) {
      context.handle(
          _keywordTextMeta,
          keywordText.isAcceptableOrUnknown(
              data['keyword_text']!, _keywordTextMeta));
    } else if (isInserting) {
      context.missing(_keywordTextMeta);
    }
    if (data.containsKey('phonetic')) {
      context.handle(_phoneticMeta,
          phonetic.isAcceptableOrUnknown(data['phonetic']!, _phoneticMeta));
    } else if (isInserting) {
      context.missing(_phoneticMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Keyword map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Keyword(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      circleId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}circle_id'])!,
      keywordText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}keyword_text'])!,
      phonetic: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phonetic'])!,
    );
  }

  @override
  $KeywordsTable createAlias(String alias) {
    return $KeywordsTable(attachedDatabase, alias);
  }
}

class Keyword extends DataClass implements Insertable<Keyword> {
  final int id;
  final int circleId;
  final String keywordText;
  final String phonetic;
  const Keyword(
      {required this.id,
      required this.circleId,
      required this.keywordText,
      required this.phonetic});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['circle_id'] = Variable<int>(circleId);
    map['keyword_text'] = Variable<String>(keywordText);
    map['phonetic'] = Variable<String>(phonetic);
    return map;
  }

  KeywordsCompanion toCompanion(bool nullToAbsent) {
    return KeywordsCompanion(
      id: Value(id),
      circleId: Value(circleId),
      keywordText: Value(keywordText),
      phonetic: Value(phonetic),
    );
  }

  factory Keyword.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Keyword(
      id: serializer.fromJson<int>(json['id']),
      circleId: serializer.fromJson<int>(json['circleId']),
      keywordText: serializer.fromJson<String>(json['keywordText']),
      phonetic: serializer.fromJson<String>(json['phonetic']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'circleId': serializer.toJson<int>(circleId),
      'keywordText': serializer.toJson<String>(keywordText),
      'phonetic': serializer.toJson<String>(phonetic),
    };
  }

  Keyword copyWith(
          {int? id, int? circleId, String? keywordText, String? phonetic}) =>
      Keyword(
        id: id ?? this.id,
        circleId: circleId ?? this.circleId,
        keywordText: keywordText ?? this.keywordText,
        phonetic: phonetic ?? this.phonetic,
      );
  Keyword copyWithCompanion(KeywordsCompanion data) {
    return Keyword(
      id: data.id.present ? data.id.value : this.id,
      circleId: data.circleId.present ? data.circleId.value : this.circleId,
      keywordText:
          data.keywordText.present ? data.keywordText.value : this.keywordText,
      phonetic: data.phonetic.present ? data.phonetic.value : this.phonetic,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Keyword(')
          ..write('id: $id, ')
          ..write('circleId: $circleId, ')
          ..write('keywordText: $keywordText, ')
          ..write('phonetic: $phonetic')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, circleId, keywordText, phonetic);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Keyword &&
          other.id == this.id &&
          other.circleId == this.circleId &&
          other.keywordText == this.keywordText &&
          other.phonetic == this.phonetic);
}

class KeywordsCompanion extends UpdateCompanion<Keyword> {
  final Value<int> id;
  final Value<int> circleId;
  final Value<String> keywordText;
  final Value<String> phonetic;
  const KeywordsCompanion({
    this.id = const Value.absent(),
    this.circleId = const Value.absent(),
    this.keywordText = const Value.absent(),
    this.phonetic = const Value.absent(),
  });
  KeywordsCompanion.insert({
    this.id = const Value.absent(),
    required int circleId,
    required String keywordText,
    required String phonetic,
  })  : circleId = Value(circleId),
        keywordText = Value(keywordText),
        phonetic = Value(phonetic);
  static Insertable<Keyword> custom({
    Expression<int>? id,
    Expression<int>? circleId,
    Expression<String>? keywordText,
    Expression<String>? phonetic,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (circleId != null) 'circle_id': circleId,
      if (keywordText != null) 'keyword_text': keywordText,
      if (phonetic != null) 'phonetic': phonetic,
    });
  }

  KeywordsCompanion copyWith(
      {Value<int>? id,
      Value<int>? circleId,
      Value<String>? keywordText,
      Value<String>? phonetic}) {
    return KeywordsCompanion(
      id: id ?? this.id,
      circleId: circleId ?? this.circleId,
      keywordText: keywordText ?? this.keywordText,
      phonetic: phonetic ?? this.phonetic,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (circleId.present) {
      map['circle_id'] = Variable<int>(circleId.value);
    }
    if (keywordText.present) {
      map['keyword_text'] = Variable<String>(keywordText.value);
    }
    if (phonetic.present) {
      map['phonetic'] = Variable<String>(phonetic.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('KeywordsCompanion(')
          ..write('id: $id, ')
          ..write('circleId: $circleId, ')
          ..write('keywordText: $keywordText, ')
          ..write('phonetic: $phonetic')
          ..write(')'))
        .toString();
  }
}

class $WishesTable extends Wishes with TableInfo<$WishesTable, Wish> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WishesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _isFavoriteMeta =
      const VerificationMeta('isFavorite');
  @override
  late final GeneratedColumn<bool> isFavorite = GeneratedColumn<bool>(
      'is_favorite', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_favorite" IN (0, 1)) REFERENCES circles (is_favorite)'));
  static const VerificationMeta _doneMeta = const VerificationMeta('done');
  @override
  late final GeneratedColumn<bool> done = GeneratedColumn<bool>(
      'done', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("done" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _spaceMeta = const VerificationMeta('space');
  @override
  late final GeneratedColumn<String> space = GeneratedColumn<String>(
      'space', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _circleIdMeta =
      const VerificationMeta('circleId');
  @override
  late final GeneratedColumn<int> circleId = GeneratedColumn<int>(
      'circle_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES circles (id)'));
  static const VerificationMeta _circleNameMeta =
      const VerificationMeta('circleName');
  @override
  late final GeneratedColumn<String> circleName = GeneratedColumn<String>(
      'circle_name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES circles (name)'));
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<int> amount = GeneratedColumn<int>(
      'amount', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _memoMeta = const VerificationMeta('memo');
  @override
  late final GeneratedColumn<String> memo = GeneratedColumn<String>(
      'memo', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, isFavorite, done, space, circleId, circleName, amount, memo];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'wishes';
  @override
  VerificationContext validateIntegrity(Insertable<Wish> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('is_favorite')) {
      context.handle(
          _isFavoriteMeta,
          isFavorite.isAcceptableOrUnknown(
              data['is_favorite']!, _isFavoriteMeta));
    } else if (isInserting) {
      context.missing(_isFavoriteMeta);
    }
    if (data.containsKey('done')) {
      context.handle(
          _doneMeta, done.isAcceptableOrUnknown(data['done']!, _doneMeta));
    }
    if (data.containsKey('space')) {
      context.handle(
          _spaceMeta, space.isAcceptableOrUnknown(data['space']!, _spaceMeta));
    }
    if (data.containsKey('circle_id')) {
      context.handle(_circleIdMeta,
          circleId.isAcceptableOrUnknown(data['circle_id']!, _circleIdMeta));
    } else if (isInserting) {
      context.missing(_circleIdMeta);
    }
    if (data.containsKey('circle_name')) {
      context.handle(
          _circleNameMeta,
          circleName.isAcceptableOrUnknown(
              data['circle_name']!, _circleNameMeta));
    } else if (isInserting) {
      context.missing(_circleNameMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    }
    if (data.containsKey('memo')) {
      context.handle(
          _memoMeta, memo.isAcceptableOrUnknown(data['memo']!, _memoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Wish map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Wish(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      isFavorite: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_favorite'])!,
      done: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}done'])!,
      space: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}space']),
      circleId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}circle_id'])!,
      circleName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}circle_name'])!,
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}amount'])!,
      memo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}memo']),
    );
  }

  @override
  $WishesTable createAlias(String alias) {
    return $WishesTable(attachedDatabase, alias);
  }
}

class Wish extends DataClass implements Insertable<Wish> {
  final int id;
  final bool isFavorite;
  final bool done;
  final String? space;
  final int circleId;
  final String circleName;
  final int amount;
  final String? memo;
  const Wish(
      {required this.id,
      required this.isFavorite,
      required this.done,
      this.space,
      required this.circleId,
      required this.circleName,
      required this.amount,
      this.memo});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['is_favorite'] = Variable<bool>(isFavorite);
    map['done'] = Variable<bool>(done);
    if (!nullToAbsent || space != null) {
      map['space'] = Variable<String>(space);
    }
    map['circle_id'] = Variable<int>(circleId);
    map['circle_name'] = Variable<String>(circleName);
    map['amount'] = Variable<int>(amount);
    if (!nullToAbsent || memo != null) {
      map['memo'] = Variable<String>(memo);
    }
    return map;
  }

  WishesCompanion toCompanion(bool nullToAbsent) {
    return WishesCompanion(
      id: Value(id),
      isFavorite: Value(isFavorite),
      done: Value(done),
      space:
          space == null && nullToAbsent ? const Value.absent() : Value(space),
      circleId: Value(circleId),
      circleName: Value(circleName),
      amount: Value(amount),
      memo: memo == null && nullToAbsent ? const Value.absent() : Value(memo),
    );
  }

  factory Wish.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Wish(
      id: serializer.fromJson<int>(json['id']),
      isFavorite: serializer.fromJson<bool>(json['isFavorite']),
      done: serializer.fromJson<bool>(json['done']),
      space: serializer.fromJson<String?>(json['space']),
      circleId: serializer.fromJson<int>(json['circleId']),
      circleName: serializer.fromJson<String>(json['circleName']),
      amount: serializer.fromJson<int>(json['amount']),
      memo: serializer.fromJson<String?>(json['memo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'isFavorite': serializer.toJson<bool>(isFavorite),
      'done': serializer.toJson<bool>(done),
      'space': serializer.toJson<String?>(space),
      'circleId': serializer.toJson<int>(circleId),
      'circleName': serializer.toJson<String>(circleName),
      'amount': serializer.toJson<int>(amount),
      'memo': serializer.toJson<String?>(memo),
    };
  }

  Wish copyWith(
          {int? id,
          bool? isFavorite,
          bool? done,
          Value<String?> space = const Value.absent(),
          int? circleId,
          String? circleName,
          int? amount,
          Value<String?> memo = const Value.absent()}) =>
      Wish(
        id: id ?? this.id,
        isFavorite: isFavorite ?? this.isFavorite,
        done: done ?? this.done,
        space: space.present ? space.value : this.space,
        circleId: circleId ?? this.circleId,
        circleName: circleName ?? this.circleName,
        amount: amount ?? this.amount,
        memo: memo.present ? memo.value : this.memo,
      );
  Wish copyWithCompanion(WishesCompanion data) {
    return Wish(
      id: data.id.present ? data.id.value : this.id,
      isFavorite:
          data.isFavorite.present ? data.isFavorite.value : this.isFavorite,
      done: data.done.present ? data.done.value : this.done,
      space: data.space.present ? data.space.value : this.space,
      circleId: data.circleId.present ? data.circleId.value : this.circleId,
      circleName:
          data.circleName.present ? data.circleName.value : this.circleName,
      amount: data.amount.present ? data.amount.value : this.amount,
      memo: data.memo.present ? data.memo.value : this.memo,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Wish(')
          ..write('id: $id, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('done: $done, ')
          ..write('space: $space, ')
          ..write('circleId: $circleId, ')
          ..write('circleName: $circleName, ')
          ..write('amount: $amount, ')
          ..write('memo: $memo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, isFavorite, done, space, circleId, circleName, amount, memo);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Wish &&
          other.id == this.id &&
          other.isFavorite == this.isFavorite &&
          other.done == this.done &&
          other.space == this.space &&
          other.circleId == this.circleId &&
          other.circleName == this.circleName &&
          other.amount == this.amount &&
          other.memo == this.memo);
}

class WishesCompanion extends UpdateCompanion<Wish> {
  final Value<int> id;
  final Value<bool> isFavorite;
  final Value<bool> done;
  final Value<String?> space;
  final Value<int> circleId;
  final Value<String> circleName;
  final Value<int> amount;
  final Value<String?> memo;
  const WishesCompanion({
    this.id = const Value.absent(),
    this.isFavorite = const Value.absent(),
    this.done = const Value.absent(),
    this.space = const Value.absent(),
    this.circleId = const Value.absent(),
    this.circleName = const Value.absent(),
    this.amount = const Value.absent(),
    this.memo = const Value.absent(),
  });
  WishesCompanion.insert({
    this.id = const Value.absent(),
    required bool isFavorite,
    this.done = const Value.absent(),
    this.space = const Value.absent(),
    required int circleId,
    required String circleName,
    this.amount = const Value.absent(),
    this.memo = const Value.absent(),
  })  : isFavorite = Value(isFavorite),
        circleId = Value(circleId),
        circleName = Value(circleName);
  static Insertable<Wish> custom({
    Expression<int>? id,
    Expression<bool>? isFavorite,
    Expression<bool>? done,
    Expression<String>? space,
    Expression<int>? circleId,
    Expression<String>? circleName,
    Expression<int>? amount,
    Expression<String>? memo,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (isFavorite != null) 'is_favorite': isFavorite,
      if (done != null) 'done': done,
      if (space != null) 'space': space,
      if (circleId != null) 'circle_id': circleId,
      if (circleName != null) 'circle_name': circleName,
      if (amount != null) 'amount': amount,
      if (memo != null) 'memo': memo,
    });
  }

  WishesCompanion copyWith(
      {Value<int>? id,
      Value<bool>? isFavorite,
      Value<bool>? done,
      Value<String?>? space,
      Value<int>? circleId,
      Value<String>? circleName,
      Value<int>? amount,
      Value<String?>? memo}) {
    return WishesCompanion(
      id: id ?? this.id,
      isFavorite: isFavorite ?? this.isFavorite,
      done: done ?? this.done,
      space: space ?? this.space,
      circleId: circleId ?? this.circleId,
      circleName: circleName ?? this.circleName,
      amount: amount ?? this.amount,
      memo: memo ?? this.memo,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (isFavorite.present) {
      map['is_favorite'] = Variable<bool>(isFavorite.value);
    }
    if (done.present) {
      map['done'] = Variable<bool>(done.value);
    }
    if (space.present) {
      map['space'] = Variable<String>(space.value);
    }
    if (circleId.present) {
      map['circle_id'] = Variable<int>(circleId.value);
    }
    if (circleName.present) {
      map['circle_name'] = Variable<String>(circleName.value);
    }
    if (amount.present) {
      map['amount'] = Variable<int>(amount.value);
    }
    if (memo.present) {
      map['memo'] = Variable<String>(memo.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WishesCompanion(')
          ..write('id: $id, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('done: $done, ')
          ..write('space: $space, ')
          ..write('circleId: $circleId, ')
          ..write('circleName: $circleName, ')
          ..write('amount: $amount, ')
          ..write('memo: $memo')
          ..write(')'))
        .toString();
  }
}

abstract class _$CircleDatabase extends GeneratedDatabase {
  _$CircleDatabase(QueryExecutor e) : super(e);
  $CircleDatabaseManager get managers => $CircleDatabaseManager(this);
  late final $CirclesTable circles = $CirclesTable(this);
  late final $SnsLinksTable snsLinks = $SnsLinksTable(this);
  late final $RealSpsTable realSps = $RealSpsTable(this);
  late final $WebSpsTable webSps = $WebSpsTable(this);
  late final $KeywordsTable keywords = $KeywordsTable(this);
  late final $WishesTable wishes = $WishesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [circles, snsLinks, realSps, webSps, keywords, wishes];
}

typedef $$CirclesTableCreateCompanionBuilder = CirclesCompanion Function({
  required int id,
  required String name,
  required String phonetic,
  required String genre,
  required int spaceSize,
  required bool adult,
  required String prText,
  Value<bool> isFavorite,
  Value<int> rowid,
});
typedef $$CirclesTableUpdateCompanionBuilder = CirclesCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String> phonetic,
  Value<String> genre,
  Value<int> spaceSize,
  Value<bool> adult,
  Value<String> prText,
  Value<bool> isFavorite,
  Value<int> rowid,
});

final class $$CirclesTableReferences
    extends BaseReferences<_$CircleDatabase, $CirclesTable, Circle> {
  $$CirclesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$SnsLinksTable, List<SnsLink>> _snsLinksRefsTable(
          _$CircleDatabase db) =>
      MultiTypedResultKey.fromTable(db.snsLinks,
          aliasName: $_aliasNameGenerator(db.circles.id, db.snsLinks.circleId));

  $$SnsLinksTableProcessedTableManager get snsLinksRefs {
    final manager = $$SnsLinksTableTableManager($_db, $_db.snsLinks)
        .filter((f) => f.circleId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_snsLinksRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$RealSpsTable, List<RealSp>> _realSpsRefsTable(
          _$CircleDatabase db) =>
      MultiTypedResultKey.fromTable(db.realSps,
          aliasName: $_aliasNameGenerator(db.circles.id, db.realSps.circleId));

  $$RealSpsTableProcessedTableManager get realSpsRefs {
    final manager = $$RealSpsTableTableManager($_db, $_db.realSps)
        .filter((f) => f.circleId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_realSpsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$WebSpsTable, List<WebSp>> _webSpsRefsTable(
          _$CircleDatabase db) =>
      MultiTypedResultKey.fromTable(db.webSps,
          aliasName: $_aliasNameGenerator(db.circles.id, db.webSps.circle));

  $$WebSpsTableProcessedTableManager get webSpsRefs {
    final manager = $$WebSpsTableTableManager($_db, $_db.webSps)
        .filter((f) => f.circle.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_webSpsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$KeywordsTable, List<Keyword>> _keywordsRefsTable(
          _$CircleDatabase db) =>
      MultiTypedResultKey.fromTable(db.keywords,
          aliasName: $_aliasNameGenerator(db.circles.id, db.keywords.circleId));

  $$KeywordsTableProcessedTableManager get keywordsRefs {
    final manager = $$KeywordsTableTableManager($_db, $_db.keywords)
        .filter((f) => f.circleId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_keywordsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$CirclesTableFilterComposer
    extends FilterComposer<_$CircleDatabase, $CirclesTable> {
  $$CirclesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get phonetic => $state.composableBuilder(
      column: $state.table.phonetic,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get genre => $state.composableBuilder(
      column: $state.table.genre,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get spaceSize => $state.composableBuilder(
      column: $state.table.spaceSize,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get adult => $state.composableBuilder(
      column: $state.table.adult,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get prText => $state.composableBuilder(
      column: $state.table.prText,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isFavorite => $state.composableBuilder(
      column: $state.table.isFavorite,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter snsLinksRefs(
      ComposableFilter Function($$SnsLinksTableFilterComposer f) f) {
    final $$SnsLinksTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.snsLinks,
        getReferencedColumn: (t) => t.circleId,
        builder: (joinBuilder, parentComposers) =>
            $$SnsLinksTableFilterComposer(ComposerState(
                $state.db, $state.db.snsLinks, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter realSpsRefs(
      ComposableFilter Function($$RealSpsTableFilterComposer f) f) {
    final $$RealSpsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.realSps,
        getReferencedColumn: (t) => t.circleId,
        builder: (joinBuilder, parentComposers) => $$RealSpsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.realSps, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter webSpsRefs(
      ComposableFilter Function($$WebSpsTableFilterComposer f) f) {
    final $$WebSpsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.webSps,
        getReferencedColumn: (t) => t.circle,
        builder: (joinBuilder, parentComposers) => $$WebSpsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.webSps, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter keywordsRefs(
      ComposableFilter Function($$KeywordsTableFilterComposer f) f) {
    final $$KeywordsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.keywords,
        getReferencedColumn: (t) => t.circleId,
        builder: (joinBuilder, parentComposers) =>
            $$KeywordsTableFilterComposer(ComposerState(
                $state.db, $state.db.keywords, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$CirclesTableOrderingComposer
    extends OrderingComposer<_$CircleDatabase, $CirclesTable> {
  $$CirclesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get phonetic => $state.composableBuilder(
      column: $state.table.phonetic,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get genre => $state.composableBuilder(
      column: $state.table.genre,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get spaceSize => $state.composableBuilder(
      column: $state.table.spaceSize,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get adult => $state.composableBuilder(
      column: $state.table.adult,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get prText => $state.composableBuilder(
      column: $state.table.prText,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isFavorite => $state.composableBuilder(
      column: $state.table.isFavorite,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$CirclesTableTableManager extends RootTableManager<
    _$CircleDatabase,
    $CirclesTable,
    Circle,
    $$CirclesTableFilterComposer,
    $$CirclesTableOrderingComposer,
    $$CirclesTableCreateCompanionBuilder,
    $$CirclesTableUpdateCompanionBuilder,
    (Circle, $$CirclesTableReferences),
    Circle,
    PrefetchHooks Function(
        {bool snsLinksRefs,
        bool realSpsRefs,
        bool webSpsRefs,
        bool keywordsRefs})> {
  $$CirclesTableTableManager(_$CircleDatabase db, $CirclesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$CirclesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$CirclesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> phonetic = const Value.absent(),
            Value<String> genre = const Value.absent(),
            Value<int> spaceSize = const Value.absent(),
            Value<bool> adult = const Value.absent(),
            Value<String> prText = const Value.absent(),
            Value<bool> isFavorite = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CirclesCompanion(
            id: id,
            name: name,
            phonetic: phonetic,
            genre: genre,
            spaceSize: spaceSize,
            adult: adult,
            prText: prText,
            isFavorite: isFavorite,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            required String name,
            required String phonetic,
            required String genre,
            required int spaceSize,
            required bool adult,
            required String prText,
            Value<bool> isFavorite = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CirclesCompanion.insert(
            id: id,
            name: name,
            phonetic: phonetic,
            genre: genre,
            spaceSize: spaceSize,
            adult: adult,
            prText: prText,
            isFavorite: isFavorite,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$CirclesTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {snsLinksRefs = false,
              realSpsRefs = false,
              webSpsRefs = false,
              keywordsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (snsLinksRefs) db.snsLinks,
                if (realSpsRefs) db.realSps,
                if (webSpsRefs) db.webSps,
                if (keywordsRefs) db.keywords
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (snsLinksRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$CirclesTableReferences._snsLinksRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$CirclesTableReferences(db, table, p0)
                                .snsLinksRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.circleId == item.id),
                        typedResults: items),
                  if (realSpsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$CirclesTableReferences._realSpsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$CirclesTableReferences(db, table, p0).realSpsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.circleId == item.id),
                        typedResults: items),
                  if (webSpsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$CirclesTableReferences._webSpsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$CirclesTableReferences(db, table, p0).webSpsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.circle == item.id),
                        typedResults: items),
                  if (keywordsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$CirclesTableReferences._keywordsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$CirclesTableReferences(db, table, p0)
                                .keywordsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.circleId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$CirclesTableProcessedTableManager = ProcessedTableManager<
    _$CircleDatabase,
    $CirclesTable,
    Circle,
    $$CirclesTableFilterComposer,
    $$CirclesTableOrderingComposer,
    $$CirclesTableCreateCompanionBuilder,
    $$CirclesTableUpdateCompanionBuilder,
    (Circle, $$CirclesTableReferences),
    Circle,
    PrefetchHooks Function(
        {bool snsLinksRefs,
        bool realSpsRefs,
        bool webSpsRefs,
        bool keywordsRefs})>;
typedef $$SnsLinksTableCreateCompanionBuilder = SnsLinksCompanion Function({
  Value<int> id,
  required int circleId,
  Value<String?> siteText,
  Value<String?> siteUrl,
  Value<String?> twitterText,
  Value<String?> twitterUrl,
  Value<String?> youtubeText,
  Value<String?> youtubeUrl,
  Value<String?> snsText,
  Value<String?> snsUrl,
});
typedef $$SnsLinksTableUpdateCompanionBuilder = SnsLinksCompanion Function({
  Value<int> id,
  Value<int> circleId,
  Value<String?> siteText,
  Value<String?> siteUrl,
  Value<String?> twitterText,
  Value<String?> twitterUrl,
  Value<String?> youtubeText,
  Value<String?> youtubeUrl,
  Value<String?> snsText,
  Value<String?> snsUrl,
});

final class $$SnsLinksTableReferences
    extends BaseReferences<_$CircleDatabase, $SnsLinksTable, SnsLink> {
  $$SnsLinksTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $CirclesTable _circleIdTable(_$CircleDatabase db) => db.circles
      .createAlias($_aliasNameGenerator(db.snsLinks.circleId, db.circles.id));

  $$CirclesTableProcessedTableManager? get circleId {
    if ($_item.circleId == null) return null;
    final manager = $$CirclesTableTableManager($_db, $_db.circles)
        .filter((f) => f.id($_item.circleId!));
    final item = $_typedResult.readTableOrNull(_circleIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$SnsLinksTableFilterComposer
    extends FilterComposer<_$CircleDatabase, $SnsLinksTable> {
  $$SnsLinksTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get siteText => $state.composableBuilder(
      column: $state.table.siteText,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get siteUrl => $state.composableBuilder(
      column: $state.table.siteUrl,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get twitterText => $state.composableBuilder(
      column: $state.table.twitterText,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get twitterUrl => $state.composableBuilder(
      column: $state.table.twitterUrl,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get youtubeText => $state.composableBuilder(
      column: $state.table.youtubeText,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get youtubeUrl => $state.composableBuilder(
      column: $state.table.youtubeUrl,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get snsText => $state.composableBuilder(
      column: $state.table.snsText,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get snsUrl => $state.composableBuilder(
      column: $state.table.snsUrl,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$CirclesTableFilterComposer get circleId {
    final $$CirclesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.circleId,
        referencedTable: $state.db.circles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$CirclesTableFilterComposer(
            ComposerState(
                $state.db, $state.db.circles, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$SnsLinksTableOrderingComposer
    extends OrderingComposer<_$CircleDatabase, $SnsLinksTable> {
  $$SnsLinksTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get siteText => $state.composableBuilder(
      column: $state.table.siteText,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get siteUrl => $state.composableBuilder(
      column: $state.table.siteUrl,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get twitterText => $state.composableBuilder(
      column: $state.table.twitterText,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get twitterUrl => $state.composableBuilder(
      column: $state.table.twitterUrl,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get youtubeText => $state.composableBuilder(
      column: $state.table.youtubeText,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get youtubeUrl => $state.composableBuilder(
      column: $state.table.youtubeUrl,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get snsText => $state.composableBuilder(
      column: $state.table.snsText,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get snsUrl => $state.composableBuilder(
      column: $state.table.snsUrl,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$CirclesTableOrderingComposer get circleId {
    final $$CirclesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.circleId,
        referencedTable: $state.db.circles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$CirclesTableOrderingComposer(ComposerState(
                $state.db, $state.db.circles, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$SnsLinksTableTableManager extends RootTableManager<
    _$CircleDatabase,
    $SnsLinksTable,
    SnsLink,
    $$SnsLinksTableFilterComposer,
    $$SnsLinksTableOrderingComposer,
    $$SnsLinksTableCreateCompanionBuilder,
    $$SnsLinksTableUpdateCompanionBuilder,
    (SnsLink, $$SnsLinksTableReferences),
    SnsLink,
    PrefetchHooks Function({bool circleId})> {
  $$SnsLinksTableTableManager(_$CircleDatabase db, $SnsLinksTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SnsLinksTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SnsLinksTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> circleId = const Value.absent(),
            Value<String?> siteText = const Value.absent(),
            Value<String?> siteUrl = const Value.absent(),
            Value<String?> twitterText = const Value.absent(),
            Value<String?> twitterUrl = const Value.absent(),
            Value<String?> youtubeText = const Value.absent(),
            Value<String?> youtubeUrl = const Value.absent(),
            Value<String?> snsText = const Value.absent(),
            Value<String?> snsUrl = const Value.absent(),
          }) =>
              SnsLinksCompanion(
            id: id,
            circleId: circleId,
            siteText: siteText,
            siteUrl: siteUrl,
            twitterText: twitterText,
            twitterUrl: twitterUrl,
            youtubeText: youtubeText,
            youtubeUrl: youtubeUrl,
            snsText: snsText,
            snsUrl: snsUrl,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int circleId,
            Value<String?> siteText = const Value.absent(),
            Value<String?> siteUrl = const Value.absent(),
            Value<String?> twitterText = const Value.absent(),
            Value<String?> twitterUrl = const Value.absent(),
            Value<String?> youtubeText = const Value.absent(),
            Value<String?> youtubeUrl = const Value.absent(),
            Value<String?> snsText = const Value.absent(),
            Value<String?> snsUrl = const Value.absent(),
          }) =>
              SnsLinksCompanion.insert(
            id: id,
            circleId: circleId,
            siteText: siteText,
            siteUrl: siteUrl,
            twitterText: twitterText,
            twitterUrl: twitterUrl,
            youtubeText: youtubeText,
            youtubeUrl: youtubeUrl,
            snsText: snsText,
            snsUrl: snsUrl,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$SnsLinksTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({circleId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (circleId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.circleId,
                    referencedTable:
                        $$SnsLinksTableReferences._circleIdTable(db),
                    referencedColumn:
                        $$SnsLinksTableReferences._circleIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$SnsLinksTableProcessedTableManager = ProcessedTableManager<
    _$CircleDatabase,
    $SnsLinksTable,
    SnsLink,
    $$SnsLinksTableFilterComposer,
    $$SnsLinksTableOrderingComposer,
    $$SnsLinksTableCreateCompanionBuilder,
    $$SnsLinksTableUpdateCompanionBuilder,
    (SnsLink, $$SnsLinksTableReferences),
    SnsLink,
    PrefetchHooks Function({bool circleId})>;
typedef $$RealSpsTableCreateCompanionBuilder = RealSpsCompanion Function({
  Value<int> id,
  required int circleId,
  Value<String?> area,
  Value<String?> no,
});
typedef $$RealSpsTableUpdateCompanionBuilder = RealSpsCompanion Function({
  Value<int> id,
  Value<int> circleId,
  Value<String?> area,
  Value<String?> no,
});

final class $$RealSpsTableReferences
    extends BaseReferences<_$CircleDatabase, $RealSpsTable, RealSp> {
  $$RealSpsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $CirclesTable _circleIdTable(_$CircleDatabase db) => db.circles
      .createAlias($_aliasNameGenerator(db.realSps.circleId, db.circles.id));

  $$CirclesTableProcessedTableManager? get circleId {
    if ($_item.circleId == null) return null;
    final manager = $$CirclesTableTableManager($_db, $_db.circles)
        .filter((f) => f.id($_item.circleId!));
    final item = $_typedResult.readTableOrNull(_circleIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$RealSpsTableFilterComposer
    extends FilterComposer<_$CircleDatabase, $RealSpsTable> {
  $$RealSpsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get area => $state.composableBuilder(
      column: $state.table.area,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get no => $state.composableBuilder(
      column: $state.table.no,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$CirclesTableFilterComposer get circleId {
    final $$CirclesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.circleId,
        referencedTable: $state.db.circles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$CirclesTableFilterComposer(
            ComposerState(
                $state.db, $state.db.circles, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$RealSpsTableOrderingComposer
    extends OrderingComposer<_$CircleDatabase, $RealSpsTable> {
  $$RealSpsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get area => $state.composableBuilder(
      column: $state.table.area,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get no => $state.composableBuilder(
      column: $state.table.no,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$CirclesTableOrderingComposer get circleId {
    final $$CirclesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.circleId,
        referencedTable: $state.db.circles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$CirclesTableOrderingComposer(ComposerState(
                $state.db, $state.db.circles, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$RealSpsTableTableManager extends RootTableManager<
    _$CircleDatabase,
    $RealSpsTable,
    RealSp,
    $$RealSpsTableFilterComposer,
    $$RealSpsTableOrderingComposer,
    $$RealSpsTableCreateCompanionBuilder,
    $$RealSpsTableUpdateCompanionBuilder,
    (RealSp, $$RealSpsTableReferences),
    RealSp,
    PrefetchHooks Function({bool circleId})> {
  $$RealSpsTableTableManager(_$CircleDatabase db, $RealSpsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$RealSpsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$RealSpsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> circleId = const Value.absent(),
            Value<String?> area = const Value.absent(),
            Value<String?> no = const Value.absent(),
          }) =>
              RealSpsCompanion(
            id: id,
            circleId: circleId,
            area: area,
            no: no,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int circleId,
            Value<String?> area = const Value.absent(),
            Value<String?> no = const Value.absent(),
          }) =>
              RealSpsCompanion.insert(
            id: id,
            circleId: circleId,
            area: area,
            no: no,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$RealSpsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({circleId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (circleId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.circleId,
                    referencedTable:
                        $$RealSpsTableReferences._circleIdTable(db),
                    referencedColumn:
                        $$RealSpsTableReferences._circleIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$RealSpsTableProcessedTableManager = ProcessedTableManager<
    _$CircleDatabase,
    $RealSpsTable,
    RealSp,
    $$RealSpsTableFilterComposer,
    $$RealSpsTableOrderingComposer,
    $$RealSpsTableCreateCompanionBuilder,
    $$RealSpsTableUpdateCompanionBuilder,
    (RealSp, $$RealSpsTableReferences),
    RealSp,
    PrefetchHooks Function({bool circleId})>;
typedef $$WebSpsTableCreateCompanionBuilder = WebSpsCompanion Function({
  Value<int> id,
  required int circle,
  Value<String?> area,
  Value<String?> no,
});
typedef $$WebSpsTableUpdateCompanionBuilder = WebSpsCompanion Function({
  Value<int> id,
  Value<int> circle,
  Value<String?> area,
  Value<String?> no,
});

final class $$WebSpsTableReferences
    extends BaseReferences<_$CircleDatabase, $WebSpsTable, WebSp> {
  $$WebSpsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $CirclesTable _circleTable(_$CircleDatabase db) => db.circles
      .createAlias($_aliasNameGenerator(db.webSps.circle, db.circles.id));

  $$CirclesTableProcessedTableManager? get circle {
    if ($_item.circle == null) return null;
    final manager = $$CirclesTableTableManager($_db, $_db.circles)
        .filter((f) => f.id($_item.circle!));
    final item = $_typedResult.readTableOrNull(_circleTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$WebSpsTableFilterComposer
    extends FilterComposer<_$CircleDatabase, $WebSpsTable> {
  $$WebSpsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get area => $state.composableBuilder(
      column: $state.table.area,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get no => $state.composableBuilder(
      column: $state.table.no,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$CirclesTableFilterComposer get circle {
    final $$CirclesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.circle,
        referencedTable: $state.db.circles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$CirclesTableFilterComposer(
            ComposerState(
                $state.db, $state.db.circles, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$WebSpsTableOrderingComposer
    extends OrderingComposer<_$CircleDatabase, $WebSpsTable> {
  $$WebSpsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get area => $state.composableBuilder(
      column: $state.table.area,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get no => $state.composableBuilder(
      column: $state.table.no,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$CirclesTableOrderingComposer get circle {
    final $$CirclesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.circle,
        referencedTable: $state.db.circles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$CirclesTableOrderingComposer(ComposerState(
                $state.db, $state.db.circles, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$WebSpsTableTableManager extends RootTableManager<
    _$CircleDatabase,
    $WebSpsTable,
    WebSp,
    $$WebSpsTableFilterComposer,
    $$WebSpsTableOrderingComposer,
    $$WebSpsTableCreateCompanionBuilder,
    $$WebSpsTableUpdateCompanionBuilder,
    (WebSp, $$WebSpsTableReferences),
    WebSp,
    PrefetchHooks Function({bool circle})> {
  $$WebSpsTableTableManager(_$CircleDatabase db, $WebSpsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$WebSpsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$WebSpsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> circle = const Value.absent(),
            Value<String?> area = const Value.absent(),
            Value<String?> no = const Value.absent(),
          }) =>
              WebSpsCompanion(
            id: id,
            circle: circle,
            area: area,
            no: no,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int circle,
            Value<String?> area = const Value.absent(),
            Value<String?> no = const Value.absent(),
          }) =>
              WebSpsCompanion.insert(
            id: id,
            circle: circle,
            area: area,
            no: no,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$WebSpsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({circle = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (circle) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.circle,
                    referencedTable: $$WebSpsTableReferences._circleTable(db),
                    referencedColumn:
                        $$WebSpsTableReferences._circleTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$WebSpsTableProcessedTableManager = ProcessedTableManager<
    _$CircleDatabase,
    $WebSpsTable,
    WebSp,
    $$WebSpsTableFilterComposer,
    $$WebSpsTableOrderingComposer,
    $$WebSpsTableCreateCompanionBuilder,
    $$WebSpsTableUpdateCompanionBuilder,
    (WebSp, $$WebSpsTableReferences),
    WebSp,
    PrefetchHooks Function({bool circle})>;
typedef $$KeywordsTableCreateCompanionBuilder = KeywordsCompanion Function({
  Value<int> id,
  required int circleId,
  required String keywordText,
  required String phonetic,
});
typedef $$KeywordsTableUpdateCompanionBuilder = KeywordsCompanion Function({
  Value<int> id,
  Value<int> circleId,
  Value<String> keywordText,
  Value<String> phonetic,
});

final class $$KeywordsTableReferences
    extends BaseReferences<_$CircleDatabase, $KeywordsTable, Keyword> {
  $$KeywordsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $CirclesTable _circleIdTable(_$CircleDatabase db) => db.circles
      .createAlias($_aliasNameGenerator(db.keywords.circleId, db.circles.id));

  $$CirclesTableProcessedTableManager? get circleId {
    if ($_item.circleId == null) return null;
    final manager = $$CirclesTableTableManager($_db, $_db.circles)
        .filter((f) => f.id($_item.circleId!));
    final item = $_typedResult.readTableOrNull(_circleIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$KeywordsTableFilterComposer
    extends FilterComposer<_$CircleDatabase, $KeywordsTable> {
  $$KeywordsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get keywordText => $state.composableBuilder(
      column: $state.table.keywordText,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get phonetic => $state.composableBuilder(
      column: $state.table.phonetic,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$CirclesTableFilterComposer get circleId {
    final $$CirclesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.circleId,
        referencedTable: $state.db.circles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$CirclesTableFilterComposer(
            ComposerState(
                $state.db, $state.db.circles, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$KeywordsTableOrderingComposer
    extends OrderingComposer<_$CircleDatabase, $KeywordsTable> {
  $$KeywordsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get keywordText => $state.composableBuilder(
      column: $state.table.keywordText,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get phonetic => $state.composableBuilder(
      column: $state.table.phonetic,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$CirclesTableOrderingComposer get circleId {
    final $$CirclesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.circleId,
        referencedTable: $state.db.circles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$CirclesTableOrderingComposer(ComposerState(
                $state.db, $state.db.circles, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$KeywordsTableTableManager extends RootTableManager<
    _$CircleDatabase,
    $KeywordsTable,
    Keyword,
    $$KeywordsTableFilterComposer,
    $$KeywordsTableOrderingComposer,
    $$KeywordsTableCreateCompanionBuilder,
    $$KeywordsTableUpdateCompanionBuilder,
    (Keyword, $$KeywordsTableReferences),
    Keyword,
    PrefetchHooks Function({bool circleId})> {
  $$KeywordsTableTableManager(_$CircleDatabase db, $KeywordsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$KeywordsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$KeywordsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> circleId = const Value.absent(),
            Value<String> keywordText = const Value.absent(),
            Value<String> phonetic = const Value.absent(),
          }) =>
              KeywordsCompanion(
            id: id,
            circleId: circleId,
            keywordText: keywordText,
            phonetic: phonetic,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int circleId,
            required String keywordText,
            required String phonetic,
          }) =>
              KeywordsCompanion.insert(
            id: id,
            circleId: circleId,
            keywordText: keywordText,
            phonetic: phonetic,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$KeywordsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({circleId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (circleId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.circleId,
                    referencedTable:
                        $$KeywordsTableReferences._circleIdTable(db),
                    referencedColumn:
                        $$KeywordsTableReferences._circleIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$KeywordsTableProcessedTableManager = ProcessedTableManager<
    _$CircleDatabase,
    $KeywordsTable,
    Keyword,
    $$KeywordsTableFilterComposer,
    $$KeywordsTableOrderingComposer,
    $$KeywordsTableCreateCompanionBuilder,
    $$KeywordsTableUpdateCompanionBuilder,
    (Keyword, $$KeywordsTableReferences),
    Keyword,
    PrefetchHooks Function({bool circleId})>;
typedef $$WishesTableCreateCompanionBuilder = WishesCompanion Function({
  Value<int> id,
  required bool isFavorite,
  Value<bool> done,
  Value<String?> space,
  required int circleId,
  required String circleName,
  Value<int> amount,
  Value<String?> memo,
});
typedef $$WishesTableUpdateCompanionBuilder = WishesCompanion Function({
  Value<int> id,
  Value<bool> isFavorite,
  Value<bool> done,
  Value<String?> space,
  Value<int> circleId,
  Value<String> circleName,
  Value<int> amount,
  Value<String?> memo,
});

final class $$WishesTableReferences
    extends BaseReferences<_$CircleDatabase, $WishesTable, Wish> {
  $$WishesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $CirclesTable _isFavoriteTable(_$CircleDatabase db) =>
      db.circles.createAlias(
          $_aliasNameGenerator(db.wishes.isFavorite, db.circles.isFavorite));

  $$CirclesTableProcessedTableManager? get isFavorite {
    if ($_item.isFavorite == null) return null;
    final manager = $$CirclesTableTableManager($_db, $_db.circles)
        .filter((f) => f.isFavorite($_item.isFavorite!));
    final item = $_typedResult.readTableOrNull(_isFavoriteTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $CirclesTable _circleIdTable(_$CircleDatabase db) => db.circles
      .createAlias($_aliasNameGenerator(db.wishes.circleId, db.circles.id));

  $$CirclesTableProcessedTableManager? get circleId {
    if ($_item.circleId == null) return null;
    final manager = $$CirclesTableTableManager($_db, $_db.circles)
        .filter((f) => f.id($_item.circleId!));
    final item = $_typedResult.readTableOrNull(_circleIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $CirclesTable _circleNameTable(_$CircleDatabase db) => db.circles
      .createAlias($_aliasNameGenerator(db.wishes.circleName, db.circles.name));

  $$CirclesTableProcessedTableManager? get circleName {
    if ($_item.circleName == null) return null;
    final manager = $$CirclesTableTableManager($_db, $_db.circles)
        .filter((f) => f.name($_item.circleName!));
    final item = $_typedResult.readTableOrNull(_circleNameTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$WishesTableFilterComposer
    extends FilterComposer<_$CircleDatabase, $WishesTable> {
  $$WishesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get done => $state.composableBuilder(
      column: $state.table.done,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get space => $state.composableBuilder(
      column: $state.table.space,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get amount => $state.composableBuilder(
      column: $state.table.amount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get memo => $state.composableBuilder(
      column: $state.table.memo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$CirclesTableFilterComposer get isFavorite {
    final $$CirclesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.isFavorite,
        referencedTable: $state.db.circles,
        getReferencedColumn: (t) => t.isFavorite,
        builder: (joinBuilder, parentComposers) => $$CirclesTableFilterComposer(
            ComposerState(
                $state.db, $state.db.circles, joinBuilder, parentComposers)));
    return composer;
  }

  $$CirclesTableFilterComposer get circleId {
    final $$CirclesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.circleId,
        referencedTable: $state.db.circles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$CirclesTableFilterComposer(
            ComposerState(
                $state.db, $state.db.circles, joinBuilder, parentComposers)));
    return composer;
  }

  $$CirclesTableFilterComposer get circleName {
    final $$CirclesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.circleName,
        referencedTable: $state.db.circles,
        getReferencedColumn: (t) => t.name,
        builder: (joinBuilder, parentComposers) => $$CirclesTableFilterComposer(
            ComposerState(
                $state.db, $state.db.circles, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$WishesTableOrderingComposer
    extends OrderingComposer<_$CircleDatabase, $WishesTable> {
  $$WishesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get done => $state.composableBuilder(
      column: $state.table.done,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get space => $state.composableBuilder(
      column: $state.table.space,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get amount => $state.composableBuilder(
      column: $state.table.amount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get memo => $state.composableBuilder(
      column: $state.table.memo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$CirclesTableOrderingComposer get isFavorite {
    final $$CirclesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.isFavorite,
        referencedTable: $state.db.circles,
        getReferencedColumn: (t) => t.isFavorite,
        builder: (joinBuilder, parentComposers) =>
            $$CirclesTableOrderingComposer(ComposerState(
                $state.db, $state.db.circles, joinBuilder, parentComposers)));
    return composer;
  }

  $$CirclesTableOrderingComposer get circleId {
    final $$CirclesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.circleId,
        referencedTable: $state.db.circles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$CirclesTableOrderingComposer(ComposerState(
                $state.db, $state.db.circles, joinBuilder, parentComposers)));
    return composer;
  }

  $$CirclesTableOrderingComposer get circleName {
    final $$CirclesTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.circleName,
        referencedTable: $state.db.circles,
        getReferencedColumn: (t) => t.name,
        builder: (joinBuilder, parentComposers) =>
            $$CirclesTableOrderingComposer(ComposerState(
                $state.db, $state.db.circles, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$WishesTableTableManager extends RootTableManager<
    _$CircleDatabase,
    $WishesTable,
    Wish,
    $$WishesTableFilterComposer,
    $$WishesTableOrderingComposer,
    $$WishesTableCreateCompanionBuilder,
    $$WishesTableUpdateCompanionBuilder,
    (Wish, $$WishesTableReferences),
    Wish,
    PrefetchHooks Function({bool isFavorite, bool circleId, bool circleName})> {
  $$WishesTableTableManager(_$CircleDatabase db, $WishesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$WishesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$WishesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<bool> isFavorite = const Value.absent(),
            Value<bool> done = const Value.absent(),
            Value<String?> space = const Value.absent(),
            Value<int> circleId = const Value.absent(),
            Value<String> circleName = const Value.absent(),
            Value<int> amount = const Value.absent(),
            Value<String?> memo = const Value.absent(),
          }) =>
              WishesCompanion(
            id: id,
            isFavorite: isFavorite,
            done: done,
            space: space,
            circleId: circleId,
            circleName: circleName,
            amount: amount,
            memo: memo,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required bool isFavorite,
            Value<bool> done = const Value.absent(),
            Value<String?> space = const Value.absent(),
            required int circleId,
            required String circleName,
            Value<int> amount = const Value.absent(),
            Value<String?> memo = const Value.absent(),
          }) =>
              WishesCompanion.insert(
            id: id,
            isFavorite: isFavorite,
            done: done,
            space: space,
            circleId: circleId,
            circleName: circleName,
            amount: amount,
            memo: memo,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$WishesTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {isFavorite = false, circleId = false, circleName = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (isFavorite) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.isFavorite,
                    referencedTable:
                        $$WishesTableReferences._isFavoriteTable(db),
                    referencedColumn:
                        $$WishesTableReferences._isFavoriteTable(db).isFavorite,
                  ) as T;
                }
                if (circleId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.circleId,
                    referencedTable: $$WishesTableReferences._circleIdTable(db),
                    referencedColumn:
                        $$WishesTableReferences._circleIdTable(db).id,
                  ) as T;
                }
                if (circleName) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.circleName,
                    referencedTable:
                        $$WishesTableReferences._circleNameTable(db),
                    referencedColumn:
                        $$WishesTableReferences._circleNameTable(db).name,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$WishesTableProcessedTableManager = ProcessedTableManager<
    _$CircleDatabase,
    $WishesTable,
    Wish,
    $$WishesTableFilterComposer,
    $$WishesTableOrderingComposer,
    $$WishesTableCreateCompanionBuilder,
    $$WishesTableUpdateCompanionBuilder,
    (Wish, $$WishesTableReferences),
    Wish,
    PrefetchHooks Function({bool isFavorite, bool circleId, bool circleName})>;

class $CircleDatabaseManager {
  final _$CircleDatabase _db;
  $CircleDatabaseManager(this._db);
  $$CirclesTableTableManager get circles =>
      $$CirclesTableTableManager(_db, _db.circles);
  $$SnsLinksTableTableManager get snsLinks =>
      $$SnsLinksTableTableManager(_db, _db.snsLinks);
  $$RealSpsTableTableManager get realSps =>
      $$RealSpsTableTableManager(_db, _db.realSps);
  $$WebSpsTableTableManager get webSps =>
      $$WebSpsTableTableManager(_db, _db.webSps);
  $$KeywordsTableTableManager get keywords =>
      $$KeywordsTableTableManager(_db, _db.keywords);
  $$WishesTableTableManager get wishes =>
      $$WishesTableTableManager(_db, _db.wishes);
}
