// We create the State reducer by combining many smaller reducers into one!
import 'package:raqet/redux/app/app_state.dart';
import 'package:raqet/redux/auth/auth_actions.dart';
import 'package:raqet/redux/auth/settings_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is UserLogout) {
    return AppState().rebuild((b) => b
      ..settingsState.replace(state.settingsState)
      );
  } else if (action is LoadStateSuccess) {
    return action.state.rebuild((b) => b
      ..isLoading = false
      ..isSaving = false);
  }

  return state.rebuild((b) => b
    ..settingsState.replace(settingsReducer(state.settingsState, action))
    );
}

