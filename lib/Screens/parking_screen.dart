import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';

class ParkingScreen extends StatefulWidget {
  const ParkingScreen({super.key});

  @override
  State<ParkingScreen> createState() => _ParkingScreenState();
}

class _ParkingScreenState extends State<ParkingScreen> {
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
          "Picking",
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
          'assets/picking.png', // Ensure the path is correct
          width: 20,
          height: 20,
        )),
    StepperData(
        title: StepperText("Delivered",
            textStyle: const TextStyle(color: Colors.green, fontSize: 8)),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.all(Radius.circular(30))),
        )),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: 340),
        Container(
          width: 430,
          height: 441,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Packing your orders...",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Arriving at 11:45", style: TextStyle(fontSize: 14)),
            ),
            SizedBox(height: 18),
            Column(
              children: [
                SizedBox(height: 5),
                Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                        width: 390,
                        height: 138,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 15),
                            AnotherStepper(
                                stepperList: stepperData,
                                stepperDirection: Axis.horizontal,
                                iconWidth: 20,
                                iconHeight: 20,
                                activeBarColor: Colors.green,
                                inActiveBarColor: Colors.grey,
                                inverted: true,
                                //verticalGap: 30,
                                activeIndex: 1,
                                barThickness: 3),
                            SizedBox(height: 8),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, right: 8),
                              child: Row(
                                children: [
                                  Image.asset("assets/sangit.png",
                                      width: 44, height: 44),
                                  SizedBox(width: 5),
                                  Column(
                                    children: [
                                      Text("Sangit GM",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: 5),
                                      Text("Still in store",
                                          style: TextStyle(fontSize: 10)),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )))
              ],
            )
          ]),
        )
      ],
    ));
  }
}
