import 'package:bip_ui/ui/shared/ui_color_helper.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class MyBottomNavBar extends StatefulWidget {
  MyBottomNavBar({Key key}) : super(key: key);

  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

int currentIndex = 0;

class _MyBottomNavBarState extends State<MyBottomNavBar> {
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
            size: 33,
          ),
        ),
        BottomNavigationBarItem(
          title: Text("Calls"),
          icon: Icon(
            LineAwesomeIcons.phone,
            size: 33,
          ),
        ),
        BottomNavigationBarItem(
          title: Text("Discover"),
          icon: Icon(
            LineAwesomeIcons.compass,
            size: 33,
          ),
        ),
        BottomNavigationBarItem(
          title: Text("More"),
          icon: Icon(
            LineAwesomeIcons.align_justify,
            size: 33,
          ),
        ),
      ],
    );
  }
}
