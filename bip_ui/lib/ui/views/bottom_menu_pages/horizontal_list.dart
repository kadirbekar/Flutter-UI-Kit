import 'package:flutter/material.dart';

import '../../shared/common_widgets.dart' as common;
import '../../shared/ui_text_helper.dart';

class MyHorizontalList extends StatelessWidget {
  const MyHorizontalList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          listItem(UITextHelper.SLIDER_1),
          common.sizedBox(width: 25),
          listItem(UITextHelper.SLIDER_2),
          common.sizedBox(width: 25),
          listItem(UITextHelper.SLIDER_3),
          common.sizedBox(width: 25),
          listItem(UITextHelper.SLIDER_4),
          common.sizedBox(width: 25),
          listItem(UITextHelper.SLIDER_3),
          common.sizedBox(width: 25),
          listItem(UITextHelper.SLIDER_4),
        ],
      ),
    );
  }

  listItem(String imagePath) {
    return Column(
      children: <Widget>[
        Container(
          height: 75.0,
          width: 75.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
                image: AssetImage(imagePath), fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}
