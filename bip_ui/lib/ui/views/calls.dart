import 'package:bip_ui/ui/widgets/bottom_nav_bar.dart';
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
      bottomNavigationBar: MyBottomNavBar(),
      appBar: AppBar(
        title: Text("Calls",style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text("Calls",style: TextStyle(color: Colors.black),),
        ),
      ),
    );
  }
}
