import 'package:flutter/material.dart';
import 'package:saapati_app/pages/login_page.dart';
import 'package:saapati_app/pages/main_layout_page.dart';

class RouteManager {
  static const String loginPage = '/';
  static const String mainLayoutPage = '/mainLayoutPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginPage:
        return MaterialPageRoute(builder: (context) => const LoginPage());
      case mainLayoutPage:
        return MaterialPageRoute(builder: (context) => const MainLayoutPage());
      default:
        throw const FormatException('Route not found!');
    }
  }
}
