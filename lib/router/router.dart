import 'package:flutter/material.dart';
import 'package:publish/presentation/Oppotunities/opportunities_page.dart';
import 'package:publish/presentation/auth/login_page.dart';
import 'package:publish/presentation/auth/register.dart';
import 'package:publish/presentation/home/home_page.dart';
import 'package:publish/presentation/not_found/not_found.dart';
import 'package:publish/router/route_constants.dart';

class Routerr {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case opportunitiesRoute:
        return MaterialPageRoute(builder: (_) => OpportunitiesPage());
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case loginRoute:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterPage());
      default:
        return MaterialPageRoute(builder: (_) => NotFoundPage());
    }
  }
}
