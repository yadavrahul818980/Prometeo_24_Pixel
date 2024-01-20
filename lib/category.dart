import 'package:trendify/Utilities.dart';
import 'package:trendify/main.dart';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class category extends StatefulWidget {
  // const category({super.key});
  final String categories;
  const category({Key? key, required this.categories}) : super(key: key);

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  late List<Map<String, dynamic>> apiResponse = [];

  @override
  void initState() {
    super.initState();
    fetchDataFromAPI();
  }

  Future<void> fetchDataFromAPI() async {
    String apiUrl =
        'https://trendify-ui65.onrender.com/products?category=${widget.categories}'; // Replace with your API endpoint

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
              '${widget.categories}',
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
      ]),
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
