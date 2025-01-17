import 'package:flutter/material.dart';

class NutrientScreen extends StatefulWidget {
  const NutrientScreen({super.key});

  @override
  State<NutrientScreen> createState() => _NutrientScreenState();
}

class _NutrientScreenState extends State<NutrientScreen> {
  final List<String> orderList = [
    "assets/order1.png",
    "assets/order2.png",
    "assets/order3.png",
    "assets/order4.png",
  ];
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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 65),
        Center(
            child: Text("Nutrient",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold))),
        SizedBox(height: 12),
        Container(
          width: 400,
          height: 1,
          color: Colors.grey,
        ),
        SizedBox(height: 18),
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Container(
              height: 40,
              width: 272,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey),
              ),
              child: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.red[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(text: ' 7 Days '),
                    Tab(text: '14 Days '),
                    Tab(text: '30 Days'),
                  ])),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text("Nutrion value on your order",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ),
        Expanded(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
                //childAspectRatio: 68/121
              ),
              itemCount: orderList.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  orderList[index],
                  width: 68,
                  height: 121,
                );
              }),
        ),
        SizedBox(height: 150),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text("Suggest Vegetables",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
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
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
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
      ])),
    );
  }
}
