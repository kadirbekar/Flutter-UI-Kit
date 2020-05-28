
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../ui/views/bottom_menu_pages/calls.dart';
import '../../ui/views/bottom_menu_pages/discover_page.dart';
import '../../ui/views/bottom_menu_pages/home_page.dart';
import '../../ui/views/bottom_menu_pages/more_page.dart';
import '../../ui/views/main_page.dart';
import '../../ui/views/not_found_page.dart';
import '../constants/route_constants.dart';

class RouteGeneratorService {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstants.MAIN_PAGE:
        return MaterialPageRoute(builder: (_) => MainPage());
        break;
      case RouteConstants.HOME:
        return MaterialPageRoute(builder: (_) => MessagesPage());
        break;
      case RouteConstants.CALLS:
        return MaterialPageRoute(builder: (_) => Calls());
        break;
      case RouteConstants.DISCOVER:
        return MaterialPageRoute(builder: (_) => DiscoverPage());
        break;
      case RouteConstants.MORE:
        return MaterialPageRoute(builder: (_) => MorePage());
        break;
      default:
        return MaterialPageRoute(builder: (_) => NotFoundPage());
        break;
    }
  }
}
