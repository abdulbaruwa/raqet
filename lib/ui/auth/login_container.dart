import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:raqet/redux/app/app_state.dart';
import 'package:raqet/redux/auth/auth_actions.dart';
import 'package:raqet/ui/auth/login_view.dart';
import 'package:redux/redux.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
GoogleSignIn googleSignIn = new GoogleSignIn(
  scopes: <String>[
    'email',
    'https://www.googleapis.com/auth/plus.login',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

class LoginContainer extends StatelessWidget {
  LoginContainer({Key key}) : super(key: key);

  static const String route = '/login';

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, _ViewModel>(
        converter: _ViewModel.fromStore,
        builder: (context, vm) {
          return new LoginView(
            onGoogleSignInSelected: vm.onGoogleSignInSelected,
            onEmailSignUpSelected: vm.onEmailSignUpSelected,
            onEmailSignInSelected: vm.onEmailSignInSelected,
          );
        });
  }
}

class _ViewModel {
  final Function onGoogleSignInSelected;
  final Function(BuildContext) onEmailSignUpSelected;
  final Function(BuildContext) onEmailSignInSelected;

  _ViewModel({this.onGoogleSignInSelected, this.onEmailSignUpSelected, this.onEmailSignInSelected});

  static _ViewModel fromStore(Store<AppState> store) {
    return new _ViewModel(
      onEmailSignUpSelected: (context) {
      print('auth_container.viewModel: ShowSignUpAction');
      store.dispatch(NavigateToEmailSignUpAction(context));
    }, 
      onEmailSignInSelected: (context) {
      print('auth_container.viewModel: ShowSignInAction');
      store.dispatch(NavigateToEmailSignInAction(context));
    }, 
    onGoogleSignInSelected: () async {
      print('auth_container.viewModel: Google Sign in selected');
      try {
        await googleSignIn.signIn();
        // if(settingsOptions.value == null && settingsOptions.value?.registrationComplete == false){
        // store.dispatch(new NavigateToRegistrationAction());
        // }
      } catch (error) {
        print('onGoogleSignInSelected: $error');
      }
    });
  }
}
