import 'package:bip_ui/ui/shared/ui_color_helper.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({Key key}) : super(key: key);

  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            title,
            sizedBox,
            content,
          ],
        ),
      ),
    );
  }

  Widget get sizedBox => SizedBox(
        height: 15,
      );

  Widget get title => Text(
        "Let's Get BiP'N!",
        style: TextStyle(
            color: Colors.white, fontSize: 26.0, fontWeight: FontWeight.w700),
      );

  Widget get content => RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText1,
          children: [
            TextSpan(
              text: 'To discover new services, \n',
              style: TextStyle(fontSize: 24.0, color: Colors.grey),
            ),
            WidgetSpan(
              child: Padding(
                padding: EdgeInsets.all(2),
                child: Icon(
                  LineAwesomeIcons.compass,
                  color: UIColorHelper.TABBAR_COLOR,
                  size: 30,
                ),
              ),
            ),
            TextSpan(
              text: ' tap icon and select a \n service',
              style: TextStyle(fontSize: 24.0, color: Colors.grey),
            ),
          ],
        ),
      );
}
