import 'dart:io';

import 'package:built_collection/built_collection.dart';
import "package:built_value/built_value.dart";
import 'package:built_value/serializer.dart';
import 'package:raqet/data/models/app_tab.dart';
import 'package:raqet/data/models/match_result_info_entity.dart';
import 'package:raqet/data/models/player_entity.dart';
import 'package:raqet/redux/auth/settings_state.dart';
import 'package:swagger/api.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState({bool isTesting}) {
    return _$AppState._(
        isLoading: false,
        isSaving: false,
        isTesting: false,
        activeTab: AppTab.home,
        player: PlayerEntity(),
        matchResultInfos: BuiltList<MatchResultInfoEntity>(),
        settingsState: SettingsState());
  }

  AppState._();

  SettingsState get settingsState;
  bool get isLoading;
  bool get isSaving;
  bool get isTesting;
  AppTab get activeTab;
  PlayerEntity get player;
  File get avatar => null;
  BuiltList<MatchResultInfoEntity> get matchResultInfos;
  //factory AppState([void updates(AppStateBuilder b)]) = _$AppState;

  // factory AppState.init() =>
  //     AppState((a) => a
  //     ..settingsState = SettingsState()
  //     ..isLoading = false
  //     ..isSaving = false
  //     );

  static Serializer<AppState> get serializer => _$appStateSerializer;

}
