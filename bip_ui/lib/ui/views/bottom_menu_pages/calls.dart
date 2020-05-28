import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  Calls({Key key}) : super(key: key);

  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calls",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Center(
          child: Text(
            "Calls",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
