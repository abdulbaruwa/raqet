// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enums.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Gender _$unknown = const Gender._('unknown');
const Gender _$female = const Gender._('female');
const Gender _$male = const Gender._('male');

Gender _$gendervalueOf(String name) {
  switch (name) {
    case 'unknown':
      return _$unknown;
    case 'female':
      return _$female;
    case 'male':
      return _$male;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Gender> _$genderValues = new BuiltSet<Gender>(const <Gender>[
  _$unknown,
  _$female,
  _$male,
]);

const AgeGroup _$unknownAgeGroup = const AgeGroup._('unknown');
const AgeGroup _$under12 = const AgeGroup._('under12');
const AgeGroup _$under16 = const AgeGroup._('under16');
const AgeGroup _$under18 = const AgeGroup._('under18');
const AgeGroup _$adult = const AgeGroup._('adult');

AgeGroup _$ageGroupValueOf(String name) {
  switch (name) {
    case 'unknown':
      return _$unknownAgeGroup;
    case 'under12':
      return _$under12;
    case 'under16':
      return _$under16;
    case 'under18':
      return _$under18;
    case 'adult':
      return _$adult;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AgeGroup> _$ageGroupValues =
    new BuiltSet<AgeGroup>(const <AgeGroup>[
  _$unknownAgeGroup,
  _$under12,
  _$under16,
  _$under18,
  _$adult,
]);

const TournamentStatus _$upcoming = const TournamentStatus._('upcoming');
const TournamentStatus _$acceptingEntries =
    const TournamentStatus._('acceptingEntries');
const TournamentStatus _$closedForEntries =
    const TournamentStatus._('closedForEntries');
const TournamentStatus _$withdrawalDatePassed =
    const TournamentStatus._('withdrawalDatePassed');
const TournamentStatus _$inProgress = const TournamentStatus._('inProgress');
const TournamentStatus _$pendingResults =
    const TournamentStatus._('pendingResults');
const TournamentStatus _$resultsAvailable =
    const TournamentStatus._('resultsAvailable');

TournamentStatus _$tournamentStatusValueOf(String name) {
  switch (name) {
    case 'upcoming':
      return _$upcoming;
    case 'acceptingEntries':
      return _$acceptingEntries;
    case 'closedForEntries':
      return _$closedForEntries;
    case 'withdrawalDatePassed':
      return _$withdrawalDatePassed;
    case 'inProgress':
      return _$inProgress;
    case 'pendingResults':
      return _$pendingResults;
    case 'resultsAvailable':
      return _$resultsAvailable;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TournamentStatus> _$tournamentStatusValues =
    new BuiltSet<TournamentStatus>(const <TournamentStatus>[
  _$upcoming,
  _$acceptingEntries,
  _$closedForEntries,
  _$withdrawalDatePassed,
  _$inProgress,
  _$pendingResults,
  _$resultsAvailable,
]);

const TournamentGrade _$unknownGrade = const TournamentGrade._('unknown');
const TournamentGrade _$gradeOnek = const TournamentGrade._('one');
const TournamentGrade _$gradeTwo = const TournamentGrade._('two');
const TournamentGrade _$gradeThree = const TournamentGrade._('three');
const TournamentGrade _$gradeFour = const TournamentGrade._('four');
const TournamentGrade _$gradeFive = const TournamentGrade._('five');
const TournamentGrade _$gradeSix = const TournamentGrade._('six');

TournamentGrade _$tournamentGradeValueOf(String name) {
  switch (name) {
    case 'unknown':
      return _$unknownGrade;
    case 'one':
      return _$gradeOnek;
    case 'two':
      return _$gradeTwo;
    case 'three':
      return _$gradeThree;
    case 'four':
      return _$gradeFour;
    case 'five':
      return _$gradeFive;
    case 'six':
      return _$gradeSix;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TournamentGrade> _$tournamentGradeValues =
    new BuiltSet<TournamentGrade>(const <TournamentGrade>[
  _$unknownGrade,
  _$gradeOnek,
  _$gradeTwo,
  _$gradeThree,
  _$gradeFour,
  _$gradeFive,
  _$gradeSix,
]);

Serializer<Gender> _$genderSerializer = new _$GenderSerializer();
Serializer<AgeGroup> _$ageGroupSerializer = new _$AgeGroupSerializer();
Serializer<TournamentStatus> _$tournamentStatusSerializer =
    new _$TournamentStatusSerializer();
Serializer<TournamentGrade> _$tournamentGradeSerializer =
    new _$TournamentGradeSerializer();

class _$GenderSerializer implements PrimitiveSerializer<Gender> {
  @override
  final Iterable<Type> types = const <Type>[Gender];
  @override
  final String wireName = 'Gender';

  @override
  Object serialize(Serializers serializers, Gender object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  Gender deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Gender.valueOf(serialized as String);
}

class _$AgeGroupSerializer implements PrimitiveSerializer<AgeGroup> {
  @override
  final Iterable<Type> types = const <Type>[AgeGroup];
  @override
  final String wireName = 'AgeGroup';

  @override
  Object serialize(Serializers serializers, AgeGroup object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  AgeGroup deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AgeGroup.valueOf(serialized as String);
}

class _$TournamentStatusSerializer
    implements PrimitiveSerializer<TournamentStatus> {
  @override
  final Iterable<Type> types = const <Type>[TournamentStatus];
  @override
  final String wireName = 'TournamentStatus';

  @override
  Object serialize(Serializers serializers, TournamentStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  TournamentStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TournamentStatus.valueOf(serialized as String);
}

class _$TournamentGradeSerializer
    implements PrimitiveSerializer<TournamentGrade> {
  @override
  final Iterable<Type> types = const <Type>[TournamentGrade];
  @override
  final String wireName = 'TournamentGrade';

  @override
  Object serialize(Serializers serializers, TournamentGrade object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  TournamentGrade deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TournamentGrade.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
