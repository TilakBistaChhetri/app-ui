import 'package:flutter/material.dart';
import 'package:laligurashapp/Pages/packagedetails_screen.dart';

class PackagetabScreen extends StatefulWidget {
  const PackagetabScreen({super.key});
  @override
  State<PackagetabScreen> createState() => _PackagetabScreenState();
}

class _PackagetabScreenState extends State<PackagetabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 65),
        Center(
            child: Text("Package",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold))),
        SizedBox(height: 12),
        Container(
          width: 400,
          height: 1,
          color: const Color.fromARGB(255, 226, 210, 210),
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
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.green,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(text: ' 7 Days '),
                    Tab(text: '14 Days '),
                    Tab(text: '30 Days'),
                  ])),
        ),

        // For Row
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                    width: 119,
                    height: 207,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Container(
                            width: 55,
                            height: 23,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(4),
                              ),
                              color: const Color.fromARGB(255, 14, 94, 18),
                            ),
                            alignment: Alignment.center,
                            child: Text("Rs 800",
                                style: TextStyle(
                                    fontSize: 8, color: Colors.white)),
                          ),
                          SizedBox(height: 13),
                          Center(
                              child: Image.asset("assets/garlic.png",
                                  width: 33, height: 34, fit: BoxFit.cover)),
                          SizedBox(height: 2),
                          Center(
                              child: Text("Small Family",
                                  style: TextStyle(
                                      fontSize: 8, color: Colors.green))),
                          SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Container(
                                alignment: Alignment.center,
                                width: 82,
                                height: 61,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(color: Colors.grey)),
                                child: Column(
                                  children: [
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Image.asset("assets/Checkmark.png",
                                            width: 10,
                                            height: 8,
                                            fit: BoxFit.cover),
                                        SizedBox(width: 3),
                                        Text("5% Discount",
                                            style: TextStyle(
                                                fontSize: 6,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Image.asset("assets/Checkmark.png",
                                            width: 10,
                                            height: 8,
                                            fit: BoxFit.cover),
                                        SizedBox(width: 3),
                                        Text("Recipe Book",
                                            style: TextStyle(
                                                fontSize: 6,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                              width: 111,
                              height: 23,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 8),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PackagedetailsScreen()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 17, 92, 19),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  child: Text("Add this package",
                                      style: TextStyle(
                                          fontSize: 5,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ),
                              )),
                        ])),
              ),
              SizedBox(width: 5),

              // For large family

              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                    width: 139,
                    height: 248,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Container(
                            width: 55,
                            height: 23,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(4),
                              ),
                              color: const Color.fromARGB(255, 14, 94, 18),
                            ),
                            alignment: Alignment.center,
                            child: Text("Rs 800",
                                style: TextStyle(
                                    fontSize: 8, color: Colors.white)),
                          ),
                          SizedBox(height: 13),
                          Center(
                              child: Image.asset("assets/large.png",
                                  width: 33, height: 34, fit: BoxFit.cover)),
                          SizedBox(height: 2),
                          Center(
                              child: Text("Large Family",
                                  style: TextStyle(
                                      fontSize: 8, color: Colors.green))),
                          SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Container(
                                alignment: Alignment.center,
                                width: 97,
                                height: 88,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(color: Colors.grey)),
                                child: Column(
                                  children: [
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Image.asset("assets/Checkmark.png",
                                            width: 10,
                                            height: 8,
                                            fit: BoxFit.cover),
                                        SizedBox(width: 3),
                                        Text("15% Discount",
                                            style: TextStyle(
                                                fontSize: 6,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Image.asset("assets/Checkmark.png",
                                            width: 10,
                                            height: 8,
                                            fit: BoxFit.cover),
                                        SizedBox(width: 3),
                                        Text("Moneyback",
                                            style: TextStyle(
                                                fontSize: 6,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Image.asset("assets/Checkmark.png",
                                            width: 10,
                                            height: 8,
                                            fit: BoxFit.cover),
                                        SizedBox(width: 3),
                                        Text("Healthy Tip",
                                            style: TextStyle(
                                                fontSize: 6,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                              width: 111,
                              height: 23,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 8),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PackagedetailsScreen()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 17, 92, 19),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  child: Text("Add this package",
                                      style: TextStyle(
                                          fontSize: 5,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ),
                              )),
                        ])),
              ),
              SizedBox(width: 5),

              // For Medium
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                    width: 119,
                    height: 207,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Container(
                            width: 55,
                            height: 23,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(4),
                              ),
                              color: const Color.fromARGB(255, 14, 94, 18),
                            ),
                            alignment: Alignment.center,
                            child: Text("Rs 800",
                                style: TextStyle(
                                    fontSize: 8, color: Colors.white)),
                          ),
                          SizedBox(height: 13),
                          Center(
                              child: Image.asset("assets/medium.png",
                                  width: 33, height: 34, fit: BoxFit.cover)),
                          SizedBox(height: 2),
                          Center(
                              child: Text("MediumFamily",
                                  style: TextStyle(
                                      fontSize: 8, color: Colors.green))),
                          SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Container(
                                alignment: Alignment.center,
                                width: 82,
                                height: 61,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(color: Colors.grey)),
                                child: Column(
                                  children: [
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Image.asset("assets/Checkmark.png",
                                            width: 10,
                                            height: 8,
                                            fit: BoxFit.cover),
                                        SizedBox(width: 3),
                                        Text("10% Discount",
                                            style: TextStyle(
                                                fontSize: 6,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Image.asset("assets/Checkmark.png",
                                            width: 10,
                                            height: 8,
                                            fit: BoxFit.cover),
                                        SizedBox(width: 3),
                                        Text("Recipe Book",
                                            style: TextStyle(
                                                fontSize: 6,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                              width: 111,
                              height: 23,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 8),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PackagedetailsScreen()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 17, 92, 19),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  child: Text("Add this package",
                                      style: TextStyle(
                                          fontSize: 5,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ),
                              )),
                        ])),
              ),
            ],
          ),
        )
      ])),
    );
  }
}
