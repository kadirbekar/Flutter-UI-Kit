
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

import '../shared/ui_color_helper.dart';
import '../views/calls.dart';
import '../views/discover_page.dart';
import '../views/home_page.dart';
import '../views/more_page.dart';

class MyBottomNavBar extends StatefulWidget {
  MyBottomNavBar({Key key}) : super(key: key);

  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  final double iconSize = 33;
  int currentIndex = 0;

  HomePage homePage;
  Calls calls;
  DiscoverPage discoverPage;
  MorePage morePage;
  List<Widget> allPages = [];

  @override
  void initState() {
    super.initState();
    homePage = HomePage();
    calls = Calls();
    discoverPage = DiscoverPage();
    morePage = MorePage();
    allPages = [homePage, calls, discoverPage, morePage];
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: UIColorHelper.TABBAR_COLOR,
      selectedLabelStyle: TextStyle(color: UIColorHelper.TABBAR_COLOR),
      selectedIconTheme: IconThemeData(color: UIColorHelper.TABBAR_COLOR),
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          title: Text("Messages"),
          icon: Icon(
            LineAwesomeIcons.comment,
            size: iconSize,
          ),
        ),
        BottomNavigationBarItem(
          title: Text("Calls"),
          icon: Icon(
            LineAwesomeIcons.phone,
            size: iconSize,
          ),
        ),
        BottomNavigationBarItem(
          title: Text("Discover"),
          icon: Icon(
            LineAwesomeIcons.compass,
            size: iconSize,
          ),
        ),
        BottomNavigationBarItem(
          title: Text("More"),
          icon: Icon(
            LineAwesomeIcons.align_justify,
            size: iconSize,
          ),
        ),
      ],
    );
  }
}
