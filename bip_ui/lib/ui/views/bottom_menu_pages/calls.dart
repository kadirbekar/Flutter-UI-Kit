import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

import '../../shared/common_widgets.dart' as common;
import '../../shared/ui_color_helper.dart';
import '../../shared/ui_text_helper.dart';

class Calls extends StatefulWidget {
  Calls({Key key}) : super(key: key);

  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  List<String> names = [
    "Christian Bale",
    "Robert De Niro",
    "Johnny Depp",
    "Jake Gyllenhaal",
    "Kevin Spacey",
    "Elijah Wood",
    "Logan Lerman",
    "Robert Downey Jr.",
    "Edward Norton",
    "Charlize Theron",
    "Liam Neeson",
    "Ordinary Magic",
    "Ryan Reynolds",
    "Will Smith",
    "Scarlet Johansson",
    "Mila Kunis",
    "Chloe Grace Moretz",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: fabButtons,
      appBar: appbar,
      body: ListView(
        children: <Widget>[
          expansionTile,
          Divider(
            thickness: 15,
            color: Colors.grey,
          ),
          common.sizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                LineAwesomeIcons.video_camera,
                size: 45,
              ),
              common.sizedBox(width: 15),
              videoMessage,
            ],
          ),
          common.sizedBox(height: 5),
          Divider(
            thickness: 8,
            color: Colors.grey,
          ),
          common.sizedBox(height: 5),
          bipContactsLabel,
          common.sizedBox(height: 10),
          returnMyContacts
        ],
      ),
    );
  }

  Widget get fabButtons => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          phoneFabButton,
          common.sizedBox(height: 10),
          numbersFabButton,
          common.sizedBox(height: 50),
        ],
      );

  Widget get phoneFabButton => FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
        child: Icon(
          LineAwesomeIcons.phone,
          color: Colors.white,
          size: 35,
        ),
      );

  Widget get numbersFabButton => FloatingActionButton(
        backgroundColor: Colors.grey,
        onPressed: () {},
        child: Icon(
          LineAwesomeIcons.tty,
          color: Colors.white,
          size: 35,
        ),
      );

  Widget get appbar => AppBar(
        leading: common.leadingImage,
        centerTitle: true,
        title: common.appbarText(UITextHelper.CALLS_PAGE_APPBAR_TEXT),
        actions: <Widget>[
          common.searchIcon(context),
        ],
      );

  Widget get returnMyContacts => ListView.separated(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                names[index].substring(0, 2),
                style: TextStyle(color: Colors.black, fontSize: 19.0),
              ),
            ),
            title: Text(
              names[index],
              style: TextStyle(color: Colors.white, fontSize: 19.0),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                listTileIcon(LineAwesomeIcons.video_camera),
                common.sizedBox(width: 10),
                listTileIcon(LineAwesomeIcons.phone),
                common.sizedBox(width: 10),
              ],
            ),
          );
        },
        itemCount: names.length,
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey,
          indent: 75,
        ),
      );

  Widget listTileIcon(IconData iconData) => Icon(
        iconData,
        size: 35,
        color: UIColorHelper.TABBAR_COLOR,
      );

  Widget get bipContactsLabel => Padding(
        padding: EdgeInsets.only(left: 15),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Bip Contacts",
            style: TextStyle(fontSize: 17),
          ),
        ),
      );

  Widget get videoMessage => RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Start Group Video Call',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                  color: Colors.grey),
            ),
            TextSpan(
              text: '\nSelect your contacts, start video call right\naway',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0,
                  color: Colors.grey),
            ),
          ],
        ),
      );

  Widget get expansionTile => ExpansionTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              LineAwesomeIcons.heart,
              color: Colors.blue,
            ),
            common.sizedBox(width: 10),
            Text(
              "Set Favourite Contacts",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        children: <Widget>[],
      );
}
