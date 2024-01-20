// // import 'dart:html';

// // import 'package:cyber_secure/screens/analysis.dart';
// // import 'package:cyber_secure/screens/caseProgress.dart';
// // import 'package:cyber_secure/screens/complaint2.dart';
// // import 'package:cyber_secure/screens/databreach.dart';
// // import 'package:cyber_secure/screens/disclamer.dart';
// // import 'package:cyber_secure/screens/documentUpload.dart';
// // import 'package:cyber_secure/screens/feed.dart';
// // import 'package:cyber_secure/screens/guidline.dart';
// // import 'package:cyber_secure/screens/home.dart';
// // import 'package:cyber_secure/screens/incident.dart';
// // import 'package:cyber_secure/screens/language.dart';
// // import 'package:cyber_secure/screens/laywer.dart';
// // import 'package:cyber_secure/screens/localStrings.dart';
// // import 'package:cyber_secure/screens/loginscreen.dart';
// // import 'package:cyber_secure/screens/notification.dart';
// // import 'package:cyber_secure/screens/pdfViewer.dart';
// // import 'package:cyber_secure/screens/profile.dart';
// // import 'package:cyber_secure/screens/splash_screen.dart';
// // import 'package:cyber_secure/screens/test.dart';
// // import 'package:cyber_secure/screens/trends.dart';
// // import 'package:cyber_secure/screens/trendsSearch.dart';
// // import 'package:cyber_secure/screens/utilities.dart';
// import 'package:flutter/material.dart';
// import 'package:trendify/home.dart';
// import 'package:trendify/myCart.dart';
// import 'package:trendify/notifications.dart';
// import 'package:trendify/productes.dart';
// // import 'package:google_gemini/google_gemini.dart';
// // import 'dart:io';
// // import 'package:image_picker/image_picker.dart';
// // import 'package:cyber_secure/screens/cyberMitrBot.dart';
// // import 'package:cyber_secure/screens/navbar.dart';
// // import 'package:shared_preferences/shared_preferences.dart';
// // import 'package:get/get.dart';
// import 'package:trendify/review_page.dart';
// import 'package:trendify/shipping.dart';

// void main() async {
//   // WidgetsFlutterBinding.ensureInitialized();

//   // await PreferencesManager.init(); // Initialize PreferencesManager
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // translations: LocalString(),
//       // locale: Locale('en', 'US'),
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
//         useMaterial3: true,
//       ),
//       home: Notifications(),
//     );
//   }
// }

// // class PreferencesManager {
// //   late SharedPreferences _prefs;

// //   Future<void> init() async {
// //     _prefs = await SharedPreferences.getInstance();
// //   }

// //   String get email => _prefs.getString('email') ?? "";
// //   String get name => _prefs.getString('name') ?? "";
// // }

// // final preferencesManager = PreferencesManager();

// // class PreferencesManager {
// //   static late PreferencesManager _instance;
// //   late SharedPreferences _prefs;

// //   // private constructor
// //   PreferencesManager._();

// //   // factory method to access the singleton instance
// //   factory PreferencesManager() {
// //     return _instance;
// //   }

// //   // initialize the singleton instance
// //   static Future<void> init() async {
// //     _instance = PreferencesManager._();
// //     _instance._prefs = await SharedPreferences.getInstance();
// //   }

// //   // add methods for storing and retrieving data
// //   String get email => _prefs.getString('email') ?? '';
// //   set email(String value) => _prefs.setString('email', value);

// //   String get name => _prefs.getString('name') ?? '';
// //   set name(String value) => _prefs.setString('name', value);
// //   String get token => _prefs.getString('token') ?? '';
// //   set token(String value) => _prefs.setString('token', value);
// //   String get ack => _prefs.getString('ack') ?? '';
// //   set ack(String value) => _prefs.setString('ack', value);

// //   // add more methods as needed
// // }

import 'package:flutter/material.dart';
import 'package:trendify/Login.dart';
import 'package:trendify/bag.dart';
import 'package:trendify/myCart.dart';
import 'package:trendify/profile.dart';
// import 'package:trendify/wishlist.dart';
import 'package:trendify/home.dart';
import 'package:trendify/wishList.dart';
import 'package:trendify/bag.dart';
import 'myCart.dart';
import 'profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationBar(),
    );
  }
}

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  State<NavigationBar> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<NavigationBar> {
  GlobalKey<CurvedNavigationBarState> _curvednavigationkey = GlobalKey();
  int currentIndex = 0;

  final screens = const [HomePage(), Wishlist(), Bag(), myCart(), Profile()];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: CurvedNavigationBar(
        key: _curvednavigationkey,
        index: currentIndex,
        height: 65,
        items: [
          Image.asset(
            'assets/home.png',
            scale: 4,
          ),
          Image.asset(
            'assets/wishlist.png',
            scale: 4,
          ),
          Image.asset(
            'assets/bag.png',
            scale: 3,
          ),
          Image.asset(
            'assets/checkout.png',
            scale: 19,
          ),
          Image.asset(
            'assets/profile.png',
            scale: 4,
          ),
        ],
        color: Color(0xff704F38),
        buttonBackgroundColor: Color(0xff704F38),
        backgroundColor: Colors.white,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        letIndexChange: (index) => true,
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: currentIndex,
      //
      //   onTap: (index){
      //     setState(() {
      //       currentIndex = index;
      //     });
      //   },
      //
      //   selectedItemColor: Colors.amber[900],
      //
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_cart),
      //       label: 'Cart',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.account_circle_outlined),
      //       label: 'Account',
      //     ),
      //   ],
      // ),
    );
  }
}
