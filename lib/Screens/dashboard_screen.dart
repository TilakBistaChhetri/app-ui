import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/dashboarddetails_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: 65),
      Center(
          child: Text("Dashboard",
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
      SizedBox(height: 7),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text("Order History",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
      SizedBox(height: 3),
      Expanded(
          child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 100 / 110),
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                  width: 55,
                  height: 23,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey)),
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
                        child: Text("# 738",
                            style: TextStyle(fontSize: 8, color: Colors.white)),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 85,
                        height: 23,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(4),
                          ),
                          color: const Color.fromARGB(255, 14, 94, 18),
                        ),
                        alignment: Alignment.center,
                        child: Text("8 sep, 2024",
                            style: TextStyle(fontSize: 8, color: Colors.white)),
                      ),
                      SizedBox(height: 13),
                      Center(
                          child: Image.asset("assets/box.png",
                              width: 33, height: 34)),
                      SizedBox(height: 2),
                      Center(
                          child: Text("Delivered",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold))),
                      SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text("RS 1350.00 (5 products)",
                            style:
                                TextStyle(fontSize: 10, color: Colors.black)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DashboarddetailsScreen()));
                            },
                            child: Text("View Details",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold))),
                      )
                    ],
                  ));
            }),
      )),
    ]));
  }
}
