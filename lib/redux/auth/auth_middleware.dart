import 'package:flutter/material.dart';
import 'package:raqet/redux/app/app_state.dart';
import 'package:raqet/redux/auth/auth_actions.dart';
import 'package:raqet/ui/auth/login_container.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createStoreAuthMiddleware(){

  final loginInit = _createLoginInit();
  return [TypedMiddleware<AppState, LoadUserLogin>(loginInit)];
}

Middleware<AppState> _createLoginInit() {
  return (Store<AppState> store, dynamic dynamicAction, NextDispatcher next) {
    final action = dynamicAction as LoadUserLogin;

    Navigator.of(action.context).pushReplacementNamed(LoginContainer.route);

    next(action);
  };
}
