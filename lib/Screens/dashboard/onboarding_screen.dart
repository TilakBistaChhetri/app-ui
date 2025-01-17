import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Image.asset("assets/ride.png"),
      Text("Create Your Profile",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      Text("Complete your profile to help you find by",
          style: TextStyle(fontSize: 19)),
      Text("Delivery boy who will be right for you.",
          style: TextStyle(fontSize: 19)),
    ]);
  }
}
