

import 'package:raqet/redux/app/app_state.dart';
import 'package:raqet/redux/auth/auth_actions.dart';
import 'package:redux/redux.dart';

Reducer<AppState> authReducter = combineReducers([
  TypedReducer<AppState, SignInCompletedAction>(signInCompleted),
]);

AppState signInCompleted(AppState authState, SignInCompletedAction action){
  return authState.rebuild((b) => b..settingsState.replace(action.settings));
}
