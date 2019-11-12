import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:raqet/data/models/email_sign_up_Info.dart';
import 'package:raqet/redux/app/app_state.dart';
import 'package:raqet/redux/auth/auth_actions.dart';
import 'package:raqet/ui/auth/sign_up_view.dart';
import 'package:redux/redux.dart';

class SignUpContainer extends StatelessWidget {
  SignUpContainer({Key key}) : super(key: key);

  static final route = '/signup';

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, SignUpViewModel>(
        distinct: true,
        converter: SignUpViewModel.fromStore,
        builder: (context, vm) {
          return new SignUpView(onSignUp: vm.onSignUp);
        });
  }
}

class SignUpViewModel {
  Function() onRegistrationCancelled;
  Function(EmailSignUpInfo signUpInfo) onSignUp;

  SignUpViewModel({this.onRegistrationCancelled, this.onSignUp});
  static SignUpViewModel fromStore(Store<AppState> store) {
    return SignUpViewModel(onSignUp: (signUpInfo) {
      print('Sign up player with email');
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: signUpInfo.email, password: signUpInfo.password)
          .then((user) {
        print('Firebase user created with uid {user.user.uid}');

        store.dispatch(new NavigateToEmailSignInAction());
        // store.dispatch(new SignUpCompletedAction(signUpInfo.email, user.user.uid));
      }).catchError((onError) {
        print('Error signing up user: $onError');
      });
    });
  }
}
