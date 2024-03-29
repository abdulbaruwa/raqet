import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:raqet/data/models/app_tab.dart';
import 'package:raqet/redux/app/app_state.dart';
import 'package:raqet/redux/main/main_actions.dart';
import 'package:redux/redux.dart';

class TabSelector extends StatelessWidget {
  TabSelector({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, _ViewModel>(
      distinct: true,
      converter: _ViewModel.fromStore,
      builder: (context, vm) {
        return
        Theme.of(context).platform == TargetPlatform.iOS
          ? new CupertinoTabBar(
              activeColor: Colors.blueGrey,
              onTap: vm.onTabSelected,
              items: TabItems.map((tabItem) {
                return new BottomNavigationBarItem(
                  title: new Text(tabItem.title),
                  icon: new Icon(tabItem.icon),
                );
              }).toList(),
            )
          : new BottomNavigationBar(
              currentIndex: AppTab.values.indexOf(vm.activeTab),
              onTap: vm.onTabSelected,
              type: BottomNavigationBarType.shifting,
              items: TabItems.map((tabItem) {
                return new BottomNavigationBarItem(
                    title: new Text(tabItem.title, style: new TextStyle(color: Colors.black),),
                    icon: new Icon(tabItem.icon, color: Colors.black, key: tabItem.key,));
              }).toList(),
            ); 
      },
    );
  }
}

class _ViewModel {
  final AppTab activeTab;
  final Function(int) onTabSelected;

  _ViewModel({
    @required this.activeTab,
    @required this.onTabSelected,
  });

  static _ViewModel fromStore(Store<AppState> store) {
    return new _ViewModel(
      activeTab: store.state.activeTab,
      onTabSelected: (index) {
        store.dispatch(UpdateTabAction((AppTab.values[index])));
      },
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _ViewModel &&
          runtimeType == other.runtimeType &&
          activeTab == other.activeTab;

  @override
  int get hashCode => activeTab.hashCode;
}
