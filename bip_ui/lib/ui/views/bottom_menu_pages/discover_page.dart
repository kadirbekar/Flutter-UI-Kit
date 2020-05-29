import 'package:flutter/material.dart';
import 'package:bip_ui/ui/shared/common_widgets.dart' as common;

class DiscoverPage extends StatefulWidget {
  DiscoverPage({Key key}) : super(key: key);

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: common.appbarText("Discover"),
        leading: common.leadingImage,
        actions: <Widget>[
          common.searchIcon(context),
        ],
      ),
      body: Center(
        child: Text(
          "Discover Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
