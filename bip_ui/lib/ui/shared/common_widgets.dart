import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

import 'ui_text_helper.dart';

Widget sizedBox({double width = 0, double height = 0}) => SizedBox(
      width: width,
      height: height,
    );

Widget searchIcon(BuildContext context) => Padding(
      padding: EdgeInsets.only(right: 5),
      child: IconButton(
        icon: Icon(
          LineAwesomeIcons.search,
        ),
        onPressed: () => print("test"),
      ),
    );

Widget get leadingImage => Padding(
    padding: EdgeInsets.only(left: 10),
    child: Image.asset(UITextHelper.APPBAR_LOGO));

Widget appbarText(String label) => Text(
      label,
      style: TextStyle(
          color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
    );

Widget listTile(String label, IconData icon) => ListTile(
      leading: Icon(
        icon,
        size: 35,
        color: Colors.grey,
      ),
      title: Text(
        label,
        style: TextStyle(
            fontSize: 19, color: Colors.white, fontWeight: FontWeight.w700),
      ),
    );
