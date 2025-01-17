import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';

class DashboarddetailsScreen extends StatefulWidget {
  const DashboarddetailsScreen({super.key});
  @override
  State<DashboarddetailsScreen> createState() => _DashboarddetailsScreenState();
}

class _DashboarddetailsScreenState extends State<DashboarddetailsScreen> {
  final List<String> imageList = [
    "assets/capsicums.png",
    "assets/tomato.png",
  ];
  final List<String> priceList = ["Rs 140", "Rs 120"];
  final List<String> price1List = ["Rs 700", "Rs 120"];
  final List<String> textList = [" Red Capsicum", "Tomato"];
  final List<String> text1List = [" 5*Rs 140", "1*Rs 120"];
  List<StepperData> stepperData = [
    StepperData(
        title: StepperText(
          "Confirmed",
          textStyle: const TextStyle(
            color: Colors.green,
            fontSize: 8,
          ),
        ),
        iconWidget: Image.asset(
          'assets/confirm.png', // Ensure the path is correct
          width: 20,
          height: 20,
        )),
    StepperData(
        title: StepperText(
          "Picking items",
          textStyle: const TextStyle(
            color: Colors.green,
            fontSize: 8,
          ),
        ),
        iconWidget: Image.asset(
          'assets/picking.png', // Ensure the path is correct
          width: 20,
          height: 20,
        )),
    StepperData(
        title: StepperText(
          "Our for delivery",
          textStyle: const TextStyle(
            color: Colors.green,
            fontSize: 8,
          ),
        ),
        iconWidget: Image.asset(
          'assets/firsticon.png', // Ensure the path is correct
          width: 20,
          height: 20,
        )),
    StepperData(
        title: StepperText(
          "Delivered",
          textStyle: const TextStyle(
            color: Colors.green,
            fontSize: 8,
          ),
        ),
        iconWidget: Image.asset(
          'assets/box.png', // Ensure the path is correct
          width: 20,
          height: 20,
        )),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: 65),
      Center(
          child: Text("Details",
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
      SizedBox(height: 15),
      Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8),
        child: Container(
            width: 395,
            height: 660,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("Order Details",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(width: 7),
                    Text("8 April 2024",
                        style: TextStyle(
                          fontSize: 8,
                        )),
                    SizedBox(width: 7),
                    Text("2 Prodcut",
                        style: TextStyle(
                          fontSize: 8,
                        ))
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  width: 400,
                  height: 1,
                  color: Colors.grey,
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: DataTable(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                      columns: [
                        DataColumn(
                            label: Text("ORDER ID:",
                                style: TextStyle(
                                  fontSize: 8,
                                ))),
                        DataColumn(
                            label: Text("PAYMENT METHOD:",
                                style: TextStyle(
                                  fontSize: 8,
                                ))),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text("SUB TOTAL:",
                              style: TextStyle(fontSize: 10))),
                          DataCell(Text("RS 1350",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold))),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("DISCOUNT:",
                              style: TextStyle(fontSize: 10))),
                          DataCell(Text("10%",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold))),
                        ]),
                        DataRow(cells: [
                          DataCell(Text("SHIPPING:",
                              style: TextStyle(fontSize: 10))),
                          DataCell(Text("FREE",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold))),
                        ]),
                        DataRow(cells: [
                          DataCell(
                              Text("TOTAL:", style: TextStyle(fontSize: 10))),
                          DataCell(Text("RS1350",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold))),
                        ]),
                      ]),
                ),
                SizedBox(height: 15),
                AnotherStepper(
                  stepperList: stepperData,
                  stepperDirection: Axis.horizontal,
                  iconWidth: 20,
                  iconHeight: 20,
                  activeBarColor: const Color.fromARGB(255, 17, 77, 19),
                  inActiveBarColor: Colors.grey,
                  inverted: true,
                  //verticalGap: 30,
                  activeIndex: 3,
                  barThickness: 6,
                ),
                SizedBox(height: 1),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(19),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          childAspectRatio: 130 / 165),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Container(
                            width: 50,
                            height: 28,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.grey)),
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
                                    color:
                                        const Color.fromARGB(255, 14, 94, 18),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(priceList[index],
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(height: 5),
                                Center(
                                  child: Image.asset(
                                    imageList[index],
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Center(
                                    child: Container(
                                  width: 150,
                                  height: 1,
                                  color: Colors.grey,
                                )),
                                SizedBox(height: 2),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Text(textList[index],
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black)),
                                ),
                                SizedBox(height: 2),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Text(text1List[index],
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black)),
                                ),
                                SizedBox(height: 3),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(4),
                                        ),
                                        color: const Color.fromARGB(
                                            255, 14, 94, 18),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(price1List[index],
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                )
                              ],
                            ));
                      }),
                )),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  SizedBox(
                    width: 100,
                    height: 29,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 17, 92, 19),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text("Re Order",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  )
                ])
              ],
            )),
      ),
    ]));
  }
}
