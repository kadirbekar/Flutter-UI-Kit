import 'package:flutter/material.dart';

class MorePage extends StatefulWidget {
  MorePage({Key key}) : super(key: key);

  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "User Info",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text(
          "User Info",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
