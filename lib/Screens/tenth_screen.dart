import 'package:flutter/material.dart';

class TenthScreen extends StatefulWidget {
  const TenthScreen({super.key});
  @override
  State<TenthScreen> createState() => _TenthScreenState();
}

class _TenthScreenState extends State<TenthScreen> {
  ScrollController _scrollController = ScrollController();
  bool _isClicked = false;
  int _currentRating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 90),
        Center(
            child: Text("Basket",
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
        SizedBox(height: 15),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                alignment: Alignment.centerLeft,
                width: 124,
                height: 124,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bok.png"), fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(width: 30),
            Stack(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                        ),
                        child: Text("Chinese Cabbage",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(width: 7),
                      Container(
                        width: 55,
                        height: 23,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color.fromARGB(255, 180, 192, 181)),
                        alignment: Alignment.center,
                        child: Text("In Stock", style: TextStyle(fontSize: 10)),
                      )
                    ],
                  ),
                  SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: List.generate(5, (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 1),
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
                                    size: 15,
                                  ))),
                        );
                      }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                    ),
                    child: Text("Sale Till Now 2,500 Kg",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      height: 1,
                      width: 200,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                        ),
                        child: Text("Rs. 480.00",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                        ),
                        child: Text("Rs. 170.28",
                            style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 0, 29, 2))),
                      ),
                      SizedBox(width: 7),
                      Container(
                        width: 45,
                        height: 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color.fromARGB(255, 218, 187, 187),
                        ),
                        alignment: Alignment.center,
                        child: Text("64% Off",
                            style: TextStyle(fontSize: 10, color: Colors.red)),
                      )
                    ],
                  ),
                  SizedBox(height: 6),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 62,
                        height: 27,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                        ),
                        /*
                        child:Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
    
                            
                            IconButton(onPressed:remove,
                        icon:Image.asset("assets/remove.png"),
                      ),
                      SizedBox(width:1),
                      Text("3", style:TextStyle(fontSize:14, color:Colors.green, fontWeight:FontWeight.bold)),
                         IconButton(onPressed:add,
                        icon:Image.asset("assets/add.png"),
                      ),
                      

                          ],
                        )
                        */
                      ),
                    ],
                  )
                ])
              ],
            )
          ],
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 360,
            height: 1,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 2),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset("assets/bok.png"),
              SizedBox(width: 3),
              Image.asset("assets/cabbage2.png"),
              SizedBox(width: 3),
              Image.asset("assets/cabbage3.png"),
              SizedBox(width: 3),
              Image.asset("assets/cabbage4.png"),
            ],
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 360,
            height: 1,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Text("Additional Information",
              style: TextStyle(
                  fontSize: 18, color: const Color.fromARGB(255, 3, 48, 6))),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
              "Chinese cabbage, a versatile leafy green vegetable,"
              "is a staple in Asian cuisine. It comes in two main "
              "varities. Napa cabbage and Bok Choy. Napa cabbage "
              "also known as Chinese leaf or wombok, has a tight "
              "head of broad, pale green leaves with thick white "
              "stems.",
              style: TextStyle(fontSize: 14)),
        ),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              Image.asset("assets/check.png"),
              SizedBox(width: 3),
              Text("100 g of fresh leaves provides.")
            ],
          ),
        ),
        SizedBox(height: 3),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              Image.asset("assets/check.png"),
              SizedBox(width: 3),
              Text("The fiber content promotes healthy digestion.")
            ],
          ),
        ),
        SizedBox(height: 3),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              Image.asset("assets/check.png"),
              SizedBox(width: 3),
              Text("The fiber content promotes healthy digestion.")
            ],
          ),
        ),
      ],
    ));
  }
}
