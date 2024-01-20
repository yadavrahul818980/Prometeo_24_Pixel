// import 'Homepage.dart';
import 'package:flutter/material.dart';
import 'package:trendify/home.dart';

// import 'Login.dart';
Widget SignUpOptions(BuildContext context, height, width, image, String text) {
  return GestureDetector(
    onTap: () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    },
    child: Padding(
      padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.black,
              width: 2,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              scale: 3.5,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text(
                text,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget address(BuildContext context, height, width, image, image2, String text1,
    String text2) {
  final sheight = MediaQuery.of(context).size.height;
  final swidth = MediaQuery.of(context).size.width;
  return GestureDetector(
    onTap: () {
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
    },
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Container(
        height: sheight * height,
        width: swidth * width,
        decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(20),
            border: Border.all(
          color: const Color.fromARGB(255, 77, 75, 75),
          width: 0.04,
        )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              scale: 3.5,
            ),
            Container(
              width: swidth * 0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      text1,
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(
                    text2,
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            Image.asset(
              image2,
              scale: 3.5,
            ),
          ],
        ),
      ),
    ),
  );
}
