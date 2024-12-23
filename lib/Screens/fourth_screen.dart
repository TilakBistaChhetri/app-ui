import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/register_screen.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Column(
        children: [
          SizedBox(height:120),
          Center(child:Image.asset("assets/bag.png"),
          ),
          SizedBox(height:40),
          Center(child:Text("Know Before You Meet", style:TextStyle(fontSize:25, color:Colors.black, fontWeight:FontWeight.bold)),
          ),
          SizedBox(height:5),
          Center(child:Text("Talk to your Delivery boy, know each other", style:TextStyle(fontSize:18))),
          SizedBox(height:1),
                 Center(child:Text("and make decision together", style:TextStyle(fontSize:18))),
                 SizedBox(height:35),
                  Center(child:Image.asset("assets/arrow3.png"),
          ),
              SizedBox(height:20),
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));


              },
               child: Text("Get Started",style:TextStyle(fontSize:18, color:Colors.black)))

        ],
      )


    );
  }
}