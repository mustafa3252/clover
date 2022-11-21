import 'package:flutter/material.dart';

import '../constants.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.teal[700],
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon:
                const Icon(Icons.favorite_border_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: size.height * 0.3),
                      height: 570,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                      ),

                      // Column on stack with description and buttons
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // container with product description
                            Container(
                              height: size.height / 3.2,
                              width: size.width / 1.2,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.black, //color of border
                                    width: 2, //width of border
                                  ),
                                  borderRadius: BorderRadius.circular(24)),
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                // Product description goes here
                                child: Text(productDescription,
                                    style: TextStyle(height: 1.5)),
                              ),
                            ),
                            // holds buy and contact seller button
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  TextButton(
                                      child: Text("Buy",
                                          style: TextStyle(
                                              color: Colors.teal[700],
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                      onPressed: () {}),
                                  TextButton(
                                      child: Text("Contact Seller",
                                          style: TextStyle(
                                              color: Colors.teal[700],
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                      onPressed: () {}),
                                ],
                              ),
                            )
                          ]),
                    ),
                  ),

                  // Column with Product name and title details and price
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // brand details
                        const Text(
                          "Prodcut brands details",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        // Acutual product name
                        const Text(
                          "Product name",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        // Row with Price and Image of the product
                        Row(children: [
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: "Price\n",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                TextSpan(
                                  text: "\$100",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),

                          // Code to change the image
                          Expanded(
                            child: Image.asset(
                              "assets/images/product2.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ]),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
