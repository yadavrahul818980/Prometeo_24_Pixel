import 'package:trendify/main.dart';

import 'package:flutter/material.dart';

// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:cyber_secure/screens/chatmessage.dart';
// import 'package:cyber_secure/screens/trendsSearch.dart';
// import 'package:get/get.dart';
// import 'package:jwt_decoder/jwt_decoder.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class productes extends StatefulWidget {
  const productes({super.key});

  @override
  State<productes> createState() => _productesState();
}

class _productesState extends State<productes> {
  // PageController _pageController = PageController();
  // int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            backgroundColor: Colors.white,
            body: ListView(
              children: [buildheading(context)],
            )),
        Positioned(
          right: 25.0,
          top: 50.0,
          child: Image.asset(
            'assets/backButton.png',
            scale: 3.5,
          ),
        ),
        Positioned(
          left: 25.0,
          top: 50.0,
          child: Image.asset(
            'assets/backButton.png',
            scale: 3.5,
          ),
        ),
      ],
    );
  }

  Widget buildheading(BuildContext context) {
    final sheight = MediaQuery.of(context).size.height;
    final swidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(children: [
        Container(
          child: Image.asset(
            'assets/Rectangle 1.png',
            scale: 4.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${'ms'}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF7F7F7F),
                      fontSize: 15,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(
                    height: sheight * 0.05,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Text(
                      '⭐${'star'}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF7F7F7F),
                        fontSize: 15,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //   ],
            // ),
            SizedBox(height: sheight * 0.0),
            Text(
              '${'head'}',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            SizedBox(height: sheight * 0.03),
            Text(
              'Product Details',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            SizedBox(height: sheight * 0.015),
            Text(
              'Where city meets wilderness. This light brown jacket bridges the gap. Casual, cool, and effortlessly versatile, it takes',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black.withOpacity(0.699999988079071),
                fontSize: 14,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
                // height: 0,
              ),
            ),
            SizedBox(height: sheight * 0.01),
            Divider(
              height: 0.5,
              color: Color(0x33704F38),
            ),
            SizedBox(height: sheight * 0.01),
            Text(
              'Select Size',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w600,
                // height: 0,
              ),
            ),
            SizedBox(height: sheight * 0.015),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomButton(text1: 'S', text2: 0.1),
                SizedBox(width: swidth * 0.05),
                CustomButton(text1: 'M', text2: 0.1),
                SizedBox(width: swidth * 0.05),
                CustomButton(text1: 'L', text2: 0.1),
                SizedBox(width: swidth * 0.05),
                CustomButton(text1: 'XL', text2: 0.11),
                SizedBox(width: swidth * 0.05),
                CustomButton(text1: 'XXL', text2: 0.12),
                SizedBox(width: swidth * 0.05),
                CustomButton(text1: 'XXXL', text2: 0.13),
                // CustomButton(text1: 'S'),
              ],
            ),
            SizedBox(height: sheight * 0.015),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Select Color : ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                Text(
                  'Brown',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6000000238418579),
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                )
              ],
            ),
            SizedBox(height: sheight * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD4A88E),
                    shape: OvalBorder(),
                  ),
                ),
                SizedBox(width: swidth * 0.05),
                Container(
                  width: 24,
                  height: 24,
                  decoration: ShapeDecoration(
                    color: Color(0xFF79665C),
                    shape: OvalBorder(),
                  ),
                ),
                SizedBox(width: swidth * 0.05),
                Container(
                  width: 24,
                  height: 24,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD99567),
                    shape: OvalBorder(),
                  ),
                ),
                SizedBox(width: swidth * 0.05),
                Container(
                  width: 24,
                  height: 24,
                  decoration: ShapeDecoration(
                    color: Color(0xFFB17552),
                    shape: OvalBorder(),
                  ),
                ),
                SizedBox(width: swidth * 0.05),
                Container(
                  width: 24,
                  height: 24,
                  decoration: ShapeDecoration(
                    color: Color(0xFFB9773B),
                    shape: OvalBorder(),
                  ),
                ),
                SizedBox(width: swidth * 0.05),
                Container(
                  width: 24,
                  height: 24,
                  decoration: ShapeDecoration(
                    color: Color(0xFF252525),
                    shape: OvalBorder(),
                  ),
                )
              ],
            ),
          ]),
        ),
        // SizedBox(height: sheight * 0.01),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.all(Radius.circular(6)),
                  border: Border(
                top: BorderSide(
                  width: 1.0,
                  color: Colors.grey,
                ),
              )
                  // color: isTapped ? Color(0xFF704F38) : Colors.transparent,
                  ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Price',
                              style: TextStyle(
                                color:
                                    Colors.black.withOpacity(0.800000011920929),
                                fontSize: 14,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                            Text(
                              '${'rup'}',
                              style: TextStyle(
                                color:
                                    Colors.black.withOpacity(0.800000011920929),
                                fontSize: 14,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          'assets/price alert.png',
                          scale: 3.7,
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          'assets/add to bag.png',
                          scale: 3.7,
                        ),
                      ),
                    ]),
              )),
        )
      ]),
    );
  }
}
//

class CustomButton extends StatefulWidget {
  final String text1;
  final double text2;
  // final String text3;
  // final String text4;

  const CustomButton({
    Key? key,
    required this.text1,
    required this.text2,
    // required this.text3,
    // required this.text4,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });

        // var locale = Locale(widget.text3, widget.text4);
        // Get.updateLocale(locale);

        // Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          border: Border.all(
            width: 1.0,
          ),
          color: isTapped ? Color(0xFF704F38) : Colors.transparent,
        ),
        height: screenHeight * 0.05,
        width: screenWidth * widget.text2,
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.01),
            Text(
              widget.text1,
              style: TextStyle(
                color: isTapped ? Colors.white : Colors.black,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            // Text(
            //   widget.text2,
            //   style: TextStyle(
            //     color: isTapped ? Colors.white : Color(0xFF245BC9),
            //     fontSize: 40,
            //     fontFamily: 'Poppins',
            //     fontWeight: FontWeight.w500,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
