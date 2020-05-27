import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

import '../shared/ui_color_helper.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Let's Get BiP'N!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26.0,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyText1,
                children: [
                  TextSpan(
                    text: 'To start a new chat, tap ',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.grey
                    ),
                  ),
                  WidgetSpan(
                    child: Padding(
                      padding: EdgeInsets.all(2),
                      child: Icon(
                        LineAwesomeIcons.comment,
                        color: UIColorHelper.TABBAR_COLOR,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: '\n icon and select a contact',
                    style: TextStyle(fontSize: 24.0, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
