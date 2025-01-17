import 'package:flutter/material.dart';
class ShopkeeperStartedScreen extends StatelessWidget {
  const ShopkeeperStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("assets/time.png"),
        Text("Save Time Easily",
            style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        Text("Order bulk vegetables effortlessly and",
            style: TextStyle(fontSize: 18)),
        Center(
            child: Text("focus on growing your business.",
                style: TextStyle(fontSize: 18))),
      ],
    );
  }
}
