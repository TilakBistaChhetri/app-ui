import 'package:flutter/material.dart';
class StartedScreen extends StatelessWidget {
  const StartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("assets/dipesh.png"),
        Text("Know Before You Meet",
            style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        Text("Talk to your Delivery boy, know each other",
            style: TextStyle(fontSize: 18)),
        Center(
            child: Text("and make decision together",
                style: TextStyle(fontSize: 18))),
      ],
    );
  }
}
