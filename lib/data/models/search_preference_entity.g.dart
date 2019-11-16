// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_preference_entity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchPreferenceEntity> _$searchPreferenceEntitySerializer =
    new _$SearchPreferenceEntitySerializer();

class _$SearchPreferenceEntitySerializer
    implements StructuredSerializer<SearchPreferenceEntity> {
  @override
  final Iterable<Type> types = const [
    SearchPreferenceEntity,
    _$SearchPreferenceEntity
  ];
  @override
  final String wireName = 'SearchPreferenceEntity';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SearchPreferenceEntity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'grades',
      serializers.serialize(object.grades,
          specifiedType: const FullType(
              BuiltList, const [const FullType(TournamentGrade)])),
      'gender',
      serializers.serialize(object.gender,
          specifiedType: const FullType(Gender)),
      'ageGroups',
      serializers.serialize(object.ageGroups,
          specifiedType:
              const FullType(BuiltList, const [const FullType(AgeGroup)])),
      'distance',
      serializers.serialize(object.distance,
          specifiedType: const FullType(int)),
      'tournamentStatus',
      serializers.serialize(object.tournamentStatus,
          specifiedType: const FullType(
              BuiltList, const [const FullType(TournamentStatus)])),
    ];

    return result;
  }

  @override
  SearchPreferenceEntity deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchPreferenceEntityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'grades':
          result.grades.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TournamentGrade)]))
              as BuiltList<dynamic>);
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(Gender)) as Gender;
          break;
        case 'ageGroups':
          result.ageGroups.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AgeGroup)]))
              as BuiltList<dynamic>);
          break;
        case 'distance':
          result.distance = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'tournamentStatus':
          result.tournamentStatus.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TournamentStatus)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$SearchPreferenceEntity extends SearchPreferenceEntity {
  @override
  final BuiltList<TournamentGrade> grades;
  @override
  final Gender gender;
  @override
  final BuiltList<AgeGroup> ageGroups;
  @override
  final int distance;
  @override
  final BuiltList<TournamentStatus> tournamentStatus;

  factory _$SearchPreferenceEntity(
          [void Function(SearchPreferenceEntityBuilder) updates]) =>
      (new SearchPreferenceEntityBuilder()..update(updates)).build();

  _$SearchPreferenceEntity._(
      {this.grades,
      this.gender,
      this.ageGroups,
      this.distance,
      this.tournamentStatus})
      : super._() {
    if (grades == null) {
      throw new BuiltValueNullFieldError('SearchPreferenceEntity', 'grades');
    }
    if (gender == null) {
      throw new BuiltValueNullFieldError('SearchPreferenceEntity', 'gender');
    }
    if (ageGroups == null) {
      throw new BuiltValueNullFieldError('SearchPreferenceEntity', 'ageGroups');
    }
    if (distance == null) {
      throw new BuiltValueNullFieldError('SearchPreferenceEntity', 'distance');
    }
    if (tournamentStatus == null) {
      throw new BuiltValueNullFieldError(
          'SearchPreferenceEntity', 'tournamentStatus');
    }
  }

  @override
  SearchPreferenceEntity rebuild(
          void Function(SearchPreferenceEntityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchPreferenceEntityBuilder toBuilder() =>
      new SearchPreferenceEntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchPreferenceEntity &&
        grades == other.grades &&
        gender == other.gender &&
        ageGroups == other.ageGroups &&
        distance == other.distance &&
        tournamentStatus == other.tournamentStatus;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, grades.hashCode), gender.hashCode),
                ageGroups.hashCode),
            distance.hashCode),
        tournamentStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchPreferenceEntity')
          ..add('grades', grades)
          ..add('gender', gender)
          ..add('ageGroups', ageGroups)
          ..add('distance', distance)
          ..add('tournamentStatus', tournamentStatus))
        .toString();
  }
}

class SearchPreferenceEntityBuilder
    implements Builder<SearchPreferenceEntity, SearchPreferenceEntityBuilder> {
  _$SearchPreferenceEntity _$v;

  ListBuilder<TournamentGrade> _grades;
  ListBuilder<TournamentGrade> get grades =>
      _$this._grades ??= new ListBuilder<TournamentGrade>();
  set grades(ListBuilder<TournamentGrade> grades) => _$this._grades = grades;

  Gender _gender;
  Gender get gender => _$this._gender;
  set gender(Gender gender) => _$this._gender = gender;

  ListBuilder<AgeGroup> _ageGroups;
  ListBuilder<AgeGroup> get ageGroups =>
      _$this._ageGroups ??= new ListBuilder<AgeGroup>();
  set ageGroups(ListBuilder<AgeGroup> ageGroups) =>
      _$this._ageGroups = ageGroups;

  int _distance;
  int get distance => _$this._distance;
  set distance(int distance) => _$this._distance = distance;

  ListBuilder<TournamentStatus> _tournamentStatus;
  ListBuilder<TournamentStatus> get tournamentStatus =>
      _$this._tournamentStatus ??= new ListBuilder<TournamentStatus>();
  set tournamentStatus(ListBuilder<TournamentStatus> tournamentStatus) =>
      _$this._tournamentStatus = tournamentStatus;

  SearchPreferenceEntityBuilder();

  SearchPreferenceEntityBuilder get _$this {
    if (_$v != null) {
      _grades = _$v.grades?.toBuilder();
      _gender = _$v.gender;
      _ageGroups = _$v.ageGroups?.toBuilder();
      _distance = _$v.distance;
      _tournamentStatus = _$v.tournamentStatus?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchPreferenceEntity other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchPreferenceEntity;
  }

  @override
  void update(void Function(SearchPreferenceEntityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchPreferenceEntity build() {
    _$SearchPreferenceEntity _$result;
    try {
      _$result = _$v ??
          new _$SearchPreferenceEntity._(
              grades: grades.build(),
              gender: gender,
              ageGroups: ageGroups.build(),
              distance: distance,
              tournamentStatus: tournamentStatus.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'grades';
        grades.build();

        _$failedField = 'ageGroups';
        ageGroups.build();

        _$failedField = 'tournamentStatus';
        tournamentStatus.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchPreferenceEntity', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
