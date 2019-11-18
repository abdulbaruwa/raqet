import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:raqet/data/models/email_sign_up_Info.dart';
import 'package:raqet/redux/app/app_state.dart';
import 'package:raqet/redux/auth/auth_actions.dart';
import 'package:raqet/redux/auth/settings_reducer.dart';
import 'package:raqet/redux/auth/settings_state.dart';
import 'package:raqet/redux/dashboard/dashboard_actions.dart';
import 'package:raqet/ui/auth/sign_in_view.dart';
import 'package:raqet/utils/id_generator.dart';
import 'package:redux/redux.dart';

class SignInContainer extends StatelessWidget {
  static final route = '/signin';

  SignInContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, SignInViewModel>(
        distinct: true,
        converter: SignInViewModel.fromStore,
        builder: (context, vm) {
          return new SignInView(
              onSignIn: vm.onSignIn,
              onPasswordResetSelected: vm.onPasswordResetSelected,
              onEmailSignUpSelected: vm.onEmailSignUpSelected);
        });
  }
}

class SignInViewModel {
  Function(EmailSignUpInfo signUpInfo, BuildContext context) onSignIn;
  Function(BuildContext) onEmailSignUpSelected;
  Function(BuildContext) onPasswordResetSelected;
  SignInViewModel(
      {this.onSignIn,
      this.onEmailSignUpSelected,
      this.onPasswordResetSelected});

  static SignInViewModel fromStore(Store<AppState> store) {
    return new SignInViewModel(onEmailSignUpSelected: (context) {
      store.dispatch(NavigateToEmailSignUpAction(context));
    }, onPasswordResetSelected: (context) {
      store.dispatch(NavigateToPasswordResetAction(context));
    }, onSignIn: (signInInfo, context) {
      print('Sign in player with email');

      FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: signInInfo.email, password: signInInfo.password)
          .then((result) {
        result.user.getIdToken().then((onValue) {
          print('Auth token retrieved for signed in User: $onValue');

          var playerId = IdGenerator().newPlayerId(result.user.uid);
          var settingState = SettingsState().rebuild((b) => b
            ..signedIn = true
            ..email = result.user.email
            ..playerId = playerId
            ..name = result.user.displayName ?? ''
            ..photoUrl = result.user.photoUrl ?? '');

          final Completer<Null> completer = Completer<Null>();

          store.dispatch(SignInCompletedAction(settings: settingState, completer: completer));
          store.dispatch(ViewDashboard(context: context));

          //   store.dispatch(new SignInCompletedAction(setting));
          //   store.dispatch(new NavigateToRegistrationAction());
        }).catchError((onError) {
          print('Error getting auth token for signed in user $onError');
        });
        print('Firebase user auth completed');
      }).catchError((onError) {
        print('Error signing in user with email $onError');
      });
    });
  }
}
