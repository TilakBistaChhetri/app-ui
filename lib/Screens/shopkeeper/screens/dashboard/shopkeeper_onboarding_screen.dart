import 'package:flutter/material.dart';

class ShopkeeperOnboardingScreen extends StatelessWidget {
  const ShopkeeperOnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Image.asset("assets/ride.png"),
      Text("Freshness Delivered Daily",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      Text("Get warehouse-fresh vegetables",
          style: TextStyle(fontSize: 19)),
      Text("to your shop with just a few taps.",
          style: TextStyle(fontSize: 19)),
    ]);
  }
}
