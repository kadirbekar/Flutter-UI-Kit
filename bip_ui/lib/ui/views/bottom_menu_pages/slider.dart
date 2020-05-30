import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../shared/ui_text_helper.dart';

class MySlider extends StatelessWidget {
  static final List<Widget> items = [
    Image.asset(UITextHelper.SLIDER_1),
    Image.asset(UITextHelper.SLIDER_2),
    Image.asset(UITextHelper.SLIDER_3),
    Image.asset(UITextHelper.SLIDER_4),
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: items,
      options: CarouselOptions(
        aspectRatio: 16 / 9,
        height: 200,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
