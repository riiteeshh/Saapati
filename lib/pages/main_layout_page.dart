import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:saapati_app/pages/home_page.dart';

class MainLayoutPage extends StatefulWidget {
  const MainLayoutPage({super.key});

  @override
  State<MainLayoutPage> createState() => _MainLayoutPageState();
}

class _MainLayoutPageState extends State<MainLayoutPage> {
  List<Widget> _pages = <Widget>[
    HomePage(),
    Text('Transaction'),
    Text('Loan'),
    Text('Settings')
  ];
  int _selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_selectedPage]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        currentIndex: _selectedPage,
        onTap: (value) {
          setState(() {
            _selectedPage = value;
          });
        },
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'Transaction', icon: Icon(Icons.receipt_long_rounded)),
          BottomNavigationBarItem(label: 'Loan', icon: Icon(Icons.receipt)),
          BottomNavigationBarItem(label: 'Settings', icon: Icon(Icons.settings))
        ],
      ),
    );
  }
}
