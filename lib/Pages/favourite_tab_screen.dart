import 'package:flutter/material.dart';

class favouritetabScreen extends StatefulWidget {
  const favouritetabScreen({super.key});

  @override
  State<favouritetabScreen> createState() => _favouritetabScreenState();
}

class _favouritetabScreenState extends State<favouritetabScreen> {
  ScrollController _scrollController = ScrollController();
  bool _isClicked = false;
  int _currentRating = 0;
  final List<String> favouriteProdut = [
    "assets/onion.png",
    "assets/cabbage.png",
    "assets/brinjal.png"
  ];
  final List<String> titleList = ["Onion", "Cabbage", "Brinjal"];
  final List<String> priceList = ["Rs. 140.99", "Rs. 140.99", "Rs. 140.99"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 90),
          Center(
              child: Text("Favourite",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold))),
          SizedBox(height: 15),
          Container(
            width: 1000,
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(height: 5),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 150 / 200),
                  itemCount: favouriteProdut.length,
                  itemBuilder: (context, index) {
                    return Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
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
                                  //Navigator.push(context, MaterialPageRoute(builder: (context) => FavouriteScreen()));
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
                                  //Navigator.push(context, MaterialPageRoute(builder: (context) => ProductvarityScreen()));
                                },
                                child: Image.asset(
                                  "assets/cart.png",
                                  height: 30,
                                  width: 30,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 25),
                                InkWell(
                                  onTap: () {
                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> TenthScreen()));
                                  },
                                  child: Image.asset(favouriteProdut[index]),
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
                                    height:
                                        2), // Add space between image and text
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1),
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
                  }),
            ),
          )
        ],
      ),
    );
  }
}
