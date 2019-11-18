import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:raqet/data/models/app_tab.dart';
import 'package:raqet/keys.dart';
import 'package:raqet/redux/main/tab_selector.dart';
import 'package:raqet/ui/dashboard/dashboard_container.dart';
import 'package:raqet/ui/main/active_tab.dart';

class MainTab extends StatelessWidget {
  MainTab() : super(key: RaqetKeys.homeScreen);

  static const String route = '/main';

  @override
  Widget build(BuildContext context) {
    return 
             _buildView(context);
  }

  Widget _buildView(BuildContext context) {
    return new ActiveTab(
      builder: (BuildContext context, AppTab activeTab) {
        return new Scaffold(
          body: _selectActiveTab(context, activeTab),
          bottomNavigationBar: TabSelector(),
        );
      },
    );
  }
}

Widget _selectActiveTab(BuildContext context, AppTab tab) {
  print('Selected tab is ${describeEnum(tab)}');
  switch (tab) {
    case AppTab.home:
      return DashboardContainer();
      break;
    // case AppTab.upcoming:
    //   // return new Dashboard();
    //   break;
    // case AppTab.basket:
    //   return new BasketContainer();
    //   break;
    // case AppTab.search:
    //   print('About to load Search tab.');
    //   return new Container(child: new TournamentSearch());
    //   break;
    // case AppTab.profile:
    //   return new Profile();
    //   break;
    default:
      return new Container(child: const Text('Unknown tab'));
  }
}

class TabItem {
  const TabItem({this.title, this.icon});
  final String title;
  final IconData icon;
}

const List<TabItem> TabItems = const <TabItem>[
  const TabItem(title: 'Home', icon: Icons.home),
  const TabItem(title: 'Upcoming', icon: Icons.watch_later),
  const TabItem(title: 'Search', icon: Icons.search),
  const TabItem(title: 'Basket', icon: Icons.shopping_basket),
  const TabItem(title: 'Settings', icon: Icons.settings),
];
