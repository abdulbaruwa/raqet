
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raqet/redux/app/app_state.dart';
import 'package:raqet/ui/app/app_builder.dart';
import 'package:raqet/ui/auth/init_screen.dart';
import 'package:raqet/ui/auth/login_container.dart';
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
        final state = widget.store.state;
        return MaterialApp(
          //debugShowCheckedModeBanner: false,
          //showPerformanceOverlay: true,
          home: state.settingsState.signedIn == false
              ? Material(
                  color: Colors.grey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.lock,
                            size: 24.0,
                            color: Colors.grey[400],
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Text(
                            'locked',
                            style: TextStyle(
                              fontSize: 32.0,
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                      RaisedButton(
                        onPressed: () => {},
                        child: Text('authenticate'),
                      )
                    ],
                  ),
                )
              : InitScreen(),
          theme : ThemeData().copyWith(
                  primaryColor: const Color(0xFF117cc1),
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
          },
        );
      }),
    );
  }
}