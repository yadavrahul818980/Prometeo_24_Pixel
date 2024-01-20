// import 'package:flutter/material.dart';
// import 'Utilities.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// // import 'package:jwt_decoder/jwt_decoder.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   String selectedTag = 'All'; // Default selected tag
//   // late Future<List<List<dynamic>>> fetchData;

//   List<String> selectedCategories = [];

//   final List<String> coursesTags = [
//     'All',
//     'Newest',
//     'Popular',
//     'Men',
//     'Women',
//     'Children',
//   ];

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   // fetchData = fetchDataFromAPI(selectedTag);
//   // }

//   // Future<List<List<dynamic>>> fetchDataFromAPI(String tag) async {
//   //   String apiUrl =
//   //       'https://trendify-ui65.onrender.com/products';
//   //
//   //   try {
//   //     var response = await http.get(Uri.parse(apiUrl));
//   //
//   //     if (response.statusCode == 200) {
//   //       // Print raw response body
//   //       print('Raw Response for tag $tag: ${response.body}');
//   //
//   //       Map<String, dynamic> data = json.decode(response.body);
//   //       List<List<dynamic>> productName =
//   //       data['productName'].cast<List<dynamic>>();
//   //       print('Recommendations for $tag: $productName');
//   //
//   //       return productName;
//   //     } else {
//   //       throw Exception('Failed to load data');
//   //     }
//   //   } catch (error) {
//   //     throw Exception('Failed to fetch data: $error');
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     final sheight = MediaQuery.of(context).size.height;
//     final swidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(children: [
//               // SizedBox(height: sheight*0.02,),

//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       // Image.asset(
//                       //   'assets/Ellipse 1.png',
//                       //   scale: 3.6,
//                       // ),
//                       SizedBox(
//                         width: swidth * 0.04,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Hello, shimmer}', // Display the user's name
//                             style: TextStyle(
//                               fontSize: 17,
//                               color: Colors.black,
//                             ),
//                           ),
//                           SizedBox(
//                             height: sheight * 0.005,
//                           ),
//                           Text(
//                             'shimmer', // Display the user's email
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),

//                   // SizedBox(width: size.width*0.32),

//                   Container(
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         color: Colors.grey,
//                         width: 1,
//                       ),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(1.0),
//                       child: IconButton(
//                         icon: Icon(Icons.notification_add_outlined),
//                         iconSize: 25,
//                         onPressed: () {},
//                       ),
//                     ),
//                   ),
//                 ],
//               ),

//               SizedBox(
//                 height: sheight * 0.02,
//               ),

//               SizedBox(width: swidth * 0.18),

//               Container(
//                 height: sheight * 0.08,
//                 decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey),
//                     borderRadius: BorderRadius.all(Radius.circular(15))),
//                 child: Row(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.search_outlined),
//                       iconSize: 35,
//                       color: Colors.grey,
//                       onPressed: () {},
//                     ),
//                     const Expanded(
//                       child: TextField(
//                         keyboardType: TextInputType.text,
//                         style: TextStyle(fontSize: 18, color: Colors.black54),
//                         decoration: InputDecoration(
//                           hintText: 'Search',
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 13),
//                       child: Image.asset(
//                         'assets/Group 37.png',
//                         scale: 4.5,
//                       ),
//                     )
//                   ],
//                 ),
//               ),

//               SizedBox(
//                 height: sheight * 0.02,
//               ),

//               Image.asset('assets/Frame 16.png'),

//               SizedBox(
//                 height: sheight * 0.01,
//               ),

//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Category',
//                     style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
//                   ),
//                   Text(
//                     'See All',
//                     style: TextStyle(
//                         color: Color(0xff704F38),
//                         fontWeight: FontWeight.w400,
//                         fontSize: 20),
//                   ),
//                 ],
//               ),

//               SizedBox(
//                 height: sheight * 0.02,
//               ),

//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Image.asset(
//                     'assets/Group 12.png',
//                     scale: 4.3,
//                   ),
//                   Image.asset(
//                     'assets/Group 13.png',
//                     scale: 4.3,
//                   ),
//                   Image.asset(
//                     'assets/Group 14.png',
//                     scale: 4.3,
//                   ),
//                   Image.asset(
//                     'assets/Group 15.png',
//                     scale: 4.3,
//                   ),
//                 ],
//               ),

//               SizedBox(
//                 height: sheight * 0.02,
//               ),

//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'For You',
//                     style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
//                   ),
//                   Text(
//                     'See All',
//                     style: TextStyle(
//                         color: Color(0xff704F38),
//                         fontWeight: FontWeight.w400,
//                         fontSize: 20),
//                   ),
//                 ],
//               ),

//               SizedBox(
//                 height: sheight * 0.02,
//               ),

//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: coursesTags
//                       .map((courseTag) => Padding(
//                             padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
//                             child: GestureDetector(
//                               onTap: () {
//                                 setState(() {
//                                   selectedTag = courseTag;
//                                   // fetchData = fetchDataFromAPI(selectedTag);
//                                 });
//                               },
//                               child: Chip(
//                                 label: Padding(
//                                   padding: const EdgeInsets.all(10.0),
//                                   child: Text(
//                                     courseTag,
//                                     style: TextStyle(
//                                         color: selectedTag == courseTag
//                                             ? Colors.white
//                                             : Colors.black,
//                                         fontSize: 15),
//                                   ),
//                                 ),
//                                 backgroundColor: selectedTag == courseTag
//                                     ? Color(0xff704F38)
//                                     : Colors.white,
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(15),
//                                     side: BorderSide(
//                                         color: Color(0xff704F38),
//                                         width: swidth * 0.004)),
//                               ),
//                             ),
//                           ))
//                       .toList(),
//                 ),
//               ),

//               SizedBox(
//                 height: sheight * 0.02,
//               ),

//               Row(
//                 children: [
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Image.asset(
//                         'assets/blue-kurt.png',
//                         scale: 4,
//                       ),
//                       SizedBox(
//                         height: sheight * 0.01,
//                       ),
//                       Row(
//                         children: [
//                           Text(
//                             'Black Kurta',
//                             style:
//                                 TextStyle(color: Colors.black45, fontSize: 18),
//                           ),
//                           SizedBox(
//                             width: swidth * 0.04,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: Color(0xffFBBC05),
//                           ),
//                           Text(
//                             '4.8',
//                             style:
//                                 TextStyle(color: Colors.black45, fontSize: 18),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: sheight * 0.006,
//                       ),
//                       Text(
//                         'Rs 1100',
//                         style: TextStyle(
//                             color: Colors.black45,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18),
//                       ),
//                     ],
//                   )
//                 ],
//               )
//             ]),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:trendify/category.dart';
import 'package:trendify/notifications.dart';
import 'Utilities.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
// import 'package:jwt_decoder/jwt_decoder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedTag = 'All';

  final List<String> coursesTags = [
    'All',
    'Newest',
    'Popular',
    'Men',
    'Women',
    'Children',
  ];

  late List<Map<String, dynamic>> apiResponse = [];

  @override
  void initState() {
    super.initState();
    fetchDataFromAPI();
  }

  Future<void> fetchDataFromAPI() async {
    String apiUrl =
        'https://trendify-ui65.onrender.com/products'; // Replace with your API endpoint

    try {
      var response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        setState(() {
          apiResponse =
              List<Map<String, dynamic>>.from(json.decode(response.body));
        });
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      throw Exception('Failed to fetch data: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    final sheight = MediaQuery.of(context).size.height;
    final swidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              // SizedBox(height: sheight*0.02,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/Ellipse 1.png',
                        scale: 3.6,
                      ),
                      SizedBox(
                        width: swidth * 0.04,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello, shimmer}', // Display the user's name
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: sheight * 0.005,
                          ),
                          Text(
                            'shimmer', // Display the user's email
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // SizedBox(width: size.width*0.32),

                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to the next page when the image is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Notifications()), // Replace with your next page widget
                        );
                      },
                      child: Image.asset(
                        'assets/backButton.png',
                        scale: 3.5,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: sheight * 0.02,
              ),

              SizedBox(width: swidth * 0.18),

              Container(
                height: sheight * 0.08,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.search_outlined),
                      iconSize: 35,
                      color: Colors.grey,
                      onPressed: () {},
                    ),
                    const Expanded(
                      child: TextField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 13),
                      child: Image.asset(
                        'assets/Group 37.png',
                        scale: 4.5,
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: sheight * 0.02,
              ),

              Image.asset('assets/Frame 16.png'),

              SizedBox(
                height: sheight * 0.01,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        color: Color(0xff704F38),
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  ),
                ],
              ),

              SizedBox(
                height: sheight * 0.02,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to the next page when the GestureDetector is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => category(
                                  categories: 'tShirt',
                                )),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Group 12.png',
                          scale: 4.3,
                        ),
                        SizedBox(
                          height: sheight * 0.008,
                        ),
                        Text(
                          'T-shirt',
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  // Column(
                  //   children: [
                  //     Image.asset(
                  //       'assets/Group 12.png',
                  //       scale: 4.3,
                  //     ),
                  //     SizedBox(
                  //       height: sheight * 0.008,
                  //     ),
                  //     Text(
                  //       'T-shirt',
                  //       style: TextStyle(fontSize: 17),
                  //     )
                  //   ],
                  // ),
                  // Column(
                  //   children: [
                  //     Image.asset(
                  //       'assets/Group 13.png',
                  //       scale: 4.3,
                  //     ),
                  //     SizedBox(
                  //       height: sheight * 0.008,
                  //     ),
                  //     Text(
                  //       'Pant',
                  //       style: TextStyle(fontSize: 17),
                  //     )
                  //   ],
                  // ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the next page when the GestureDetector is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => category(
                                  categories: 'pant',
                                )),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Group 13.png',
                          scale: 4.3,
                        ),
                        SizedBox(
                          height: sheight * 0.008,
                        ),
                        Text(
                          'Pant',
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  // Column(
                  //   children: [
                  //     Image.asset(
                  //       'assets/Group 14.png',
                  //       scale: 4.3,
                  //     ),
                  //     SizedBox(
                  //       height: sheight * 0.008,
                  //     ),
                  //     Text(
                  //       'Dress',
                  //       style: TextStyle(fontSize: 17),
                  //     )
                  //   ],
                  // ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the next page when the GestureDetector is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => category(
                                  categories: 'shoes',
                                )),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Group 14.png',
                          scale: 4.3,
                        ),
                        SizedBox(
                          height: sheight * 0.008,
                        ),
                        Text(
                          'Shoes',
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  // Column(
                  //   children: [
                  //     Image.asset(
                  //       'assets/Group 15.png',
                  //       scale: 4.3,
                  //     ),
                  //     SizedBox(
                  //       height: sheight * 0.008,
                  //     ),
                  //     Text(
                  //       'Jacket',
                  //       style: TextStyle(fontSize: 17),
                  //     )
                  //   ],
                  // ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the next page when the GestureDetector is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => category(
                                  categories: 'jacket',
                                )),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Group 15.png',
                          scale: 4.3,
                        ),
                        SizedBox(
                          height: sheight * 0.008,
                        ),
                        Text(
                          'Jacket',
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: sheight * 0.02,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'For You',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        color: Color(0xff704F38),
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  ),
                ],
              ),

              SizedBox(
                height: sheight * 0.01,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: coursesTags
                      .map((courseTag) => Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedTag = courseTag;
                                });
                              },
                              child: Chip(
                                label: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    courseTag,
                                    style: TextStyle(
                                        color: selectedTag == courseTag
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 15),
                                  ),
                                ),
                                backgroundColor: selectedTag == courseTag
                                    ? Color(0xff704F38)
                                    : Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    side: BorderSide(
                                        color: Color(0xff704F38),
                                        width: swidth * 0.004)),
                              ),
                            ),
                          ))
                      .toList(),
                ),
              ),

              SizedBox(
                height: sheight * 0.02,
              ),

              if (apiResponse != null)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: apiResponse
                      .map<Widget>((data) => ProductItem(
                            productName: data['productName'],
                            productImage: data['productImage'],
                            price: data['price'],
                            details: data['details'],
                          ))
                      .toList(),
                ),

              // Row(
              //   children: [
              //     Column(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Image.asset('assets/blue-kurt.png',scale: 4,),
              //
              //         SizedBox(height: sheight * 0.01,),
              //
              //         Row(
              //           children: [
              //             Text('Black Kurta',style: TextStyle(
              //                 color: Colors.black45,
              //                 fontSize: 18
              //             ),),
              //
              //             SizedBox(width: swidth * 0.04,),
              //
              //             Icon(Icons.star,color: Color(0xffFBBC05),),
              //
              //             Text('4.8',style: TextStyle(
              //                 color: Colors.black45,
              //                 fontSize: 18
              //             ),),
              //           ],
              //         ),
              //         SizedBox(height: sheight * 0.006,),
              //         Text('Rs 1100',style: TextStyle(
              //             color: Colors.black45,
              //             fontWeight: FontWeight.bold,
              //             fontSize: 18
              //         ),),
              //
              //       ],
              //     )
              //   ],
              // )
            ]),
          ),
        ),
      ),
    );
  }
}

class ProductItem extends StatefulWidget {
  final String productName;
  final String productImage;
  final String price;
  final String details;

  const ProductItem({
    required this.productName,
    required this.productImage,
    required this.price, // Add price as a parameter
    required this.details,
  });

  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool isInWishlist = false; // Track whether the product is in the wishlist

  @override
  Widget build(BuildContext context) {
    final sheight = MediaQuery.of(context).size.height;
    final swidth = MediaQuery.of(context).size.width;
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            widget.productImage,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Display product name
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.productName,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        isInWishlist ? Icons.favorite : Icons.favorite_border,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        // Toggle the wishlist status when the icon is pressed
                        setState(() {
                          isInWishlist = !isInWishlist;
                        });
                      },
                    ),
                  ],
                ),

                // Wishlist icon

                SizedBox(height: sheight * 0.0001),

                // Display price
                Text(
                  'Price: ${widget.price}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: sheight * 0.0001),

                // Display details
                Text(
                  widget.details,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
