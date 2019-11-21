
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:raqet/data/models/match_result_info_entity.dart';

part 'dashboard_state.g.dart';

abstract class DashboardState implements Built<DashboardState, DashboardStateBuilder>{

  BuiltList<MatchResultInfoEntity> get matchResultInfos;

   factory DashboardState() {
    return _$DashboardState._(
        matchResultInfos: BuiltList<MatchResultInfoEntity>(),
    );
  }

 DashboardState._(); 

  static Serializer<DashboardState> get serializer => _$dashboardStateSerializer;
}
