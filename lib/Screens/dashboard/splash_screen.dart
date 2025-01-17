import 'dart:async';
import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/dashboard/selection_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4),
      () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => SelectionScreen())),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/logo.png"),
      ),
    );
  }
}
