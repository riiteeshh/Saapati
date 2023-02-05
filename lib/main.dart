import 'package:flutter/material.dart';
import 'package:saapati_app/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteManager.loginPage,
      onGenerateRoute: RouteManager.generateRoute,
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            selectedLabelStyle: TextStyle(fontFamily: 'Poppins')),
        navigationBarTheme: const NavigationBarThemeData(
            indicatorColor: Colors.blue,
            backgroundColor: Colors.transparent,
            labelTextStyle: MaterialStatePropertyAll(TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                fontFamily: 'Poppins'))),
        scaffoldBackgroundColor: Colors.grey[50],
      ),
    );
  }
}
