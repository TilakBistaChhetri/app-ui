import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/bottomnavigation_screen.dart';

class ShopkeeperLoginScreen extends StatefulWidget {
  const ShopkeeperLoginScreen({super.key});

  @override
  State<ShopkeeperLoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<ShopkeeperLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(height: 85),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical:8),
            child: Container(
              width: 395,
              height: 1,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Login",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(height: 2),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextField(
                    decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 48, 41, 41)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                )),
              ),
              Positioned(
                left: 10,
                top: 12,
                child: Image.asset(
                  "assets/email.png",
                  width: 25,
                  height: 25,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(height: 1),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextField(
                    decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 48, 41, 41)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                )),
              ),
              Positioned(
                left: 10,
                top: 12,
                child: Image.asset(
                  "assets/password.png",
                  width: 25,
                  height: 25,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(height: 2),
          TextButton(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterScreen()));
            },
            child: Text('Forgot Password?',
                style:
                    TextStyle(color: const Color.fromARGB(255, 29, 104, 31))),
          ),
          SizedBox(height: 2),
          SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomnavigationScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 17, 92, 19),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text("Continue",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              )),
                ],
              ),
            ),
          );
  }
}
