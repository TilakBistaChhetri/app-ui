import 'package:flutter/material.dart';

class ShopkeeperWelcomeScreen extends StatelessWidget {
  const ShopkeeperWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("assets/watching.png"),
        Image.asset("assets/text2.png"),
      ],
    );
  }
}
