import 'package:flutter/material.dart';

import '../custom_navigation_bar/custom_nav_bar.dart';
import '../custom_navigation_bar/tab_items.dart';
import 'bottom_menu_pages/calls.dart';
import 'bottom_menu_pages/discover_page.dart';
import 'bottom_menu_pages/home_page.dart';
import 'bottom_menu_pages/more_page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TabItem _currentTab = TabItem.Messages;

  Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys = {
    TabItem.Messages: GlobalKey<NavigatorState>(),
    TabItem.Calls: GlobalKey<NavigatorState>(),
    TabItem.Discover: GlobalKey<NavigatorState>(),
    TabItem.More: GlobalKey<NavigatorState>(),
  };

  Map<TabItem, Widget> allPages() {
    return {
      TabItem.Messages: MessagesPage(),
      TabItem.Calls: Calls(),
      TabItem.Discover: DiscoverPage(),
      TabItem.More: MorePage(),
    };
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async =>
          !await navigatorKeys[_currentTab].currentState.maybePop(),
      child: CustomNavBar(
          currentTab: _currentTab,
          onSelectedTab: (selectedPage) {
            if (selectedPage == _currentTab) {
              navigatorKeys[selectedPage]
                  .currentState
                  .popUntil((route) => route.isFirst);
            } else {
              setState(() {
                _currentTab = selectedPage;
              });
            }
          },
          createdPage: allPages(),
          navigatorKeys: navigatorKeys),
    );
  }
}
