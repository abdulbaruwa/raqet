// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_result_info_entity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MatchResultInfoEntity> _$matchResultInfoEntitySerializer =
    new _$MatchResultInfoEntitySerializer();
Serializer<MatchResultInfoEntityListResponse>
    _$matchResultInfoEntityListResponseSerializer =
    new _$MatchResultInfoEntityListResponseSerializer();

class _$MatchResultInfoEntitySerializer
    implements StructuredSerializer<MatchResultInfoEntity> {
  @override
  final Iterable<Type> types = const [
    MatchResultInfoEntity,
    _$MatchResultInfoEntity
  ];
  @override
  final String wireName = 'MatchResultInfoEntity';

  @override
  Iterable<Object> serialize(
      Serializers serializers, MatchResultInfoEntity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'tournamentDate',
      serializers.serialize(object.tournamentDate,
          specifiedType: const FullType(DateTime)),
      'ageGroup',
      serializers.serialize(object.ageGroup,
          specifiedType: const FullType(AgeGroup)),
      'grade',
      serializers.serialize(object.grade,
          specifiedType: const FullType(TournamentGrade)),
      'tournamentName',
      serializers.serialize(object.tournamentName,
          specifiedType: const FullType(String)),
      'tournamentCode',
      serializers.serialize(object.tournamentCode,
          specifiedType: const FullType(String)),
      'tournamentId',
      serializers.serialize(object.tournamentId,
          specifiedType: const FullType(String)),
      'result',
      serializers.serialize(object.result,
          specifiedType: const FullType(String)),
      'points',
      serializers.serialize(object.points, specifiedType: const FullType(int)),
      'appliedToRanking',
      serializers.serialize(object.appliedToRanking,
          specifiedType: const FullType(bool)),
      'playerId',
      serializers.serialize(object.playerId,
          specifiedType: const FullType(String)),
      'cosmosEntityName',
      serializers.serialize(object.cosmosEntityName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MatchResultInfoEntity deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MatchResultInfoEntityBuilder();

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
        case 'tournamentDate':
          result.tournamentDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'ageGroup':
          result.ageGroup = serializers.deserialize(value,
              specifiedType: const FullType(AgeGroup)) as AgeGroup;
          break;
        case 'grade':
          result.grade = serializers.deserialize(value,
                  specifiedType: const FullType(TournamentGrade))
              as TournamentGrade;
          break;
        case 'tournamentName':
          result.tournamentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tournamentCode':
          result.tournamentCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tournamentId':
          result.tournamentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'result':
          result.result = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'points':
          result.points = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'appliedToRanking':
          result.appliedToRanking = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'playerId':
          result.playerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$MatchResultInfoEntityListResponseSerializer
    implements StructuredSerializer<MatchResultInfoEntityListResponse> {
  @override
  final Iterable<Type> types = const [
    MatchResultInfoEntityListResponse,
    _$MatchResultInfoEntityListResponse
  ];
  @override
  final String wireName = 'MatchResultInfoEntityListResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, MatchResultInfoEntityListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(
              BuiltList, const [const FullType(MatchResultInfoEntity)])),
    ];

    return result;
  }

  @override
  MatchResultInfoEntityListResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MatchResultInfoEntityListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MatchResultInfoEntity)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$MatchResultInfoEntity extends MatchResultInfoEntity {
  @override
  final String id;
  @override
  final DateTime tournamentDate;
  @override
  final AgeGroup ageGroup;
  @override
  final TournamentGrade grade;
  @override
  final String tournamentName;
  @override
  final String tournamentCode;
  @override
  final String tournamentId;
  @override
  final String result;
  @override
  final int points;
  @override
  final bool appliedToRanking;
  @override
  final String playerId;
  @override
  final String cosmosEntityName;

  factory _$MatchResultInfoEntity(
          [void Function(MatchResultInfoEntityBuilder) updates]) =>
      (new MatchResultInfoEntityBuilder()..update(updates)).build();

  _$MatchResultInfoEntity._(
      {this.id,
      this.tournamentDate,
      this.ageGroup,
      this.grade,
      this.tournamentName,
      this.tournamentCode,
      this.tournamentId,
      this.result,
      this.points,
      this.appliedToRanking,
      this.playerId,
      this.cosmosEntityName})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('MatchResultInfoEntity', 'id');
    }
    if (tournamentDate == null) {
      throw new BuiltValueNullFieldError(
          'MatchResultInfoEntity', 'tournamentDate');
    }
    if (ageGroup == null) {
      throw new BuiltValueNullFieldError('MatchResultInfoEntity', 'ageGroup');
    }
    if (grade == null) {
      throw new BuiltValueNullFieldError('MatchResultInfoEntity', 'grade');
    }
    if (tournamentName == null) {
      throw new BuiltValueNullFieldError(
          'MatchResultInfoEntity', 'tournamentName');
    }
    if (tournamentCode == null) {
      throw new BuiltValueNullFieldError(
          'MatchResultInfoEntity', 'tournamentCode');
    }
    if (tournamentId == null) {
      throw new BuiltValueNullFieldError(
          'MatchResultInfoEntity', 'tournamentId');
    }
    if (result == null) {
      throw new BuiltValueNullFieldError('MatchResultInfoEntity', 'result');
    }
    if (points == null) {
      throw new BuiltValueNullFieldError('MatchResultInfoEntity', 'points');
    }
    if (appliedToRanking == null) {
      throw new BuiltValueNullFieldError(
          'MatchResultInfoEntity', 'appliedToRanking');
    }
    if (playerId == null) {
      throw new BuiltValueNullFieldError('MatchResultInfoEntity', 'playerId');
    }
    if (cosmosEntityName == null) {
      throw new BuiltValueNullFieldError(
          'MatchResultInfoEntity', 'cosmosEntityName');
    }
  }

  @override
  MatchResultInfoEntity rebuild(
          void Function(MatchResultInfoEntityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchResultInfoEntityBuilder toBuilder() =>
      new MatchResultInfoEntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MatchResultInfoEntity &&
        id == other.id &&
        tournamentDate == other.tournamentDate &&
        ageGroup == other.ageGroup &&
        grade == other.grade &&
        tournamentName == other.tournamentName &&
        tournamentCode == other.tournamentCode &&
        tournamentId == other.tournamentId &&
        result == other.result &&
        points == other.points &&
        appliedToRanking == other.appliedToRanking &&
        playerId == other.playerId &&
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
                                            $jc($jc(0, id.hashCode),
                                                tournamentDate.hashCode),
                                            ageGroup.hashCode),
                                        grade.hashCode),
                                    tournamentName.hashCode),
                                tournamentCode.hashCode),
                            tournamentId.hashCode),
                        result.hashCode),
                    points.hashCode),
                appliedToRanking.hashCode),
            playerId.hashCode),
        cosmosEntityName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MatchResultInfoEntity')
          ..add('id', id)
          ..add('tournamentDate', tournamentDate)
          ..add('ageGroup', ageGroup)
          ..add('grade', grade)
          ..add('tournamentName', tournamentName)
          ..add('tournamentCode', tournamentCode)
          ..add('tournamentId', tournamentId)
          ..add('result', result)
          ..add('points', points)
          ..add('appliedToRanking', appliedToRanking)
          ..add('playerId', playerId)
          ..add('cosmosEntityName', cosmosEntityName))
        .toString();
  }
}

class MatchResultInfoEntityBuilder
    implements Builder<MatchResultInfoEntity, MatchResultInfoEntityBuilder> {
  _$MatchResultInfoEntity _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  DateTime _tournamentDate;
  DateTime get tournamentDate => _$this._tournamentDate;
  set tournamentDate(DateTime tournamentDate) =>
      _$this._tournamentDate = tournamentDate;

  AgeGroup _ageGroup;
  AgeGroup get ageGroup => _$this._ageGroup;
  set ageGroup(AgeGroup ageGroup) => _$this._ageGroup = ageGroup;

  TournamentGrade _grade;
  TournamentGrade get grade => _$this._grade;
  set grade(TournamentGrade grade) => _$this._grade = grade;

  String _tournamentName;
  String get tournamentName => _$this._tournamentName;
  set tournamentName(String tournamentName) =>
      _$this._tournamentName = tournamentName;

  String _tournamentCode;
  String get tournamentCode => _$this._tournamentCode;
  set tournamentCode(String tournamentCode) =>
      _$this._tournamentCode = tournamentCode;

  String _tournamentId;
  String get tournamentId => _$this._tournamentId;
  set tournamentId(String tournamentId) => _$this._tournamentId = tournamentId;

  String _result;
  String get result => _$this._result;
  set result(String result) => _$this._result = result;

  int _points;
  int get points => _$this._points;
  set points(int points) => _$this._points = points;

  bool _appliedToRanking;
  bool get appliedToRanking => _$this._appliedToRanking;
  set appliedToRanking(bool appliedToRanking) =>
      _$this._appliedToRanking = appliedToRanking;

  String _playerId;
  String get playerId => _$this._playerId;
  set playerId(String playerId) => _$this._playerId = playerId;

  String _cosmosEntityName;
  String get cosmosEntityName => _$this._cosmosEntityName;
  set cosmosEntityName(String cosmosEntityName) =>
      _$this._cosmosEntityName = cosmosEntityName;

  MatchResultInfoEntityBuilder();

  MatchResultInfoEntityBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _tournamentDate = _$v.tournamentDate;
      _ageGroup = _$v.ageGroup;
      _grade = _$v.grade;
      _tournamentName = _$v.tournamentName;
      _tournamentCode = _$v.tournamentCode;
      _tournamentId = _$v.tournamentId;
      _result = _$v.result;
      _points = _$v.points;
      _appliedToRanking = _$v.appliedToRanking;
      _playerId = _$v.playerId;
      _cosmosEntityName = _$v.cosmosEntityName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MatchResultInfoEntity other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MatchResultInfoEntity;
  }

  @override
  void update(void Function(MatchResultInfoEntityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MatchResultInfoEntity build() {
    final _$result = _$v ??
        new _$MatchResultInfoEntity._(
            id: id,
            tournamentDate: tournamentDate,
            ageGroup: ageGroup,
            grade: grade,
            tournamentName: tournamentName,
            tournamentCode: tournamentCode,
            tournamentId: tournamentId,
            result: result,
            points: points,
            appliedToRanking: appliedToRanking,
            playerId: playerId,
            cosmosEntityName: cosmosEntityName);
    replace(_$result);
    return _$result;
  }
}

class _$MatchResultInfoEntityListResponse
    extends MatchResultInfoEntityListResponse {
  @override
  final BuiltList<MatchResultInfoEntity> data;

  factory _$MatchResultInfoEntityListResponse(
          [void Function(MatchResultInfoEntityListResponseBuilder) updates]) =>
      (new MatchResultInfoEntityListResponseBuilder()..update(updates)).build();

  _$MatchResultInfoEntityListResponse._({this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError(
          'MatchResultInfoEntityListResponse', 'data');
    }
  }

  @override
  MatchResultInfoEntityListResponse rebuild(
          void Function(MatchResultInfoEntityListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchResultInfoEntityListResponseBuilder toBuilder() =>
      new MatchResultInfoEntityListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MatchResultInfoEntityListResponse && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MatchResultInfoEntityListResponse')
          ..add('data', data))
        .toString();
  }
}

class MatchResultInfoEntityListResponseBuilder
    implements
        Builder<MatchResultInfoEntityListResponse,
            MatchResultInfoEntityListResponseBuilder> {
  _$MatchResultInfoEntityListResponse _$v;

  ListBuilder<MatchResultInfoEntity> _data;
  ListBuilder<MatchResultInfoEntity> get data =>
      _$this._data ??= new ListBuilder<MatchResultInfoEntity>();
  set data(ListBuilder<MatchResultInfoEntity> data) => _$this._data = data;

  MatchResultInfoEntityListResponseBuilder();

  MatchResultInfoEntityListResponseBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MatchResultInfoEntityListResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MatchResultInfoEntityListResponse;
  }

  @override
  void update(void Function(MatchResultInfoEntityListResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MatchResultInfoEntityListResponse build() {
    _$MatchResultInfoEntityListResponse _$result;
    try {
      _$result =
          _$v ?? new _$MatchResultInfoEntityListResponse._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MatchResultInfoEntityListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
