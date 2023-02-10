import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:saapati_app/components/menu_items_class.dart';
import 'package:saapati_app/routes/routes.dart';

class LoanRequestPage extends StatefulWidget {
  const LoanRequestPage({super.key});

  @override
  State<LoanRequestPage> createState() => _LoanRequestPageState();
}

class _LoanRequestPageState extends State<LoanRequestPage> {
  final List<MenuItems> _menuItems = [
    MenuItems(
        'Corporate Loan', Icons.apartment_rounded, RouteManager.mainLayoutPage),
    MenuItems(
        'Friendly Loan', Icons.people_alt_rounded, RouteManager.mainLayoutPage),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loan Request'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _menuItems.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: 1),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, _menuItems[index].route),
                child: Card(
                  elevation: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(
                          _menuItems[index].menuIcon,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                          child: Text(
                        _menuItems[index].menuName,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'Poppins', color: Colors.blue),
                      ))
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
