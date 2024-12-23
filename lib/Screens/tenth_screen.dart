import 'package:flutter/material.dart';

class TenthScreen extends StatefulWidget {
  const TenthScreen({super.key});

  @override
  State<TenthScreen> createState() => _TenthScreenState();
}

class _TenthScreenState extends State<TenthScreen> {
    ScrollController _scrollController = ScrollController();
  bool _isClicked = false;
  int _currentRating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(height:90),
          Center(child:Text("Basket", style:TextStyle(fontSize:25, color:Colors.black, fontWeight:FontWeight.bold))),
          SizedBox(height:15),
          Container(
            width:1000,
            height:1,
            color:Colors.black,
          ),
          SizedBox(height:15),


          Stack(
            //alignment: Alignment.centerRight,
            children: [
            Column(
              children: [
                Image.asset("assets/cabbage.png", width:250, height:100),
                 Text("Chinese Cabbage", style:TextStyle(fontSize:20, color:Colors.black, fontWeight:FontWeight.bold)),
                 SizedBox(height:4),
                         Row(
                        children:List.generate(5, (index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal:1),
                            child: Material(
                              color:Colors.transparent,
                              child:InkWell(
                                onTap:() {
                                  setState(() {
                                    _currentRating = index + 1;
                            
                                    
                                  });
                                },
                                child:Icon(
                                  Icons.star,
                                  color: index < _currentRating? Colors.yellow : Colors.grey,
                                  size:15,
                                )
                              )
                            ),
                          );
                        }),
                      ), 
                 



                    
              ]
             

              )
            ],
            
          ),

          SizedBox(height:50),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                           width:360,
                           height:1,
                           color:Colors.black,
                         ),
             ),
          SizedBox(height:5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset("assets/cabbage2.png"),
              ],
            ),
          )




        ],
      )

    );
  }
}