import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

import '../../shared/ui_color_helper.dart';
import '../../shared/ui_text_helper.dart';
import '../chat_page.dart';
import '../services_page.dart';

class MessagesPage extends StatefulWidget {
  MessagesPage({Key key}) : super(key: key);

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
          smileFabButton,
          SizedBox(
            height: 10,
          ),
          messageFabButton,
        ],
      );

  Widget get messageFabButton => FloatingActionButton(
        heroTag: 'smile',
        backgroundColor: UIColorHelper.FAB_MESSAGE_BACKGROUND,
        onPressed: () => print("test"),
        child: Icon(
          LineAwesomeIcons.comment,
          color: Colors.white,
          size: 35,
        ),
      );

  Widget get smileFabButton => FloatingActionButton(
        heroTag: 'message',
        backgroundColor: UIColorHelper.FAB_SMILE_BACKGROUND,
        onPressed: () => print("test"),
        child: Icon(
          LineAwesomeIcons.smile_o,
          color: Colors.white,
          size: 35,
        ),
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
          searchIcon,
        ],
      );

  Widget get searchIcon => Padding(
        padding: EdgeInsets.only(right: 5),
        child: IconButton(
          icon: Icon(
            LineAwesomeIcons.search,
          ),
          onPressed: () => Navigator.of(context).pushNamed('/calls'),
        ),
      );
}
