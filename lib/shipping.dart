import 'package:trendify/Utilities.dart';
import 'package:trendify/main.dart';

import 'package:flutter/material.dart';

// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:cyber_secure/screens/chatmessage.dart';
// import 'package:cyber_secure/screens/trendsSearch.dart';
// import 'package:get/get.dart';
// import 'package:jwt_decoder/jwt_decoder.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class shipping extends StatefulWidget {
  const shipping({super.key});

  @override
  State<shipping> createState() => _shippingState();
}

class _shippingState extends State<shipping> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            backgroundColor: Colors.white,
            body: ListView(
              children: [buildheading(context)],
            )),
      ],
    );
  }

  Widget buildheading(BuildContext context) {
    final sheight = MediaQuery.of(context).size.height;
    final swidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
              child: Row(children: [
            Image.asset(
              'assets/backButton.png',
              scale: 3.5,
            ),
            SizedBox(width: swidth * 0.15),
            Text(
              'Shipping Address',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w600,
                // height: 0,
                // letterSpacing: 0.70,
              ),
            )
          ])),
        ),
        SizedBox(height: sheight * 0.02),
        address(context, 0.1, 1.0, 'assets/backButton.png', 'assets/like.png',
            'Home', '1902 Thornidge Cir. Shiloh ,Hawaii 81063'),
        address(context, 0.1, 1.0, 'assets/backButton.png', 'assets/like.png',
            'Home', '1902 Thornidge Cir. Shiloh ,Hawaii 81063'),
        address(context, 0.1, 1.0, 'assets/backButton.png', 'assets/like.png',
            'Home', '1902 Thornidge Cir. Shiloh ,Hawaii 81063'),
        address(context, 0.1, 1.0, 'assets/backButton.png', 'assets/like.png',
            'Home', '1902 Thornidge Cir. Shiloh ,Hawaii 81063'),
        address(context, 0.1, 1.0, 'assets/backButton.png', 'assets/like.png',
            'Home', '1902 Thornidge Cir. Shiloh ,Hawaii 81063'),
        address(context, 0.1, 1.0, 'assets/backButton.png', 'assets/like.png',
            'Home', '1902 Thornidge Cir. Shiloh ,Hawaii 81063'),
        address(context, 0.1, 1.0, 'assets/backButton.png', 'assets/like.png',
            'Home', '1902 Thornidge Cir. Shiloh ,Hawaii 81063'),
      ]),
    );
  }
}
