import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:raqet/data/models/enums.dart';

part 'ranking_info_entity.g.dart';

abstract class RankingInfoEntity
    implements Built<RankingInfoEntity, RankingInfoEntityBuilder> {
  factory RankingInfoEntity() {
    return _$RankingInfoEntity._(
      id: '',
      ageGroup: AgeGroup.unknown,
      regional: 0,
      county: 0,
      national: 0,
      totalPoints: 0
    );
  }

  String get id;
  AgeGroup get ageGroup;
  int get regional;
  int get county;
  int get national;
  int get totalPoints;

  RankingInfoEntity._();

  static Serializer<RankingInfoEntity> get serializer =>
      _$rankingInfoEntitySerializer;
}
