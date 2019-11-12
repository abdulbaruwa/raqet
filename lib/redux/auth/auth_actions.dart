
import 'package:flutter/cupertino.dart';
import 'package:raqet/redux/app/app_state.dart';

class LoadStateRequest {
  LoadStateRequest(this.context);

  final BuildContext context;
}

class UserLogout{}

class LoadUserLogin {
  LoadUserLogin(this.context);

  final BuildContext context;
}

class LoadStateSuccess {
  LoadStateSuccess(this.state);

  final AppState state;
}
