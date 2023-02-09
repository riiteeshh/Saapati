import 'package:flutter/material.dart';
import 'package:saapati_app/pages/loan_payment_page.dart';
import 'package:saapati_app/pages/login_page.dart';
import 'package:saapati_app/pages/main_layout_page.dart';
import 'package:saapati_app/pages/recieve_request_page.dart';

class RouteManager {
  static const String loginPage = '/';
  static const String mainLayoutPage = '/mainLayoutPage';
  static const String loanPaymentPage = '/loanPaymentPage';
  static const String recieveRequestPage = '/recieveRequestPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginPage:
        return MaterialPageRoute(builder: (context) => const LoginPage());
      case mainLayoutPage:
        return MaterialPageRoute(builder: (context) => const MainLayoutPage());
      case recieveRequestPage:
        return MaterialPageRoute(
            builder: (context) => const RecieveRequestPage());
      case loanPaymentPage:
        return MaterialPageRoute(builder: (context) => const LoanPaymentPage());
      default:
        throw const FormatException('Route not found!');
    }
  }
}
