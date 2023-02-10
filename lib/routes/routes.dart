import 'package:flutter/material.dart';
import 'package:saapati_app/pages/loan_payment_page.dart';
import 'package:saapati_app/pages/loan_request_page.dart';
import 'package:saapati_app/pages/login_page.dart';
import 'package:saapati_app/pages/main_layout_page.dart';
import 'package:saapati_app/pages/my_cards_page.dart';
import 'package:saapati_app/pages/recieve_request_page.dart';
import 'package:saapati_app/pages/statistics_page.dart';

class RouteManager {
  static const String loginPage = '/';
  static const String mainLayoutPage = '/mainLayoutPage';
  static const String myCardPage = '/myCardPage';
  static const String loanPaymentPage = '/loanPaymentPage';
  static const String recieveRequestPage = '/recieveRequestPage';
  static const String statisticsPage = '/statisticsPage';
  static const String loanRequestPage = '/loanRequestPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginPage:
        return MaterialPageRoute(builder: (context) => const LoginPage());
      case myCardPage:
        return MaterialPageRoute(builder: (context) => const MyCardPage());
      case statisticsPage:
        return MaterialPageRoute(builder: (context) => const StatisticsPage());
      case mainLayoutPage:
        return MaterialPageRoute(builder: (context) => const MainLayoutPage());
      case recieveRequestPage:
        return MaterialPageRoute(
            builder: (context) => const RecieveRequestPage());
      case loanRequestPage:
        return MaterialPageRoute(builder: (context) => const LoanRequestPage());
      case loanPaymentPage:
        return MaterialPageRoute(builder: (context) => const LoanPaymentPage());
      default:
        throw const FormatException('Route not found!');
    }
  }
}
