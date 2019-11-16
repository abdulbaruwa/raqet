import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'enums.g.dart';

class Gender extends EnumClass {
  const Gender._(String name) : super(name);

  static Serializer<Gender> get serializer => _$genderSerializer;

  static const Gender unknown = _$unknown;
  static const Gender female = _$female;
  static const Gender male = _$male;
  static BuiltSet<Gender> get values => _$genderValues;

  static Gender valueOf(String name) => _$gendervalueOf(name);
}

class AgeGroup extends EnumClass {
  const AgeGroup._(String name) : super(name);

  static Serializer<AgeGroup> get serializer => _$ageGroupSerializer;

  static const AgeGroup unknown = _$unknownAgeGroup;
  static const AgeGroup under12 = _$under12;
  static const AgeGroup under16 = _$under16;
  static const AgeGroup under18 = _$under18;
  static const AgeGroup adult = _$adult;
  static BuiltSet<AgeGroup> get values => _$ageGroupValues;

  static AgeGroup valueOf(String name) => _$ageGroupValueOf(name);
}

class TournamentStatus extends EnumClass {
  const TournamentStatus._(String name) : super(name);

  static Serializer<TournamentStatus> get serializer =>
      _$tournamentStatusSerializer;

  static const TournamentStatus upcoming = _$upcoming;
  static const TournamentStatus acceptingEntries = _$acceptingEntries;
  static const TournamentStatus closedForEntries = _$closedForEntries;
  static const TournamentStatus withdrawalDatePassed = _$withdrawalDatePassed;
  static const TournamentStatus inProgress = _$inProgress;
  static const TournamentStatus pendingResults = _$pendingResults;
  static const TournamentStatus resultsAvailable = _$resultsAvailable;

  static BuiltSet<TournamentStatus> get values => _$tournamentStatusValues;

  static TournamentStatus valueOf(String name) =>
      _$tournamentStatusValueOf(name);
}

class TournamentGrade extends EnumClass {
  const TournamentGrade._(String name) : super(name);

  static Serializer<TournamentGrade> get serializer => _$tournamentGradeSerializer;
  static const TournamentGrade unknown = _$unknownGrade;
  static const TournamentGrade one = _$gradeOnek;
  static const TournamentGrade two = _$gradeTwo;
  static const TournamentGrade three = _$gradeThree;
  static const TournamentGrade four= _$gradeFour;
  static const TournamentGrade  five = _$gradeFive;
  static const TournamentGrade six = _$gradeSix;

  static BuiltSet<TournamentGrade> get values => _$tournamentGradeValues;

  static TournamentGrade valueOf(String name) => _$tournamentGradeValueOf(name);
}
