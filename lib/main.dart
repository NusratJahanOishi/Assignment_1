// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:shop/buyNow.dart';
// import 'package:shop/home.dart';

// MediaQuery.of(context).devicePixelRatio

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueGrey.shade100,
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 166, 195, 218),
        appBar: AppBar(
          // shadowColor: Colors.white,
          elevation: null,
          backgroundColor: const Color.fromARGB(255, 166, 195, 218),
          centerTitle: true,
          title: const Text(
            "BEAUTY",
            style: TextStyle(
              decoration: TextDecoration.underline,
              letterSpacing: 6,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Home(),
      ),
    );
  }
}

class BuyPage extends StatelessWidget {
  const BuyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 166, 195, 218),
        appBar: AppBar(backgroundColor: Color.fromARGB(255, 166, 195, 218)),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(2, 3, 2, 1),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Payment and Proceed",
                    style: TextStyle(
                        letterSpacing: 0.5,
                        wordSpacing: 1,
                        fontWeight: FontWeight.w800,
                        fontSize: 25),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    width: 70,
                    // color: Colors.black,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/payment/amex.png'),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    // color: Colors.black,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/payment/mas.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/payment/bkash.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/payment/rocket.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/payment/visa.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              DropdownButton<String>(
                items: <String>['Bkash', 'Rocket', 'AmEx', 'Visa', 'MasterCard']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  // Handle dropdown selection
                },
                hint: const Text('Please Choose Option'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BuyNow extends StatelessWidget {
  const BuyNow({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BuyPage(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 3),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 3, right: 3),
          child: Row(
            children: [
              Text("Buy Now"),
              Icon(Icons.shopping_cart_checkout_outlined)
            ],
          ),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  // final String name;
  // final String description;
  // final String price;

  // ContainerWidget({
  //   required this.name,
  //   required this.description,
  //   required this.price,

  // })

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData(accessibleNavigation: true),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                const Text(
                  "Take what you need to glow",
                  style: TextStyle(
                      letterSpacing: 0.5,
                      wordSpacing: 1,
                      fontWeight: FontWeight.w800,
                      fontSize: 25),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.blueGrey.shade300,
                      height: 255,
                      width: 200,
                      child: Container(
                        color: Colors.blueGrey.shade300,
                        height: 200,
                        width: 200,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Container(
                                // color: Colors.green,
                                height: 140,
                                width: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/ink valvet.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            // Text("$name"),
                            // Text("$description"),
                            // Text("$price"),
                            Text(
                              "Ink Valvet",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),

                            Text(
                              "Lightweight Lip color with matte finish",
                              style: TextStyle(fontSize: 11),
                            ),
                            Text(
                              "Price: 1,085.86 ৳",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(3, 1, 3, 1),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  BuyNow(),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      color: Colors.blueGrey.shade300,
                      height: 255,
                      width: 200,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Container(
                              // color: Colors.green,
                              height: 140,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/kechi.jpg'),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Eyelash Curler",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            "A hand-operated mechanical device for curling eyelashes",
                            style: TextStyle(fontSize: 11),
                          ),
                          Text(
                            "price: 569.00 ৳",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(3, 1, 3, 1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                BuyNow(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.blueGrey.shade300,
                      height: 255,
                      width: 200,
                      child: Container(
                        color: Colors.blueGrey.shade300,
                        height: 200,
                        width: 200,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Container(
                                // color: Colors.green,
                                height: 140,
                                width: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/nars lomba.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "NARS Natural Radiant",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(
                              "A sheer, buildable foundation Shade: Fiji",
                              style: TextStyle(fontSize: 11),
                            ),
                            Text(
                              "Price: 6,480.00 ৳",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(3, 1, 3, 1),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  BuyNow(),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      color: Colors.blueGrey.shade300,
                      height: 255,
                      width: 200,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Container(
                              // color: Colors.green,
                              height: 140,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/pencil.jpg'),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "NARS Pencil Lip Liner",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            "Matte finish",
                            style: TextStyle(fontSize: 11),
                          ),
                          Text(
                            "Price:  880.00 ৳",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(3, 1, 3, 1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                BuyNow(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.blueGrey.shade300,
                      height: 255,
                      width: 200,
                      child: Container(
                        color: Colors.blueGrey.shade300,
                        height: 200,
                        width: 200,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Container(
                                // color: Colors.green,
                                height: 140,
                                width: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/ponds.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "r.e.m Beauty Concealer",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(
                              "Matte finish lightweight",
                              style: TextStyle(fontSize: 11),
                            ),
                            Text(
                              "Price: 2,864.00 ৳",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(3, 1, 3, 1),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  BuyNow(),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      color: Colors.blueGrey.shade300,
                      height: 255,
                      width: 200,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Container(
                              // color: Colors.green,
                              height: 140,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/shada cream.jpg'),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "COSRX Lip Plump",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            " AHA BHA Vitamin C Lip",
                            style: TextStyle(fontSize: 11),
                          ),
                          Text(
                            "Price: 16,00.00 ৳",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(3, 1, 3, 1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                BuyNow(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BuyNow(),
                  ),
                );
              },
              splashColor: Colors.white,
              child: Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
    );
  }
}
