import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:laligurashapp/Screens/checkout_screen.dart';
import 'package:laligurashapp/Screens/favourite_screen.dart';
import 'package:laligurashapp/Screens/productvarity_screen.dart';
import 'package:laligurashapp/Screens/tenth_screen.dart';

class BasketScreen extends StatefulWidget {
  const BasketScreen({super.key});

  @override
  State<BasketScreen> createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {
  /*
  final List<String> imageList = [
    "assets/cabbage.png",
    "assets/onion.png",
  ];
  final List<String> textList = [ " Bok Cabbage - 1 kg", "Small Onion - 2 kg"];
  final List<String> priceList = [ "Rs 149.99", "Rs 140.99"];
  */
  // For GridViee.builder
  bool _isClicked = false;
  int _currentRating = 0;
  final List<String> imageList = [
    "assets/capcium.png",
    "assets/potato.png",
    "assets/tomato.png",
  ];
  final List<String> titleList = ["Capcium", "Potato", "Tomato"];
  final List<String> priceList = [
    "Rs. 140.99",
    "Rs. 140.99",
    "Rs.140.99",
  ];
  final List<bool> isFavorite = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 45),
          Center(
              child: Text("Basket",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold))),
          SizedBox(height: 12),
          Container(
            width: 400,
            height: 1,
            color: const Color.fromARGB(255, 230, 215, 215),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: ListView(
                children: [
                  Container(
                      width: 390,
                      height: 111,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Image.asset("assets/cabbage.png",
                                width: 73, height: 66),
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              SizedBox(height: 33),
                              Text("Bok Cabbage -1 kg",
                                  style: TextStyle(fontSize: 14)),
                              SizedBox(height: 3),
                              Text("Rs 149.99",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ],
                          )
                        ],
                      )),
                  SizedBox(height: 9),
                  Container(
                      width: 390,
                      height: 111,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Image.asset("assets/onion.png",
                                width: 73, height: 66),
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              SizedBox(height: 33),
                              Text("Onion -2 kg",
                                  style: TextStyle(fontSize: 14)),
                              SizedBox(height: 3),
                              Text("Rs 149.99",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ],
                          )
                        ],
                      )),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Center(
              child: Text("You are Rs 200 away from free delivery",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text("Recommended", style: TextStyle(fontSize: 16)),
          ),
          SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 150 / 200),
              itemCount: imageList.length,
              itemBuilder: (BuildContext context, int index) {
                SizedBox(height: 5);
                return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 4,
                          top: 5,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _isClicked = !_isClicked;
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FavouriteScreen()));
                            },
                            child: Image.asset(
                              "assets/love.png",
                              height: 30,
                              width: 30,
                              fit: BoxFit.cover,
                              color: _isClicked
                                  ? const Color.fromARGB(255, 11, 61, 13)
                                      .withOpacity(0.5)
                                  : null,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 4,
                          bottom: 25,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ProductvarityScreen()));
                            },
                            child: Image.asset(
                              "assets/plus.png",
                              height: 20,
                              width: 16,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 25),
                            InkWell(
                              onTap: () {},
                              child: Image.asset(imageList[index]),
                            ),
                            const SizedBox(height: 2),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                (titleList[index]),
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            const SizedBox(
                                height: 2), // Add space between image and text
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                (priceList[index]),
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 1),
                            // for Star Icon
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                  children: List.generate(5, (index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 1),
                                  child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              _currentRating = index + 1;
                                            });
                                          },
                                          child: Icon(
                                            Icons.star,
                                            color: index < _currentRating
                                                ? const Color.fromARGB(
                                                    164, 255, 235, 59)
                                                : Colors.grey,
                                            size: 12,
                                          ))),
                                );
                              })),
                            ),
                          ],
                        ),
                      ],
                    ));
              },
            ),
          ),
          SizedBox(height: 20),
          Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/firsticon.png", width: 20, height: 14),
                  SizedBox(width: 5),
                  Text("Delivery",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(width: 250),
                  Text("Rs 0",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Container(width: 370, height: 1, color: Colors.grey),
            ),
            SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/total.png", width: 20, height: 14),
                  SizedBox(width: 5),
                  Text("Total",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(width: 250),
                  Text("Rs 360",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Container(width: 370, height: 1, color: Colors.grey),
            ),
          ]),
          SizedBox(height: 10),
          SizedBox(
              width: 390,
              height: 55,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CheckoutScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 17, 92, 19),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text("Go to checkout",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              )),
        ],
      ),
    );
  }
}
