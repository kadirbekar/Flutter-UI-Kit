import 'package:bip_ui/ui/views/bottom_menu_pages/horizontal_list.dart'
    as horizontal;
import 'package:flutter/material.dart';

import '../../shared/common_widgets.dart' as common;
import '../../shared/ui_text_helper.dart';
import 'slider.dart' as slider;

class DiscoverPage extends StatefulWidget {
  DiscoverPage({Key key}) : super(key: key);

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: slider.MySlider(),
          ),
          common.sizedBox(height: 10),
          Divider(
            thickness: 8,
            color: Colors.grey,
          ),
          common.sizedBox(height: 15),
          appsLabel('My Apps'),
          common.sizedBox(height: 15),
          horizontal.MyHorizontalList(),
          Divider(
            thickness: 8,
            color: Colors.grey,
          ),
          appsLabel('News'),
          common.sizedBox(height: 15),
          horizontal.MyHorizontalList(),
        ],
      ),
    );
  }

  Widget appsLabel(String label) => Padding(
        padding: EdgeInsets.only(left: 10),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            label,
            style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.w700),
          ),
        ),
      );

  Widget get appbar => AppBar(
        centerTitle: true,
        title: common.appbarText(UITextHelper.DISCOVER_PAGE_APPBAR_TEXT),
        leading: common.leadingImage,
        actions: <Widget>[
          common.searchIcon(context),
        ],
      );
}
