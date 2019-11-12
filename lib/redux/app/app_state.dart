import "package:built_value/built_value.dart";
import 'package:built_value/serializer.dart';
import 'package:raqet/redux/auth/settings_state.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState({bool isTesting}) {
    return _$AppState._(
        isLoading: false, isSaving: false, isTesting: false, settingsState: SettingsState());
  }

  AppState._();

  SettingsState get settingsState;
  bool get isLoading;
  bool get isSaving;
  bool get isTesting;

  //factory AppState([void updates(AppStateBuilder b)]) = _$AppState;

  // factory AppState.init() =>
  //     AppState((a) => a
  //     ..settingsState = SettingsState()
  //     ..isLoading = false
  //     ..isSaving = false
  //     );

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
