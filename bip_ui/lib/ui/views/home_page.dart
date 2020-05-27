import 'package:bip_ui/ui/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

import '../shared/ui_color_helper.dart';
import '../shared/ui_text_helper.dart';
import 'chat_page.dart';
import 'services_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

int currentIndex = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: MyBottomNavBar(),
        floatingActionButton: fabButtons,
        appBar: appbar,
        body: Container(
          child: TabBarView(
            children: [
              ChatPage(),
              ServicesPage(),
            ],
          ),
        ),
      ),
    );
  }

  Widget get fabButtons => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () => print("test"),
            child: Icon(
              LineAwesomeIcons.smile_o,
              color: Colors.white,
              size: 35,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () => print("test"),
            child: Icon(
              LineAwesomeIcons.comment,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      );

  Widget get appbar => AppBar(
        bottom: TabBar(
          indicatorColor: UIColorHelper.TABBAR_COLOR,
          labelColor: UIColorHelper.TABBAR_COLOR,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(
              child: Text(
                "CHATS",
                style: TextStyle(fontSize: 17.5),
              ),
            ),
            Tab(
              child: Text(
                "SERVICES",
                style: TextStyle(fontSize: 17.5),
              ),
            ),
          ],
        ),
        centerTitle: true,
        title: Text(
          UITextHelper.HOME_PAGE_APPBAR_TEXT,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        leading: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Image.asset(UITextHelper.APPBAR_LOGO)),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: IconButton(
                icon: Icon(
                  LineAwesomeIcons.search,
                ),
                onPressed: () => print("test")),
          )
        ],
      );
}
