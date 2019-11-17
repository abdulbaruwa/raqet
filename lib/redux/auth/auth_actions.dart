import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:raqet/redux/app/app_state.dart';
import 'package:raqet/redux/auth/settings_state.dart';

class LoadStateRequest {
  LoadStateRequest(this.context);

  final BuildContext context;
}

class UserLogout {}

class LoadUserLogin {
  LoadUserLogin(this.context);

  final BuildContext context;
}

class LoadStateSuccess {
  LoadStateSuccess(this.state);

  final AppState state;
}

class NavigateToEmailSignUpAction {
  NavigateToEmailSignUpAction(this.context);

  final BuildContext context;
}

class NavigateToEmailSignInAction {
  NavigateToEmailSignInAction(this.context);

  final BuildContext context;
}

class NavigateToPasswordResetAction {
  NavigateToPasswordResetAction(this.context);

  final BuildContext context;
}

class SignInCompletedAction{
  final SettingsState settings;
  final Completer completer;
  SignInCompletedAction({this.settings, this.completer});
}
