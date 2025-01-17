import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/favourite_screen.dart';
import 'package:laligurashapp/Screens/productvarity_screen.dart';
import 'package:laligurashapp/Screens/tenth_screen.dart';

class SearchtabScreen extends StatefulWidget {
  const SearchtabScreen({super.key});

  @override
  State<SearchtabScreen> createState() => _SearchtabScreenState();
}

class _SearchtabScreenState extends State<SearchtabScreen> {
  // for ChipChoise
  int? _selectedChipIndex;
  final List<String> labels = [
    "Vegetables",
    "Herbs",
    "leafy",
    "spices",
    "roots"
  ];
  int? _select;
  final List<String> text = [
    "Fresh",
    "Healthy",
    "Low Fat",
    "High Fat",
    "Sugar",
    "Fiber"
  ];
  // for Container
  bool _isClicked = false;
  int _currentRating = 0;
  List<String> sliderList = [
    "assets/slider1.png",
    "assets/slider2.png",
    "assets/slider3.png",
  ];
  final List<String> imageList = [
    "assets/capcium.png",
    "assets/potato.png",
    "assets/tomato.png",
    "assets/onion.png",
    "assets/cabbage.png",
    "assets/brinjal.png"
  ];
  final List<String> titleList = [
    "Capciium",
    "Potato",
    "Tomato",
    "Onion",
    "Cabbage",
    "Brinjal"
  ];
  final List<String> priceList = [
    "Rs. 140.99",
    "Rs. 140.99",
    "Rs.140.99",
    "Rs. 140.99",
    "Rs. 140.99",
    "Rs. 140.99"
  ];
  final List<bool> isFavorite = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 65),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 2.0),
              child: Image.asset("assets/firsticon.png", width: 50),
            ),
            Text(
              "Gausala, KTM",
              style: TextStyle(
                fontSize: 25,
                color: const Color.fromARGB(255, 48, 45, 45),
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset("assets/secondicon.png", width: 50),
          ],
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: TextField(
              decoration: InputDecoration(
            labelText: "Search",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white),
            ),
            hintStyle: TextStyle(fontSize: 20),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('assets/search.png', width: 31, height: 27),
            ),
          )),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Wrap(
              spacing: 12,
              children: List.generate(labels.length, (index) {
                return ChoiceChip(
                  label: Text(labels[index]),
                  selected: _selectedChipIndex == index,
                  selectedColor: const Color.fromARGB(255, 22, 117, 25),
                  onSelected: (bool selected) {
                    setState(() {
                      _selectedChipIndex = selected ? index : null;
                    });
                  },
                );
              })),
        ),

        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: Container(
              width: 400,
              height: 1,
              color: const Color.fromARGB(255, 235, 225, 225)),
        ),

        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Wrap(
              spacing: 12,
              children: List.generate(labels.length, (index) {
                return ChoiceChip(
                  label: Text(text[index]),
                  selected: _select == index,
                  selectedColor: const Color.fromARGB(255, 22, 117, 25),
                  onSelected: (bool selected) {
                    setState(() {
                      _select = selected ? index : null;
                    });
                  },
                );
              })),
        ),
        // GridView
        SizedBox(height: 2),
        Flexible(
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TenthScreen()));
                            },
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
        SizedBox(height: 6),
        Center(
          child: Image.asset("assets/point.png", width: 50, height: 10),
        ),
      ]),
    );
  }
}
