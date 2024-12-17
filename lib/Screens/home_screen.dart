import 'dart:async';
import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/favourite_screen.dart';
import 'package:laligurashapp/Screens/second_screen.dart';
import 'package:laligurashapp/Screens/tenth_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> imageList = [
    "assets/slider1.png",
    "assets/slider2.png",
    "assets/slider3.png",
  ];
  ScrollController _scrollController = ScrollController();
  bool _isClicked = false;

  @override
  void initState() {
    super.initState();

  
    Timer.periodic(Duration(seconds: 3), (timer) {
      if (_scrollController.hasClients) {
        final nextScrollPosition = _scrollController.position.pixels + 300;

        if (nextScrollPosition >= _scrollController.position.maxScrollExtent) {
          _scrollController.animateTo(
            0, 
            duration: Duration(seconds: 2),
            curve: Curves.easeInOut,
          );
        } else {
          _scrollController.animateTo(
            nextScrollPosition,
            duration: Duration(seconds: 2),
            curve: Curves.easeInOut,
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height:20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset("assets/firsticon.png", width: 50),
              ),
              Text(
                "Gausala, KTM",
                style: TextStyle(
                  fontSize: 25,
                  color: const Color.fromARGB(255, 48, 45, 45),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset("assets/secondicon.png", width: 50),
            ],
          ),
          SizedBox(height: 1),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal, 
            controller: _scrollController, 
            child: Row(
              children: [
                for (var image in imageList)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      image,
                      width: 300, 
                      height: 200, 
                      fit: BoxFit.cover, 
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 3),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Vegetablesss",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width:5),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    width:120,
                    height:170,
                    decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius:BorderRadius.circular(10),
                       border: Border.all(
                            color: const Color.fromARGB(255, 192, 182, 182), 
                       width: 2.0,        
                      ),
                  
                    ),
                    



                     
                    child:Stack(
                      children: [


                                   Column(
                        children: [
                         SizedBox(height:2),
                           InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TenthScreen()),
            );
          },
          child: Container(
            width: 200,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),  
            ),
            child: Image.asset(
              "assets/capcium.png",
              width:200,
              height:120,  
             
            ),
          ),
                           ),




                      SizedBox(height:2),
                      Text("Capcium", style:TextStyle(fontSize:15, color:Colors.black, fontWeight:FontWeight.bold)),
                      SizedBox(height:1),
                      Text("Rs. 140.99"), 
                         
                        ]
                      ),   

  Positioned(
      right: 2,
      top: 2,
      child: InkWell(
        onTap: () {
          setState(() {
            _isClicked = !_isClicked; // Toggle overlay visibility
          });
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FavouriteScreen()),
          );
        },
        child: Stack(
          children: [
            Image.asset(
              "assets/love.png",
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            ),
            if (_isClicked)
              Container(
                height: 40,
                width: 40,
                color: const Color.fromARGB(255, 11, 61, 13).withOpacity(0.5), // Semi-transparent overlay
              ),
          ],
        ),
      ),
    ),    

                      
                 
                              
                      ],
                    )



                  ),
                ),
              
              
                SizedBox(width:2),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    width:120,
                    height:170,
                    decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius:BorderRadius.circular(10),
                       border: Border.all(
                            color: const Color.fromARGB(255, 192, 182, 182), 
                       width: 2.0,        
                      ),
                  
                    ),
                  ),
                ),
              
                SizedBox(width:2),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    width:120,
                    height:170,
                    decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius:BorderRadius.circular(10),
                       border: Border.all(
                            color: const Color.fromARGB(255, 192, 182, 182), 
                       width: 2.0,        
                      ),
                  
                    ),
                  ),
                )
              
              ],
                        ),
            )
    

          
        ],
      ),
    );
  }
}