import 'package:trendify/main.dart';

import 'package:flutter/material.dart';

// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:cyber_secure/screens/chatmessage.dart';
// import 'package:cyber_secure/screens/trendsSearch.dart';
// import 'package:get/get.dart';
// import 'package:jwt_decoder/jwt_decoder.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class review extends StatefulWidget {
  const review({super.key});

  @override
  State<review> createState() => _reviewState();
}

class _reviewState extends State<review> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            // backgroundColor: Colors.transparent,
            backgroundColor: Colors.white,
            body: ListView(
              children: [buildheading(context)],
            )),
        // Positioned(
        // bottom: 25.0,
        // right: 25.0,
        // child: buttonchat('assets/cybermitr1.png', context, cyberMitr()))
      ],
    );
  }

  Widget buildheading(BuildContext context) {
    //uncomment this when use newsapi
    // NewsViewModel newsViewModel = NewsViewModel();

    final sheight = MediaQuery.of(context).size.height;
    final swidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: sheight * 0.015),
        Stack(children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: sheight * 0.001),
                    // Image.asset(
                    //   'assets/profil.png',
                    //   height: screenHeight * 0.05,
                    // ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => review(),
                            ),
                          );
                        },
                        child: Text(
                          'Skip               ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        )),

                    // SizedBox(
                    //   width: swidth * 0.63,
                    // ),
                    // Image.asset(
                    //   'assets/notification.png',
                    //   height: screenHeight * 0.045,
                    // ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => Remainder(),
                    //       ),
                    //     );
                    //   },
                    //   child: Image.asset(
                    //     'assets/notification.png',
                    //     height: screenHeight * 0.045,
                    //   ),
                    // ),
                  ]),
            ),
          ),
        ]),
        SizedBox(
          height: sheight * 0.0015,
        ),
        // Row(
        //   children: [
        //     Text(
        //       // 'Hi, ${prefs.getString('name')}',
        //       'Hi!'.tr,
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontSize: 18,
        //         fontFamily: 'Poppins',
        //         fontWeight: FontWeight.w500,
        //         // height: 0,
        //       ),
        //     ),
        //     SizedBox(width: screenWidth * 0.03),
        //     Text(
        //       // 'Hi, ${prefs.getString('name')}',
        //       '${PreferencesManager().name}',
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontSize: 18,
        //         fontFamily: 'Poppins',
        //         fontWeight: FontWeight.w500,
        //         // height: 0,
        //       ),
        //     ),
        //   ],
        // ),
        // SizedBox(
        //   height: sheight * 0.006,
        // ),
        // Text(
        //   'Welcome to CyberSecure'.tr,
        //   style: TextStyle(
        //     color: Color(0xFFDAE2F2),
        //     fontSize: 14,
        //     fontFamily: 'Poppins',
        //     fontWeight: FontWeight.w400,
        //     height: 0,
        //   ),
        // ),
        // SizedBox(height: sheight * 0.038),
        Column(
          children: [
            buildTabs(context),
            Container(
              width: swidth * 1,
              height: sheight * 0.75,
              child: PageView(
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: [
                    Container(
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x0C303030),
                            blurRadius: 16,
                            offset: Offset(0, 8),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/Frame 9.png',
                            scale: 3.5,
                          ),
                          SizedBox(height: sheight * 0.015),
                          Container(
                            child: Text(
                              'Every thread, every style, every you.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: sheight * 0.02),
                          Container(
                              child: Text(
                            ' Find your perfect fit at ',
                            style: TextStyle(
                              color:
                                  Colors.black.withOpacity(0.6000000238418579),
                              fontSize: 16,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w600,
                              // height: 0,
                              // letterSpacing: 0.70,
                            ),
                          )),
                          // buildDots(),
                        ],
                      ),
                    ),
                    // buildDots(),
                    Container(
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x0C303030),
                            blurRadius: 16,
                            offset: Offset(0, 8),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/Frame 9.png',
                            scale: 3.5,
                          ),
                          SizedBox(height: sheight * 0.015),
                          Container(
                            child: Text(
                              'Clothes that make you feel good, inside and out.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: sheight * 0.02),
                          Container(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'That`s the ',
                                style: TextStyle(
                                  color: Colors.black
                                      .withOpacity(0.6000000238418579),
                                  fontSize: 16,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w600,
                                  // height: 0,
                                  // letterSpacing: 0.70,
                                ),
                              ),
                              Text(
                                'Trendify ',
                                style: TextStyle(
                                  color: Colors.black,

                                  fontSize: 16,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w800,
                                  // height: 0,
                                  // letterSpacing: 0.70,
                                ),
                              ),
                              Text(
                                'promise',
                                style: TextStyle(
                                  color: Colors.black
                                      .withOpacity(0.6000000238418579),
                                  fontSize: 16,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w600,
                                  // height: 0,
                                  // letterSpacing: 0.70,
                                ),
                              ),
                            ],
                          )),
                          // buildDots(),
                        ],
                      ),
                    ),
                    // buildDots(),
                    Container(
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x0C303030),
                            blurRadius: 16,
                            offset: Offset(0, 8),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/Frame 9.png',
                            scale: 3.5,
                          ),
                          SizedBox(height: sheight * 0.015),
                          Container(
                            child: Text(
                              'Butterfly clips and bedazzled denim? Buckle up, the 2000s are back',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: sheight * 0.02),
                          Container(
                              child: Text(
                            'Get trend-ready at ',
                            style: TextStyle(
                              color:
                                  Colors.black.withOpacity(0.6000000238418579),
                              fontSize: 16,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w600,
                              // height: 0,
                              // letterSpacing: 0.70,
                            ),
                          )),
                          // buildDots(),
                        ],
                      ),
                    ),
                    // buildDots(),
                  ]),
            ),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/Group 5.png', scale: 4.5),
                  buildDots(),
                  Image.asset('assets/Group 4 (3).png', scale: 4),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: sheight * 0.03),
        // SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       Container(
        //         height: screenHeight * 0.23,
        //         clipBehavior: Clip.antiAlias,
        //         decoration: ShapeDecoration(
        //           color: Color(0xFF245BC9),
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(12),
        //           ),
        //         ),
        //         // child: Image.asset(
        //         //   'assets/Frame.png',
        //         //   scale: 4.5,
        //         // ),
        //         child: GestureDetector(
        //           onTap: () {
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(
        //                 builder: (context) => page2(),
        //               ),
        //             );
        //           },
        //           child: Image.asset(
        //             'assets/Frame.png',
        //             scale: 4.5,
        //           ),
        //         ),
        //       ),

        //       SizedBox(height: screenHeight * 0.03),
        //       Container(
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             CustomText(
        //                 text: 'Latest Scam Trends'.tr,
        //                 fontStyle: null,
        //                 color: Color(0xFF00184A),
        //                 fontSize: 16),
        //             GestureDetector(
        //               onTap: () {
        //                 Navigator.push(
        //                     context,
        //                     MaterialPageRoute(
        //                         builder: (context) => CustomDropDownWidget()));
        //               },
        //               child: CustomText(
        //                 text: 'See All'.tr,
        //                 fontStyle: null,
        //                 color: Color(0xFF245BC9),
        //                 fontSize: 12,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       // un comment this
        //       SizedBox(
        //           height: screenHeight * 0.28,
        //           width: screenWidth,
        //           child: FutureBuilder<NewsChannelsHeadlineModels>(
        //               future: newsViewModel.fetchNewsChannelHeadlineApi(),
        //               builder: (BuildContext context, snapshot) {
        //                 if (snapshot.connectionState ==
        //                     ConnectionState.waiting) {
        //                   return Center(
        //                     child: SpinKitCircle(
        //                       color: Colors.blue,
        //                       size: 50,
        //                     ),
        //                   );
        //                 } else {
        //                   return ListView.builder(
        //                       scrollDirection: Axis.horizontal,
        //                       itemCount: snapshot.data!.articles!.length,
        //                       itemBuilder: (context, index) {
        //                         return newsBox(snapshot, index, '', 0.28, 0.7,
        //                             0.18, context, null);
        //                       });
        //                 }
        //               })),
        //     ],
        //   ),
        // )
      ]),
    );
  }

//
  Widget buildTabs(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildTab(0),
        buildTab(1),
        buildTab(2),
      ],
    );
  }

  Widget buildTab(int index) {
    return GestureDetector(
      onTap: () {
        _pageController.animateToPage(index,
            duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: index == _currentPage ? Colors.black : Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget buildDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(3, (int index) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: 13,
            height: 26,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == _currentPage ? Colors.black : Colors.grey,
            ),
          ),
        );
      }),
    );
  }
}
