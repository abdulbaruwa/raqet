// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DashboardState> _$dashboardStateSerializer =
    new _$DashboardStateSerializer();

class _$DashboardStateSerializer
    implements StructuredSerializer<DashboardState> {
  @override
  final Iterable<Type> types = const [DashboardState, _$DashboardState];
  @override
  final String wireName = 'DashboardState';

  @override
  Iterable<Object> serialize(Serializers serializers, DashboardState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'matchResultInfos',
      serializers.serialize(object.matchResultInfos,
          specifiedType: const FullType(
              BuiltList, const [const FullType(MatchResultInfoEntity)])),
    ];

    return result;
  }

  @override
  DashboardState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DashboardStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
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

class _$DashboardState extends DashboardState {
  @override
  final BuiltList<MatchResultInfoEntity> matchResultInfos;

  factory _$DashboardState([void Function(DashboardStateBuilder) updates]) =>
      (new DashboardStateBuilder()..update(updates)).build();

  _$DashboardState._({this.matchResultInfos}) : super._() {
    if (matchResultInfos == null) {
      throw new BuiltValueNullFieldError('DashboardState', 'matchResultInfos');
    }
  }

  @override
  DashboardState rebuild(void Function(DashboardStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardStateBuilder toBuilder() =>
      new DashboardStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardState &&
        matchResultInfos == other.matchResultInfos;
  }

  @override
  int get hashCode {
    return $jf($jc(0, matchResultInfos.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DashboardState')
          ..add('matchResultInfos', matchResultInfos))
        .toString();
  }
}

class DashboardStateBuilder
    implements Builder<DashboardState, DashboardStateBuilder> {
  _$DashboardState _$v;

  ListBuilder<MatchResultInfoEntity> _matchResultInfos;
  ListBuilder<MatchResultInfoEntity> get matchResultInfos =>
      _$this._matchResultInfos ??= new ListBuilder<MatchResultInfoEntity>();
  set matchResultInfos(ListBuilder<MatchResultInfoEntity> matchResultInfos) =>
      _$this._matchResultInfos = matchResultInfos;

  DashboardStateBuilder();

  DashboardStateBuilder get _$this {
    if (_$v != null) {
      _matchResultInfos = _$v.matchResultInfos?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DashboardState;
  }

  @override
  void update(void Function(DashboardStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DashboardState build() {
    _$DashboardState _$result;
    try {
      _$result = _$v ??
          new _$DashboardState._(matchResultInfos: matchResultInfos.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'matchResultInfos';
        matchResultInfos.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DashboardState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
