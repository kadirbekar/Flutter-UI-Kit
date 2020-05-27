import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../ui/views/calls.dart';
import '../../ui/views/home_page.dart';
import '../../ui/views/not_found_page.dart';
import '../constants/route_constants.dart';

class RouteGeneratorService {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstants.HOME:
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      case RouteConstants.CALLS:
        return MaterialPageRoute(builder: (_) => Calls());
        break;
      default:
        return MaterialPageRoute(builder: (_) => NotFoundPage());
        break;
    }
  }
}
