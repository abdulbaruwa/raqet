// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_entity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlayerEntity> _$playerEntitySerializer =
    new _$PlayerEntitySerializer();

class _$PlayerEntitySerializer implements StructuredSerializer<PlayerEntity> {
  @override
  final Iterable<Type> types = const [PlayerEntity, _$PlayerEntity];
  @override
  final String wireName = 'PlayerEntity';

  @override
  Iterable<Object> serialize(Serializers serializers, PlayerEntity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'gender',
      serializers.serialize(object.gender,
          specifiedType: const FullType(String)),
      'ltaNumber',
      serializers.serialize(object.ltaNumber,
          specifiedType: const FullType(int)),
      'ltaRanking',
      serializers.serialize(object.ltaRanking,
          specifiedType: const FullType(int)),
      'ltaRating',
      serializers.serialize(object.ltaRating,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(AddressEntity)),
      'authenticationId',
      serializers.serialize(object.authenticationId,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'isAdmin',
      serializers.serialize(object.isAdmin,
          specifiedType: const FullType(bool)),
      'deviceToken',
      serializers.serialize(object.deviceToken,
          specifiedType: const FullType(String)),
      'devicePlatform',
      serializers.serialize(object.devicePlatform,
          specifiedType: const FullType(String)),
      'notificationRegistrationId',
      serializers.serialize(object.notificationRegistrationId,
          specifiedType: const FullType(String)),
      'profileImageUrl',
      serializers.serialize(object.profileImageUrl,
          specifiedType: const FullType(String)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
      'usePublicProfileImage',
      serializers.serialize(object.usePublicProfileImage,
          specifiedType: const FullType(bool)),
      'rankingInfos',
      serializers.serialize(object.rankingInfos,
          specifiedType: const FullType(
              BuiltList, const [const FullType(RankingInfoEntity)])),
      'defaultSearchPreference',
      serializers.serialize(object.defaultSearchPreference,
          specifiedType: const FullType(SearchPreferenceEntity)),
      'cosmosEntityName',
      serializers.serialize(object.cosmosEntityName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PlayerEntity deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlayerEntityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ltaNumber':
          result.ltaNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'ltaRanking':
          result.ltaRanking = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'ltaRating':
          result.ltaRating = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(AddressEntity)) as AddressEntity);
          break;
        case 'authenticationId':
          result.authenticationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isAdmin':
          result.isAdmin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'deviceToken':
          result.deviceToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'devicePlatform':
          result.devicePlatform = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notificationRegistrationId':
          result.notificationRegistrationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profileImageUrl':
          result.profileImageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'usePublicProfileImage':
          result.usePublicProfileImage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'rankingInfos':
          result.rankingInfos.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RankingInfoEntity)]))
              as BuiltList<dynamic>);
          break;
        case 'defaultSearchPreference':
          result.defaultSearchPreference.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SearchPreferenceEntity))
              as SearchPreferenceEntity);
          break;
        case 'cosmosEntityName':
          result.cosmosEntityName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PlayerEntity extends PlayerEntity {
  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String gender;
  @override
  final int ltaNumber;
  @override
  final int ltaRanking;
  @override
  final String ltaRating;
  @override
  final AddressEntity address;
  @override
  final String authenticationId;
  @override
  final String email;
  @override
  final bool isAdmin;
  @override
  final String deviceToken;
  @override
  final String devicePlatform;
  @override
  final String notificationRegistrationId;
  @override
  final String profileImageUrl;
  @override
  final String userId;
  @override
  final bool usePublicProfileImage;
  @override
  final BuiltList<RankingInfoEntity> rankingInfos;
  @override
  final SearchPreferenceEntity defaultSearchPreference;
  @override
  final String cosmosEntityName;

  factory _$PlayerEntity([void Function(PlayerEntityBuilder) updates]) =>
      (new PlayerEntityBuilder()..update(updates)).build();

  _$PlayerEntity._(
      {this.id,
      this.firstName,
      this.lastName,
      this.gender,
      this.ltaNumber,
      this.ltaRanking,
      this.ltaRating,
      this.address,
      this.authenticationId,
      this.email,
      this.isAdmin,
      this.deviceToken,
      this.devicePlatform,
      this.notificationRegistrationId,
      this.profileImageUrl,
      this.userId,
      this.usePublicProfileImage,
      this.rankingInfos,
      this.defaultSearchPreference,
      this.cosmosEntityName})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('PlayerEntity', 'id');
    }
    if (firstName == null) {
      throw new BuiltValueNullFieldError('PlayerEntity', 'firstName');
    }
    if (lastName == null) {
      throw new BuiltValueNullFieldError('PlayerEntity', 'lastName');
    }
    if (gender == null) {
      throw new BuiltValueNullFieldError('PlayerEntity', 'gender');
    }
    if (ltaNumber == null) {
      throw new BuiltValueNullFieldError('PlayerEntity', 'ltaNumber');
    }
    if (ltaRanking == null) {
      throw new BuiltValueNullFieldError('PlayerEntity', 'ltaRanking');
    }
    if (ltaRating == null) {
      throw new BuiltValueNullFieldError('PlayerEntity', 'ltaRating');
    }
    if (address == null) {
      throw new BuiltValueNullFieldError('PlayerEntity', 'address');
    }
    if (authenticationId == null) {
      throw new BuiltValueNullFieldError('PlayerEntity', 'authenticationId');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('PlayerEntity', 'email');
    }
    if (isAdmin == null) {
      throw new BuiltValueNullFieldError('PlayerEntity', 'isAdmin');
    }
    if (deviceToken == null) {
      throw new BuiltValueNullFieldError('PlayerEntity', 'deviceToken');
    }
    if (devicePlatform == null) {
      throw new BuiltValueNullFieldError('PlayerEntity', 'devicePlatform');
    }
    if (notificationRegistrationId == null) {
      throw new BuiltValueNullFieldError(
          'PlayerEntity', 'notificationRegistrationId');
    }
    if (profileImageUrl == null) {
      throw new BuiltValueNullFieldError('PlayerEntity', 'profileImageUrl');
    }
    if (userId == null) {
      throw new BuiltValueNullFieldError('PlayerEntity', 'userId');
    }
    if (usePublicProfileImage == null) {
      throw new BuiltValueNullFieldError(
          'PlayerEntity', 'usePublicProfileImage');
    }
    if (rankingInfos == null) {
      throw new BuiltValueNullFieldError('PlayerEntity', 'rankingInfos');
    }
    if (defaultSearchPreference == null) {
      throw new BuiltValueNullFieldError(
          'PlayerEntity', 'defaultSearchPreference');
    }
    if (cosmosEntityName == null) {
      throw new BuiltValueNullFieldError('PlayerEntity', 'cosmosEntityName');
    }
  }

  @override
  PlayerEntity rebuild(void Function(PlayerEntityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlayerEntityBuilder toBuilder() => new PlayerEntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlayerEntity &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        gender == other.gender &&
        ltaNumber == other.ltaNumber &&
        ltaRanking == other.ltaRanking &&
        ltaRating == other.ltaRating &&
        address == other.address &&
        authenticationId == other.authenticationId &&
        email == other.email &&
        isAdmin == other.isAdmin &&
        deviceToken == other.deviceToken &&
        devicePlatform == other.devicePlatform &&
        notificationRegistrationId == other.notificationRegistrationId &&
        profileImageUrl == other.profileImageUrl &&
        userId == other.userId &&
        usePublicProfileImage == other.usePublicProfileImage &&
        rankingInfos == other.rankingInfos &&
        defaultSearchPreference == other.defaultSearchPreference &&
        cosmosEntityName == other.cosmosEntityName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc(0, id.hashCode),
                                                                                firstName.hashCode),
                                                                            lastName.hashCode),
                                                                        gender.hashCode),
                                                                    ltaNumber.hashCode),
                                                                ltaRanking.hashCode),
                                                            ltaRating.hashCode),
                                                        address.hashCode),
                                                    authenticationId.hashCode),
                                                email.hashCode),
                                            isAdmin.hashCode),
                                        deviceToken.hashCode),
                                    devicePlatform.hashCode),
                                notificationRegistrationId.hashCode),
                            profileImageUrl.hashCode),
                        userId.hashCode),
                    usePublicProfileImage.hashCode),
                rankingInfos.hashCode),
            defaultSearchPreference.hashCode),
        cosmosEntityName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PlayerEntity')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('gender', gender)
          ..add('ltaNumber', ltaNumber)
          ..add('ltaRanking', ltaRanking)
          ..add('ltaRating', ltaRating)
          ..add('address', address)
          ..add('authenticationId', authenticationId)
          ..add('email', email)
          ..add('isAdmin', isAdmin)
          ..add('deviceToken', deviceToken)
          ..add('devicePlatform', devicePlatform)
          ..add('notificationRegistrationId', notificationRegistrationId)
          ..add('profileImageUrl', profileImageUrl)
          ..add('userId', userId)
          ..add('usePublicProfileImage', usePublicProfileImage)
          ..add('rankingInfos', rankingInfos)
          ..add('defaultSearchPreference', defaultSearchPreference)
          ..add('cosmosEntityName', cosmosEntityName))
        .toString();
  }
}

class PlayerEntityBuilder
    implements Builder<PlayerEntity, PlayerEntityBuilder> {
  _$PlayerEntity _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  int _ltaNumber;
  int get ltaNumber => _$this._ltaNumber;
  set ltaNumber(int ltaNumber) => _$this._ltaNumber = ltaNumber;

  int _ltaRanking;
  int get ltaRanking => _$this._ltaRanking;
  set ltaRanking(int ltaRanking) => _$this._ltaRanking = ltaRanking;

  String _ltaRating;
  String get ltaRating => _$this._ltaRating;
  set ltaRating(String ltaRating) => _$this._ltaRating = ltaRating;

  AddressEntityBuilder _address;
  AddressEntityBuilder get address =>
      _$this._address ??= new AddressEntityBuilder();
  set address(AddressEntityBuilder address) => _$this._address = address;

  String _authenticationId;
  String get authenticationId => _$this._authenticationId;
  set authenticationId(String authenticationId) =>
      _$this._authenticationId = authenticationId;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  bool _isAdmin;
  bool get isAdmin => _$this._isAdmin;
  set isAdmin(bool isAdmin) => _$this._isAdmin = isAdmin;

  String _deviceToken;
  String get deviceToken => _$this._deviceToken;
  set deviceToken(String deviceToken) => _$this._deviceToken = deviceToken;

  String _devicePlatform;
  String get devicePlatform => _$this._devicePlatform;
  set devicePlatform(String devicePlatform) =>
      _$this._devicePlatform = devicePlatform;

  String _notificationRegistrationId;
  String get notificationRegistrationId => _$this._notificationRegistrationId;
  set notificationRegistrationId(String notificationRegistrationId) =>
      _$this._notificationRegistrationId = notificationRegistrationId;

  String _profileImageUrl;
  String get profileImageUrl => _$this._profileImageUrl;
  set profileImageUrl(String profileImageUrl) =>
      _$this._profileImageUrl = profileImageUrl;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  bool _usePublicProfileImage;
  bool get usePublicProfileImage => _$this._usePublicProfileImage;
  set usePublicProfileImage(bool usePublicProfileImage) =>
      _$this._usePublicProfileImage = usePublicProfileImage;

  ListBuilder<RankingInfoEntity> _rankingInfos;
  ListBuilder<RankingInfoEntity> get rankingInfos =>
      _$this._rankingInfos ??= new ListBuilder<RankingInfoEntity>();
  set rankingInfos(ListBuilder<RankingInfoEntity> rankingInfos) =>
      _$this._rankingInfos = rankingInfos;

  SearchPreferenceEntityBuilder _defaultSearchPreference;
  SearchPreferenceEntityBuilder get defaultSearchPreference =>
      _$this._defaultSearchPreference ??= new SearchPreferenceEntityBuilder();
  set defaultSearchPreference(
          SearchPreferenceEntityBuilder defaultSearchPreference) =>
      _$this._defaultSearchPreference = defaultSearchPreference;

  String _cosmosEntityName;
  String get cosmosEntityName => _$this._cosmosEntityName;
  set cosmosEntityName(String cosmosEntityName) =>
      _$this._cosmosEntityName = cosmosEntityName;

  PlayerEntityBuilder();

  PlayerEntityBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _firstName = _$v.firstName;
      _lastName = _$v.lastName;
      _gender = _$v.gender;
      _ltaNumber = _$v.ltaNumber;
      _ltaRanking = _$v.ltaRanking;
      _ltaRating = _$v.ltaRating;
      _address = _$v.address?.toBuilder();
      _authenticationId = _$v.authenticationId;
      _email = _$v.email;
      _isAdmin = _$v.isAdmin;
      _deviceToken = _$v.deviceToken;
      _devicePlatform = _$v.devicePlatform;
      _notificationRegistrationId = _$v.notificationRegistrationId;
      _profileImageUrl = _$v.profileImageUrl;
      _userId = _$v.userId;
      _usePublicProfileImage = _$v.usePublicProfileImage;
      _rankingInfos = _$v.rankingInfos?.toBuilder();
      _defaultSearchPreference = _$v.defaultSearchPreference?.toBuilder();
      _cosmosEntityName = _$v.cosmosEntityName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlayerEntity other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PlayerEntity;
  }

  @override
  void update(void Function(PlayerEntityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PlayerEntity build() {
    _$PlayerEntity _$result;
    try {
      _$result = _$v ??
          new _$PlayerEntity._(
              id: id,
              firstName: firstName,
              lastName: lastName,
              gender: gender,
              ltaNumber: ltaNumber,
              ltaRanking: ltaRanking,
              ltaRating: ltaRating,
              address: address.build(),
              authenticationId: authenticationId,
              email: email,
              isAdmin: isAdmin,
              deviceToken: deviceToken,
              devicePlatform: devicePlatform,
              notificationRegistrationId: notificationRegistrationId,
              profileImageUrl: profileImageUrl,
              userId: userId,
              usePublicProfileImage: usePublicProfileImage,
              rankingInfos: rankingInfos.build(),
              defaultSearchPreference: defaultSearchPreference.build(),
              cosmosEntityName: cosmosEntityName);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'address';
        address.build();

        _$failedField = 'rankingInfos';
        rankingInfos.build();
        _$failedField = 'defaultSearchPreference';
        defaultSearchPreference.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PlayerEntity', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
