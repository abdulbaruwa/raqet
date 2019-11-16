// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'settingsState',
      serializers.serialize(object.settingsState,
          specifiedType: const FullType(SettingsState)),
      'isLoading',
      serializers.serialize(object.isLoading,
          specifiedType: const FullType(bool)),
      'isSaving',
      serializers.serialize(object.isSaving,
          specifiedType: const FullType(bool)),
      'isTesting',
      serializers.serialize(object.isTesting,
          specifiedType: const FullType(bool)),
      'activeTab',
      serializers.serialize(object.activeTab,
          specifiedType: const FullType(AppTab)),
      'player',
      serializers.serialize(object.player,
          specifiedType: const FullType(PlayerEntity)),
      'matchResultInfos',
      serializers.serialize(object.matchResultInfos,
          specifiedType: const FullType(
              BuiltList, const [const FullType(MatchResultInfoEntity)])),
    ];

    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'settingsState':
          result.settingsState.replace(serializers.deserialize(value,
              specifiedType: const FullType(SettingsState)) as SettingsState);
          break;
        case 'isLoading':
          result.isLoading = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isSaving':
          result.isSaving = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isTesting':
          result.isTesting = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'activeTab':
          result.activeTab = serializers.deserialize(value,
              specifiedType: const FullType(AppTab)) as AppTab;
          break;
        case 'player':
          result.player.replace(serializers.deserialize(value,
              specifiedType: const FullType(PlayerEntity)) as PlayerEntity);
          break;
        case 'matchResultInfos':
          result.matchResultInfos.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MatchResultInfoEntity)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final SettingsState settingsState;
  @override
  final bool isLoading;
  @override
  final bool isSaving;
  @override
  final bool isTesting;
  @override
  final AppTab activeTab;
  @override
  final PlayerEntity player;
  @override
  final BuiltList<MatchResultInfoEntity> matchResultInfos;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {this.settingsState,
      this.isLoading,
      this.isSaving,
      this.isTesting,
      this.activeTab,
      this.player,
      this.matchResultInfos})
      : super._() {
    if (settingsState == null) {
      throw new BuiltValueNullFieldError('AppState', 'settingsState');
    }
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('AppState', 'isLoading');
    }
    if (isSaving == null) {
      throw new BuiltValueNullFieldError('AppState', 'isSaving');
    }
    if (isTesting == null) {
      throw new BuiltValueNullFieldError('AppState', 'isTesting');
    }
    if (activeTab == null) {
      throw new BuiltValueNullFieldError('AppState', 'activeTab');
    }
    if (player == null) {
      throw new BuiltValueNullFieldError('AppState', 'player');
    }
    if (matchResultInfos == null) {
      throw new BuiltValueNullFieldError('AppState', 'matchResultInfos');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        settingsState == other.settingsState &&
        isLoading == other.isLoading &&
        isSaving == other.isSaving &&
        isTesting == other.isTesting &&
        activeTab == other.activeTab &&
        player == other.player &&
        matchResultInfos == other.matchResultInfos;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, settingsState.hashCode), isLoading.hashCode),
                        isSaving.hashCode),
                    isTesting.hashCode),
                activeTab.hashCode),
            player.hashCode),
        matchResultInfos.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('settingsState', settingsState)
          ..add('isLoading', isLoading)
          ..add('isSaving', isSaving)
          ..add('isTesting', isTesting)
          ..add('activeTab', activeTab)
          ..add('player', player)
          ..add('matchResultInfos', matchResultInfos))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  SettingsStateBuilder _settingsState;
  SettingsStateBuilder get settingsState =>
      _$this._settingsState ??= new SettingsStateBuilder();
  set settingsState(SettingsStateBuilder settingsState) =>
      _$this._settingsState = settingsState;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  bool _isSaving;
  bool get isSaving => _$this._isSaving;
  set isSaving(bool isSaving) => _$this._isSaving = isSaving;

  bool _isTesting;
  bool get isTesting => _$this._isTesting;
  set isTesting(bool isTesting) => _$this._isTesting = isTesting;

  AppTab _activeTab;
  AppTab get activeTab => _$this._activeTab;
  set activeTab(AppTab activeTab) => _$this._activeTab = activeTab;

  PlayerEntityBuilder _player;
  PlayerEntityBuilder get player =>
      _$this._player ??= new PlayerEntityBuilder();
  set player(PlayerEntityBuilder player) => _$this._player = player;

  ListBuilder<MatchResultInfoEntity> _matchResultInfos;
  ListBuilder<MatchResultInfoEntity> get matchResultInfos =>
      _$this._matchResultInfos ??= new ListBuilder<MatchResultInfoEntity>();
  set matchResultInfos(ListBuilder<MatchResultInfoEntity> matchResultInfos) =>
      _$this._matchResultInfos = matchResultInfos;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _settingsState = _$v.settingsState?.toBuilder();
      _isLoading = _$v.isLoading;
      _isSaving = _$v.isSaving;
      _isTesting = _$v.isTesting;
      _activeTab = _$v.activeTab;
      _player = _$v.player?.toBuilder();
      _matchResultInfos = _$v.matchResultInfos?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              settingsState: settingsState.build(),
              isLoading: isLoading,
              isSaving: isSaving,
              isTesting: isTesting,
              activeTab: activeTab,
              player: player.build(),
              matchResultInfos: matchResultInfos.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'settingsState';
        settingsState.build();

        _$failedField = 'player';
        player.build();
        _$failedField = 'matchResultInfos';
        matchResultInfos.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
