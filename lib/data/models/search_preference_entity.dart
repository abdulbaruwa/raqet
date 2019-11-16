import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:raqet/data/models/enums.dart';

part 'search_preference_entity.g.dart';

abstract class SearchPreferenceEntity
    implements Built<SearchPreferenceEntity, SearchPreferenceEntityBuilder> {
  factory SearchPreferenceEntity() {
    return _$SearchPreferenceEntity._(
        grades: BuiltList<TournamentGrade>(),
        gender: Gender.unknown,
        ageGroups: BuiltList<AgeGroup>(),
        distance: 50,
        tournamentStatus: BuiltList<TournamentStatus>());
  }

  BuiltList<TournamentGrade> get grades;
  Gender get gender;
  BuiltList<AgeGroup> get ageGroups;
  int get distance;
  BuiltList<TournamentStatus> get tournamentStatus;

  SearchPreferenceEntity._();
  static Serializer<SearchPreferenceEntity> get serializer =>
      _$searchPreferenceEntitySerializer;
}
