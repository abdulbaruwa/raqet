import 'package:flutter/material.dart';
import 'package:raqet/redux/app/app_state.dart';
import 'package:raqet/redux/auth/auth_actions.dart';
import 'package:raqet/ui/auth/login_container.dart';
import 'package:raqet/ui/auth/sign_in_container.dart';
import 'package:raqet/ui/auth/sign_up_container.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createStoreAuthMiddleware(){

  final loginInit = _createLoginInit();
  final navigateToEmailSignUp = _navigateToEmailSignUp();
  final navigateToEmailSignIn = _navigateToEmailSignIn();
  return [TypedMiddleware<AppState, LoadUserLogin>(loginInit),
  TypedMiddleware<AppState, NavigateToEmailSignUpAction>(navigateToEmailSignUp),
  TypedMiddleware<AppState, NavigateToEmailSignInAction>(navigateToEmailSignIn)
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

    Navigator.of(action.context).pushNamed(SignUpContainer.route);

    next(action);
  };
}

Middleware<AppState> _navigateToEmailSignIn() {
  return (Store<AppState> store, dynamic dynamicAction, NextDispatcher next) {
    final action = dynamicAction as NavigateToEmailSignInAction;

    Navigator.of(action.context).pushNamed(SignInContainer.route);

    next(action);
  };
}