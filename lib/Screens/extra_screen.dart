import 'package:flutter/material.dart';

class ExtraScreen extends StatefulWidget {
  const ExtraScreen({super.key});

  @override
  State<ExtraScreen> createState() => _ExtraScreenState();
}

class _ExtraScreenState extends State<ExtraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Kathmandu"),
      )
    );
  }
}