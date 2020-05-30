import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

import '../../shared/common_widgets.dart' as common;
import '../../shared/ui_text_helper.dart';

class MorePage extends StatefulWidget {
  MorePage({Key key}) : super(key: key);

  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                userInfo,
                Divider(
                  thickness: 12,
                  color: Colors.grey,
                ),
                customizeButton,
                common.listTile('Games', LineAwesomeIcons.gamepad),
                common.listTile('Contact List', LineAwesomeIcons.book),
                common.listTile('Dial Pad', LineAwesomeIcons.phone),
                Divider(
                  thickness: 8,
                  color: Colors.grey,
                ),
                common.sizedBox(height: 7),
                common.listTile('Bip Web', Icons.language),
                common.listTile('Invite Friends', Icons.contact_mail),
                common.listTile('Settings', Icons.settings),
                Divider(
                  thickness: 8,
                  color: Colors.grey,
                ),
                common.listTile(
                    'Terms And Conditions', Icons.format_align_center),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget get appbar => AppBar(
        centerTitle: true,
        title: common.appbarText(UITextHelper.MORE_PAGE_APPBAR_TEXT),
        leading: common.leadingImage,
      );

  Widget get userInfo => Padding(
        padding: EdgeInsets.only(right: 48, left: 48, top: 20, bottom: 10),
        child: Row(
          children: <Widget>[
            Image.asset(UITextHelper.USER_PP),
            common.sizedBox(width: 15),
            Text(
              "Kadir BEKAR",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      );

  Widget get customizeButton => Padding(
        padding: EdgeInsets.only(right: 10, top: 10),
        child: Align(
          alignment: Alignment.centerRight,
          child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              color: Colors.grey,
              onPressed: () {},
              child: Text(
                "Customize",
                style: TextStyle(color: Colors.white),
              )),
        ),
      );
}
