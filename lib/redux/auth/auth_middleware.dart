import 'package:flutter/material.dart';
import 'package:raqet/redux/app/app_state.dart';
import 'package:raqet/redux/auth/auth_actions.dart';
import 'package:raqet/redux/dashboard/dashboard_actions.dart';
import 'package:raqet/ui/auth/forgot_password_container.dart';
import 'package:raqet/ui/auth/login_container.dart';
import 'package:raqet/ui/auth/sign_in_container.dart';
import 'package:raqet/ui/auth/sign_up_container.dart';
import 'package:raqet/ui/dashboard/dashboard_container.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createStoreAuthMiddleware(){

  final loginInit = _createLoginInit();
  final navigateToEmailSignUp = _navigateToEmailSignUp();
  final navigateToEmailSignIn = _navigateToEmailSignIn();
  final navigateToPasswordReset = _navigateToPasswordReset();
  final viewDashboard = _viewDashboard();
  return [TypedMiddleware<AppState, LoadUserLogin>(loginInit),
  TypedMiddleware<AppState, NavigateToEmailSignUpAction>(navigateToEmailSignUp),
  TypedMiddleware<AppState, NavigateToPasswordResetAction>(navigateToPasswordReset),
  TypedMiddleware<AppState, NavigateToEmailSignInAction>(navigateToEmailSignIn),
  TypedMiddleware<AppState, ViewDashboard>(viewDashboard),
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
    final action = dynamicAction as ViewDashboard;

    Navigator.of(action.context).pushReplacementNamed(DashboardContainer.route);

    next(action);
  };
}