import 'package:flutter/material.dart';
import 'package:provider_app/route_folder/routes_name.dart';
import 'package:provider_app/screens/home.dart';
import 'package:provider_app/screens/show_counter.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homepage:
        return MaterialPageRoute(builder: (_) {
          return const HomePage();
        });
      case RouteName.showCounter:
        return MaterialPageRoute(builder: (_) {
          return const ShowCounter();
        });
      default:
        return MaterialPageRoute(builder: (_) {
          return const HomePage();
        });
    }
  }
}
