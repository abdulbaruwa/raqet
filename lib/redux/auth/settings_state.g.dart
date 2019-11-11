// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SettingsState> _$settingsStateSerializer =
    new _$SettingsStateSerializer();

class _$SettingsStateSerializer implements StructuredSerializer<SettingsState> {
  @override
  final Iterable<Type> types = const [SettingsState, _$SettingsState];
  @override
  final String wireName = 'SettingsState';

  @override
  Iterable<Object> serialize(Serializers serializers, SettingsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'refreshToken',
      serializers.serialize(object.refreshToken,
          specifiedType: const FullType(String)),
      'accessToken',
      serializers.serialize(object.accessToken,
          specifiedType: const FullType(String)),
      'deviceToken',
      serializers.serialize(object.deviceToken,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'photoUrl',
      serializers.serialize(object.photoUrl,
          specifiedType: const FullType(String)),
      'registrationComplete',
      serializers.serialize(object.registrationComplete,
          specifiedType: const FullType(bool)),
      'signedIn',
      serializers.serialize(object.signedIn,
          specifiedType: const FullType(bool)),
      'playerId',
      serializers.serialize(object.playerId,
          specifiedType: const FullType(String)),
      'azureAuthToken',
      serializers.serialize(object.azureAuthToken,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SettingsState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SettingsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'refreshToken':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'accessToken':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'deviceToken':
          result.deviceToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'registrationComplete':
          result.registrationComplete = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'signedIn':
          result.signedIn = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'playerId':
          result.playerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'azureAuthToken':
          result.azureAuthToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SettingsState extends SettingsState {
  @override
  final String refreshToken;
  @override
  final String accessToken;
  @override
  final String deviceToken;
  @override
  final String email;
  @override
  final String photoUrl;
  @override
  final bool registrationComplete;
  @override
  final bool signedIn;
  @override
  final String playerId;
  @override
  final String azureAuthToken;
  @override
  final String name;

  factory _$SettingsState([void Function(SettingsStateBuilder) updates]) =>
      (new SettingsStateBuilder()..update(updates)).build();

  _$SettingsState._(
      {this.refreshToken,
      this.accessToken,
      this.deviceToken,
      this.email,
      this.photoUrl,
      this.registrationComplete,
      this.signedIn,
      this.playerId,
      this.azureAuthToken,
      this.name})
      : super._() {
    if (refreshToken == null) {
      throw new BuiltValueNullFieldError('SettingsState', 'refreshToken');
    }
    if (accessToken == null) {
      throw new BuiltValueNullFieldError('SettingsState', 'accessToken');
    }
    if (deviceToken == null) {
      throw new BuiltValueNullFieldError('SettingsState', 'deviceToken');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('SettingsState', 'email');
    }
    if (photoUrl == null) {
      throw new BuiltValueNullFieldError('SettingsState', 'photoUrl');
    }
    if (registrationComplete == null) {
      throw new BuiltValueNullFieldError(
          'SettingsState', 'registrationComplete');
    }
    if (signedIn == null) {
      throw new BuiltValueNullFieldError('SettingsState', 'signedIn');
    }
    if (playerId == null) {
      throw new BuiltValueNullFieldError('SettingsState', 'playerId');
    }
    if (azureAuthToken == null) {
      throw new BuiltValueNullFieldError('SettingsState', 'azureAuthToken');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('SettingsState', 'name');
    }
  }

  @override
  SettingsState rebuild(void Function(SettingsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingsStateBuilder toBuilder() => new SettingsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingsState &&
        refreshToken == other.refreshToken &&
        accessToken == other.accessToken &&
        deviceToken == other.deviceToken &&
        email == other.email &&
        photoUrl == other.photoUrl &&
        registrationComplete == other.registrationComplete &&
        signedIn == other.signedIn &&
        playerId == other.playerId &&
        azureAuthToken == other.azureAuthToken &&
        name == other.name;
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
                                    $jc($jc(0, refreshToken.hashCode),
                                        accessToken.hashCode),
                                    deviceToken.hashCode),
                                email.hashCode),
                            photoUrl.hashCode),
                        registrationComplete.hashCode),
                    signedIn.hashCode),
                playerId.hashCode),
            azureAuthToken.hashCode),
        name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SettingsState')
          ..add('refreshToken', refreshToken)
          ..add('accessToken', accessToken)
          ..add('deviceToken', deviceToken)
          ..add('email', email)
          ..add('photoUrl', photoUrl)
          ..add('registrationComplete', registrationComplete)
          ..add('signedIn', signedIn)
          ..add('playerId', playerId)
          ..add('azureAuthToken', azureAuthToken)
          ..add('name', name))
        .toString();
  }
}

class SettingsStateBuilder
    implements Builder<SettingsState, SettingsStateBuilder> {
  _$SettingsState _$v;

  String _refreshToken;
  String get refreshToken => _$this._refreshToken;
  set refreshToken(String refreshToken) => _$this._refreshToken = refreshToken;

  String _accessToken;
  String get accessToken => _$this._accessToken;
  set accessToken(String accessToken) => _$this._accessToken = accessToken;

  String _deviceToken;
  String get deviceToken => _$this._deviceToken;
  set deviceToken(String deviceToken) => _$this._deviceToken = deviceToken;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  bool _registrationComplete;
  bool get registrationComplete => _$this._registrationComplete;
  set registrationComplete(bool registrationComplete) =>
      _$this._registrationComplete = registrationComplete;

  bool _signedIn;
  bool get signedIn => _$this._signedIn;
  set signedIn(bool signedIn) => _$this._signedIn = signedIn;

  String _playerId;
  String get playerId => _$this._playerId;
  set playerId(String playerId) => _$this._playerId = playerId;

  String _azureAuthToken;
  String get azureAuthToken => _$this._azureAuthToken;
  set azureAuthToken(String azureAuthToken) =>
      _$this._azureAuthToken = azureAuthToken;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  SettingsStateBuilder();

  SettingsStateBuilder get _$this {
    if (_$v != null) {
      _refreshToken = _$v.refreshToken;
      _accessToken = _$v.accessToken;
      _deviceToken = _$v.deviceToken;
      _email = _$v.email;
      _photoUrl = _$v.photoUrl;
      _registrationComplete = _$v.registrationComplete;
      _signedIn = _$v.signedIn;
      _playerId = _$v.playerId;
      _azureAuthToken = _$v.azureAuthToken;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SettingsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SettingsState;
  }

  @override
  void update(void Function(SettingsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SettingsState build() {
    final _$result = _$v ??
        new _$SettingsState._(
            refreshToken: refreshToken,
            accessToken: accessToken,
            deviceToken: deviceToken,
            email: email,
            photoUrl: photoUrl,
            registrationComplete: registrationComplete,
            signedIn: signedIn,
            playerId: playerId,
            azureAuthToken: azureAuthToken,
            name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
