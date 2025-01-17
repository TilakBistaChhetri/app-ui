import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/parking_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});
  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int _type = 1;
  void _handleRadio(Object? e) => setState(() {
        _type = e as int;
      });
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: 65),
      Center(
          child: Text("Payment",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold))),
      SizedBox(height: 12),
      Container(
        width: 400,
        height: 1,
        color: const Color.fromARGB(255, 230, 219, 219),
      ),
      SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Container(
            width: 400,
            height: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey)),
            child: Center(
                child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("Esewa",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                SizedBox(width: 250),
                Radio(
                  value: 1,
                  groupValue: _type,
                  onChanged: _handleRadio,
                  activeColor: const Color.fromARGB(255, 17, 82, 19),
                )
              ],
            ))),
      ),
      SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Container(
            width: 400,
            height: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey)),
            child: Center(
                child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("Cash on delivery",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                SizedBox(width: 170),
                Radio(
                  value: 2,
                  groupValue: _type,
                  onChanged: _handleRadio,
                  activeColor: const Color.fromARGB(255, 17, 82, 19),
                )
              ],
            ))),
      ),
      SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Container(
            width: 400,
            height: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey)),
            child: Center(
                child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("Khalti",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                SizedBox(width: 250),
                Radio(
                  value: 3,
                  groupValue: _type,
                  onChanged: _handleRadio,
                  activeColor: const Color.fromARGB(255, 17, 82, 19),
                )
              ],
            ))),
      ),
      SizedBox(height: 40),
      SizedBox(
          width: 400,
          height: 55,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ParkingScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 17, 92, 19),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text("Pay",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
          )),
    ]));
  }
}
