import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todoappusingcrud/screens/add_list.dart';
import 'package:todoappusingcrud/screens/add_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TodoListPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            color: Colors.blue, // Adjust background color as needed
            height: MediaQuery.of(context).size.height,
          ),
          // Navigation bar at the top
          /////////////////
          // Onlight portrait at the bottom
          // Positioned(
          //   left: 0,
          //   right: 0,
          //   child: Image.asset(
          //     'assets/On Light - Portrait.png',
          //     fit: BoxFit.contain, // Adjust the fit as needed
          //   ),
          // ),  bottom: 0,

          // Centered logo
          Positioned(
            top: MediaQuery.of(context).size.height / 2 -
                90.305, // Adjust the position as needed
            left: MediaQuery.of(context).size.width / 2 -
                170.71, // Adjust the position as needed
            child: Image.asset(
              'assets/work-order.png', // Adjust the file name and path as needed
              width: 350.42, // Width from Figma styling
              height: 198.61, // Height from Figma styling
            ),
          ),
        ],
      ),
    );
  }
}
