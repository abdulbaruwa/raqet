import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:raqet/data/models/app_tab.dart';
import 'package:raqet/redux/app/app_state.dart';
import 'package:redux/redux.dart';


class ActiveTab extends StatelessWidget {
  final ViewModelBuilder<AppTab> builder;
  ActiveTab({Key key, @required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, AppTab>(
      distinct: true,
      converter: (Store<AppState> store) => store.state.activeTab,
      builder: builder,
    );
  }
}
