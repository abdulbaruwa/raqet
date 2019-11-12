import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:raqet/redux/app/app_state.dart';
import 'package:raqet/redux/auth/auth_actions.dart';
import 'package:redux/redux.dart';

class InitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreBuilder(
        onInit: (Store<AppState> store) =>
            store.dispatch(LoadStateRequest(context)),
        builder: (BuildContext context, Store<AppState> store) {
          return Container(
            color: Colors.orange,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: Center(
                    child: new Text('RAQET',
                        style: Theme.of(context)
                            .accentTextTheme
                            .display1
                            .copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 50.0)),
                  ),
                ),
                // SizedBox(
                //   height: 4.0,
                //   child: LinearProgressIndicator(),
                // )
              ],
            ),
          );
        });
  }
}
