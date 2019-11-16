import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:raqet/data/models/enums.dart';
part 'match_result_info_entity.g.dart';

abstract class MatchResultInfoEntity
    implements Built<MatchResultInfoEntity, MatchResultInfoEntityBuilder> {
  // factory MatchResultInfoEntity() {
  //   return _$MatchResultInfoEntity._(
  //       id: '',
  //       tournamentDate: DateTime(1900),
  //       ageGroup: AgeGroup.unknown,
  //       grade: TournamentGrade.unknown,
  //       tournamentName: '',
  //       tournamentCode: '',
  //       tournamentId: '',
  //       result: '',
  //       points: 0,
  //       appliedToRanking: false,
  //       playerId: '',
  //       cosmosEntityName: '');
  // }
    factory MatchResultInfoEntity([void updates(MatchResultInfoEntityBuilder b)]) =
      _$MatchResultInfoEntity;

  String get id;
  DateTime get tournamentDate;
  AgeGroup get ageGroup;
  TournamentGrade get grade;
  String get tournamentName;
  String get tournamentCode;
  String get tournamentId;
  String get result;
  int get points;
  bool get appliedToRanking;
  String get playerId;
  String get cosmosEntityName;

  MatchResultInfoEntity._();

  static Serializer<MatchResultInfoEntity> get serializer =>
      _$matchResultInfoEntitySerializer;
}
