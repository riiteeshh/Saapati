import 'package:flutter/material.dart';
import 'package:saapati_app/components/menu_items_class.dart';
import 'package:saapati_app/routes/routes.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  final List<MenuItems> _menuItems = [
    MenuItems(
        'Bar Graph', Icons.bar_chart_rounded, RouteManager.mainLayoutPage),
    MenuItems(
        'Pie Chart', Icons.pie_chart_rounded, RouteManager.mainLayoutPage),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statictics'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
