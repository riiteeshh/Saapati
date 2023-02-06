import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
              'Hello!',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: 'Itim'),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
              'Ritesh Pandey',
              style: TextStyle(
                  fontFamily: 'Poppins', fontSize: 15, color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
