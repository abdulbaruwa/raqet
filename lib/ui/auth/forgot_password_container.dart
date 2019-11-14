import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:raqet/redux/app/app_state.dart';
import 'package:raqet/redux/auth/auth_actions.dart';
import 'package:raqet/ui/auth/forgot_password_view.dart';
import 'package:redux/redux.dart';

class ForgotPasswordContainer extends StatelessWidget {
  ForgotPasswordContainer({Key key}) : super(key: key);

  static const String route = '/forgot-password';

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, _ViewModel>(
        converter: _ViewModel.fromStore,
        builder: (context, vm) {
          return new ForgotPasswordView(
              onEmailSignInSelected: vm.onEmailSignInSelected,
              onRenewPassword: vm.onRenewPassword);
        });
  }
}

class _ViewModel {
  final Function(BuildContext) onRenewPassword;
  final Function(BuildContext) onEmailSignInSelected;

  _ViewModel({this.onRenewPassword, this.onEmailSignInSelected});

  static _ViewModel fromStore(Store<AppState> store) {
    return new _ViewModel(onEmailSignInSelected: (context) {
      store.dispatch(NavigateToEmailSignInAction(context));
    }, onRenewPassword: (context) async {
      try {
        //await googleSignIn.signIn();
        // if(settingsOptions.value == null && settingsOptions.value?.registrationComplete == false){
        // store.dispatch(new NavigateToRegistrationAction());
        // }
      } catch (error) {
        print('onRenewPassword: $error');
      }
    });
  }
}
