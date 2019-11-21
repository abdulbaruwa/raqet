
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:raqet/data/models/address_entity.dart';
import 'package:raqet/data/models/enums.dart';
import 'package:raqet/data/models/match_result_info_entity.dart';
import 'package:raqet/data/models/player_entity.dart';
import 'package:raqet/data/models/ranking_info_entity.dart';
import 'package:raqet/data/models/search_preference_entity.dart';
import 'package:raqet/redux/app/app_state.dart';
import 'package:raqet/redux/auth/settings_state.dart';
import 'package:raqet/ui/dashboard/dashboard_state.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  AppState,
  SettingsState, 
  PlayerEntity,
  MatchResultInfoEntity,
  RankingInfoEntity,
  SearchPreferenceEntity,
  AddressEntity,
  TournamentGrade,
  AgeGroup,
  TournamentStatus,
  MatchResultInfoEntityListResponse
  // STARTER: serializers - do not remove comment
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
