import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(height:90),
          Center(child:Text("Favourite", style:TextStyle(fontSize:25, color:Colors.black, fontWeight:FontWeight.bold))),
          SizedBox(height:15),
          Container(
            width:1000,
            height:1,
            color:Colors.black,
          )
        ],
      )
    );
  }
}