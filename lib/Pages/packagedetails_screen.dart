import 'package:flutter/material.dart';

class PackagedetailsScreen extends StatefulWidget {
  const PackagedetailsScreen({super.key});

  @override
  State<PackagedetailsScreen> createState() => _PackagedetailsScreenState();
}

class _PackagedetailsScreenState extends State<PackagedetailsScreen> {
  final List<String> imageList = [
    "assets/capsicums.png",
    "assets/tomato.png",
    "assets/tomato.png",
    "assets/tomato.png",
  ];
  final List<String> price1List = ["Rs 140", "Rs 120", "Rs 120", "Rs 120"];
  final List<String> price2List = ["Rs 700", "Rs 120", "Rs 120", "Rs 120"];
  final List<String> text1List = [
    "Red Capsicum",
    " Tomato",
    "Tomato",
    "Tomato"
  ];
  final List<String> text2List = [
    "5*Rs 140",
    " 1* Rs 120",
    "1*Rs 120",
    " 1* Rs 120"
  ];
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
          color: Colors.grey,
        ),
        SizedBox(height: 10),
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
                    borderRadius: BorderRadius.circular(10),
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
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Text("Small Family",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 10),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 7,
                  mainAxisSpacing: 7,
                  childAspectRatio: 158 / 192,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Container(
                              width: 50,
                              height: 28,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(4),
                                ),
                                color: const Color.fromARGB(255, 14, 94, 18),
                              ),
                              alignment: Alignment.center,
                              child: Text(price1List[index],
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white)),
                            ),
                            SizedBox(height: 13),
                            Center(
                                child: Image.asset(imageList[index],
                                    width: 66, height: 61)),
                            SizedBox(height: 6),
                            Center(
                                child: Container(
                                    width: 138, height: 1, color: Colors.grey)),
                            SizedBox(height: 5),
                            Center(
                                child: Text(text1List[index],
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold))),
                            SizedBox(height: 5),
                            Center(
                                child: Text(text2List[index],
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold))),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 50,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(4),
                                    ),
                                    color:
                                        const Color.fromARGB(255, 14, 94, 18),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(price2List[index],
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white)),
                                ),
                              ],
                            )
                          ]));
                }),
          ),
        ),
      ])),
    );
  }
}
