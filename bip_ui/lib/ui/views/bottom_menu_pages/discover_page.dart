import 'package:flutter/material.dart';

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
        title: Text(
          "Discover Page",
          style: TextStyle(color: Colors.white),
        ),
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
