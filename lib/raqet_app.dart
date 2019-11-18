
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:raqet/redux/app/app_state.dart';
import 'package:raqet/ui/app/app_builder.dart';
import 'package:raqet/ui/auth/forgot_password_container.dart';
import 'package:raqet/ui/auth/init_screen.dart';
import 'package:raqet/ui/auth/login_container.dart';
import 'package:raqet/ui/auth/sign_in_container.dart';
import 'package:raqet/ui/auth/sign_up_container.dart';
import 'package:raqet/ui/dashboard/dashboard_container.dart';
import 'package:raqet/ui/main/main_tab.dart';
import 'package:redux/redux.dart';

class RaqetApp extends StatefulWidget{
  const RaqetApp({Key key, this.store}):super(key: key);

  final Store<AppState> store;

  _RaqetAppState createState() => _RaqetAppState();
}

class _RaqetAppState extends State<RaqetApp>{

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: widget.store,
      child: AppBuilder(builder: (context) {
        return MaterialApp(
          //debugShowCheckedModeBanner: false,
          //showPerformanceOverlay: true,
          home: InitScreen(),
          theme : ThemeData().copyWith(
                  primaryColor: Colors.orange,// const Color(0xFF117cc1),
                  primaryColorLight: const Color(0xFF5dabf4),
                  primaryColorDark: const Color(0xFF0D5D91),
                  indicatorColor: Colors.white,
                  bottomAppBarColor: Colors.grey.shade300,
                  backgroundColor: Colors.grey.shade200,
                  buttonColor: const Color(0xFF0D5D91),
                ),
          title: 'RAQET',
          routes: {
            LoginContainer.route: (context) {
              return LoginContainer();
            },
            SignUpContainer.route:(context){
              return SignUpContainer();
            },
            SignInContainer.route:(context) => SignInContainer(),
            ForgotPasswordContainer.route:(context) => ForgotPasswordContainer(),
            DashboardContainer.route:(context) => DashboardContainer(),
            MainTab.route:(context) => MainTab()
          },
        );
      }),
    );
  }
}