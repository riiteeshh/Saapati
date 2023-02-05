import 'package:flutter/material.dart';
import 'package:saapati_app/pages/login_page.dart';

class RouteManager {
  static const String loginPage = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginPage:
        return MaterialPageRoute(builder: (context) => const LoginPage());
      default:
        throw const FormatException('Route not found!');
    }
  }
}
