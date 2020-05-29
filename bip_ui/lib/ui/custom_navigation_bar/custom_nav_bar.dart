import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'tab_items.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar(
      {Key key,
      @required this.currentTab,
      @required this.onSelectedTab,
      @required this.createdPage,
      @required this.navigatorKeys})
      : super(key: key);

  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectedTab;
  final Map<TabItem, Widget> createdPage;
  final Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          _createNavBar(TabItem.Messages),
          _createNavBar(TabItem.Calls),
          _createNavBar(TabItem.Discover),
          _createNavBar(TabItem.More),
        ],
        onTap: (index) => onSelectedTab(TabItem.values[index]),
      ),
      tabBuilder: (context, index) {
        final showedItem = TabItem.values[index];

        return CupertinoTabView(
          navigatorKey: navigatorKeys[showedItem],
          builder: (context) {
            return createdPage[showedItem];
          },
        );
      },
    );
  }

  BottomNavigationBarItem _createNavBar(TabItem tabItem) {
    final createdTab = TabItemData.allTabs[tabItem];

    return BottomNavigationBarItem(
      icon: Icon(
        createdTab.icon,
        size: 30,
      ),
      title: Text(
        createdTab.title,
        style: TextStyle(fontSize: 16.0),
      ),
    );
  }
}
