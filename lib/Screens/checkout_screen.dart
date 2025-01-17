import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/payment_screen.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});
  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 65),
              Center(
                  child: Text("Checkout",
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
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Details",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: DataTable(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    columns: [
                      DataColumn(
                          label: Image.asset("assets/call.png",
                              width: 16, height: 16)),
                      DataColumn(
                          label: Text("Pujan Khanal",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold))),
                      DataColumn(
                          label: Image.asset("assets/transfer.png",
                              width: 16, height: 16)),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Image.asset("assets/phone.png",
                            width: 16, height: 16)),
                        DataCell(Text("9876543214",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold))),
                        DataCell(Image.asset("assets/transfer.png",
                            width: 16, height: 16)),
                      ])
                    ]),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Address",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  width: 400,
                  height: 89,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(
                        color: const Color.fromARGB(255, 221, 214, 214)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .start, // Align children to the start of the Row
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Image.asset("assets/map.png",
                            width: 24, height: 24),
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          SizedBox(height: 15),
                          Text('Aadarsha Tarkari Pasal',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          SizedBox(height: 1),
                          Text('Gausala-23, Kathmandu',
                              style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      SizedBox(width: 90),
                      Image.asset("assets/transfer.png", width: 24, height: 24),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                    decoration: InputDecoration(
                  labelText: "Enter Cupon Code",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 221, 214, 214)),
                  ),
                  hintStyle: TextStyle(fontSize: 16),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('assets/tag.png', width: 24, height: 24),
                  ),
                )),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Order Summary (4 items)",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: DataTable(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    columns: [
                      DataColumn(
                          label: Text("Subtotal",
                              style: TextStyle(
                                fontSize: 16,
                              ))),
                      DataColumn(
                          label: Text("Rs 360",
                              style: TextStyle(
                                fontSize: 16,
                              ))),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(
                            Text("Delivery", style: TextStyle(fontSize: 16))),
                        DataCell(Text("Rs 0", style: TextStyle(fontSize: 16))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("Total",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold))),
                        DataCell(Text("340",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold))),
                      ]),
                    ]),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 400,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 17, 92, 19),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text("Play Now",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ])));
  }
}
