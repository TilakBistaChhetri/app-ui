import 'package:flutter/material.dart';

class TenthScreen extends StatefulWidget {
  const TenthScreen({super.key});

  @override
  State<TenthScreen> createState() => _TenthScreenState();
}

class _TenthScreenState extends State<TenthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Basket"),
      ),
    );
  }
}