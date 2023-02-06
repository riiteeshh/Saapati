import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:saapati_app/components/carousel.dart';
import 'package:saapati_app/components/home_app_bar.dart';
import 'package:saapati_app/components/menu_items_class.dart';
import 'package:saapati_app/routes/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<MenuItems> _menuItems = [
    MenuItems('Load Money', Icons.wallet),
    MenuItems('Request Loan', Icons.request_quote_rounded),
    MenuItems('Ping Recieve', Icons.handshake_rounded),
    MenuItems('Statistics', Icons.stacked_bar_chart_rounded),
    MenuItems('My Cards', EvaIcons.creditCard),
    MenuItems('Vouchers', Icons.card_giftcard_rounded),
  ];
  List _imageData = [
    'https://cdn.pixabay.com/photo/2018/06/17/20/35/chain-3481377_960_720.jpg',
    'https://cdn.pixabay.com/photo/2014/11/13/06/12/boy-529067_960_720.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                child: badges.Badge(
                  badgeStyle: badges.BadgeStyle(
                    badgeColor: Colors.blue.withOpacity(0.9),
                  ),
                  badgeAnimation: badges.BadgeAnimation.scale(
                    animationDuration: Duration(seconds: 1),
                    colorChangeAnimationDuration: Duration(seconds: 1),
                    loopAnimation: true,
                    curve: Curves.fastOutSlowIn,
                    colorChangeAnimationCurve: Curves.easeInCubic,
                  ),
                  ignorePointer: false,
                  showBadge: true,
                  child: Icon(
                    Icons.notifications,
                    size: 25,
                    color: Colors.grey[400],
                  ),
                ),
              ),
            ],
          )
        ],
        flexibleSpace: HomeAppBar(),
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
      ),
      body: SafeArea(
        child: RefreshIndicator(
          color: Colors.blue,
          strokeWidth: 3.0,
          onRefresh: () async {
            await Future.delayed(Duration(milliseconds: 1000));
            Navigator.pushReplacementNamed(
                context, RouteManager.mainLayoutPage);
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.blue.withOpacity(0.9),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.23,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 10, top: 15),
                                          alignment: Alignment.topLeft,
                                          child: const Text(
                                            'Total Balance',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontSize: 12),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 20),
                                          alignment: Alignment.topLeft,
                                          child: const Text(
                                            'Rs.50000',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontSize: 20),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              right: 20, top: 15),
                                          alignment: Alignment.topLeft,
                                          child: const Text(
                                            'Reward Points',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontSize: 12),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(right: 10),
                                          alignment: Alignment.topLeft,
                                          child: const Text(
                                            'Rs.50000',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontSize: 20),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.035,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                margin: const EdgeInsets.only(
                                                    top: 15),
                                                child: const Icon(
                                                  Icons.arrow_downward,
                                                  color: Colors.red,
                                                )),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  top: 15),
                                              child: const Text(
                                                'To Pay',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 20),
                                          alignment: Alignment.topLeft,
                                          child: const Text(
                                            'Rs.50000',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontSize: 20),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                margin: const EdgeInsets.only(
                                                    top: 15),
                                                child: const Icon(
                                                  Icons.arrow_upward,
                                                  color: Colors.yellow,
                                                )),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  top: 15, right: 20),
                                              child: const Text(
                                                'To Recieve',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(right: 10),
                                          alignment: Alignment.topLeft,
                                          child: const Text(
                                            'Rs.50000',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontSize: 20),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Features',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: _menuItems.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3, childAspectRatio: 0.9),
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.lightBlue,
                                child: Icon(
                                  _menuItems[index].menuIcon,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                  child: Text(
                                _menuItems[index].menuName,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Poppins', color: Colors.blue),
                              ))
                            ],
                          ),
                        );
                      }),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Promotionals',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.26,
                  child: Carousel(adsItems: _imageData),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
