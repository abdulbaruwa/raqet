import 'package:raqet/keys.dart';
import 'package:raqet/redux/app/app_state.dart';
import 'package:raqet/redux/auth/auth_actions.dart';
import 'package:raqet/ui/auth/sign_up_container.dart';
import 'package:redux/redux.dart';


class NavigationMiddleware extends MiddlewareClass<AppState>{
  @override
  void call(Store<AppState> store, dynamic action, NextDispatcher next) {
    if(action is NavigateToEmailSignUpAction){
      RaqetKeys.navKey.currentState.pushReplacementNamed(SignUpContainer.route);
    }

    // if(action is NavigateToEmailSignInAction){
    //   TennisAiKeys.navKey.currentState.pushNamed(TennisAiRoutes.signIn);
    // }

    // if(action is NavigateToRegistrationAction){
    //   TennisAiKeys.navKey.currentState.pushNamed(TennisAiRoutes.registration);
    // }
    next(action);
  }
}