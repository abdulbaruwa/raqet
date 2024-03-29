import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:raqet/data/repositories/dashboard_repository.dart';
import 'package:raqet/data/repositories/file_storate.dart';
import 'package:raqet/data/repositories/persistence_repository.dart';
import 'package:raqet/redux/app/app_state.dart';
import 'package:raqet/redux/auth/auth_actions.dart';
import 'package:raqet/redux/main/view_main.dart';
import 'package:raqet/ui/auth/forgot_password_container.dart';
import 'package:raqet/ui/auth/login_container.dart';
import 'package:raqet/ui/auth/sign_in_container.dart';
import 'package:raqet/ui/auth/sign_up_container.dart';
import 'package:raqet/ui/dashboard/dashboard_actions.dart';
import 'package:raqet/ui/dashboard/dashboard_state.dart';
import 'package:raqet/ui/main/main_tab.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createStoreAuthMiddleware(  [
  DashboardRepository dashboardRepository = const DashboardRepository(),
  PersistenceRepository settingsRepository = const PersistenceRepository(
        fileStorage:
            FileStorage('settings_state', getApplicationDocumentsDirectory))]){

  final loginInit = _createLoginInit();
  final navigateToEmailSignUp = _navigateToEmailSignUp();
  final navigateToEmailSignIn = _navigateToEmailSignIn();
  final navigateToPasswordReset = _navigateToPasswordReset();
  final viewDashboard = _viewDashboard();
  final loadDashboard = _loadDashboard(dashboardRepository);
  final saveSettigns = _saveSettings(settingsRepository);
  return [TypedMiddleware<AppState, LoadUserLogin>(loginInit),
  TypedMiddleware<AppState, NavigateToEmailSignUpAction>(navigateToEmailSignUp),
  TypedMiddleware<AppState, NavigateToPasswordResetAction>(navigateToPasswordReset),
  TypedMiddleware<AppState, NavigateToEmailSignInAction>(navigateToEmailSignIn),
  TypedMiddleware<AppState, ViewMain>(viewDashboard),
  TypedMiddleware<AppState, LoadDashboard>(loadDashboard),
  TypedMiddleware<AppState, SignInCompletedAction>(saveSettigns),
  ];
}

Middleware<AppState> _createLoginInit() {
  return (Store<AppState> store, dynamic dynamicAction, NextDispatcher next) {
    final action = dynamicAction as LoadUserLogin;

    Navigator.of(action.context).pushReplacementNamed(LoginContainer.route);

    next(action);
  };
}

Middleware<AppState> _navigateToEmailSignUp() {
  return (Store<AppState> store, dynamic dynamicAction, NextDispatcher next) {
    final action = dynamicAction as NavigateToEmailSignUpAction;

    Navigator.of(action.context).pushReplacementNamed(SignUpContainer.route);

    next(action);
  };
}

Middleware<AppState> _navigateToEmailSignIn() {
  return (Store<AppState> store, dynamic dynamicAction, NextDispatcher next) {
    final action = dynamicAction as NavigateToEmailSignInAction;

    Navigator.of(action.context).pushReplacementNamed(SignInContainer.route);

    next(action);
  };
}

Middleware<AppState> _navigateToPasswordReset() {
  return (Store<AppState> store, dynamic dynamicAction, NextDispatcher next) {
    final action = dynamicAction as NavigateToPasswordResetAction;

    Navigator.of(action.context).pushReplacementNamed(ForgotPasswordContainer.route);

    next(action);
  };
}

Middleware<AppState> _viewDashboard() {
  return (Store<AppState> store, dynamic dynamicAction, NextDispatcher next) {
    final action = dynamicAction as ViewMain;

    store.dispatch(LoadDashboard(action.playerId));
    Navigator.of(action.context).pushReplacementNamed(MainTab.route);

    next(action);
  };
}

Middleware<AppState> _loadDashboard(DashboardRepository dashboardRepository) {
  return (Store<AppState> store, dynamic dynamicAction, NextDispatcher next) async {
    final action = dynamicAction as LoadDashboard;
    final state = store.state;

    dashboardRepository.loadMatchResults(action.playerId).then((onValue){
      var dashboardState = DashboardState().rebuild((b) => b..matchResultInfos.replace(onValue.toList()));
      store.dispatch(LoadDashboardSuccess(dashboardState));
    }).catchError((Object onError){
      print (onError);
      //dispatch dashboard load error 
      // store.dispatch(LoadDashboardFailue(onError));
    });
    next(action);
  };
}


Middleware<AppState> _saveSettings(PersistenceRepository repository) {
  return (Store<AppState> store, dynamic dynamicAction, NextDispatcher next) {
    final action = dynamicAction as SignInCompletedAction;    
    repository.saveSettingsState(action.settings);

    next(action);
  };
}