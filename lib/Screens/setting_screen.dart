import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 65),
        Center(
            child: Text("Setting",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold))),
        SizedBox(height: 12),
        Container(
          width: 400,
          height: 1,
          color: Colors.grey,
        ),
        SizedBox(height: 34),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                  width: 153,
                  height: 162,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 12),
                      Image.asset("assets/man.png"),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Pujan Khanal",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      SizedBox(height: 1),
                      Center(
                        child: Text("Customer",
                            style: TextStyle(fontSize: 8, color: Colors.grey)),
                      ),
                      SizedBox(height: 3),
                      Center(
                        child: Text("Edit Profile",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.green,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  )),
            ),
            SizedBox(width: 22),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                  width: 153,
                  height: 162,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text("BILLING ADDRESS",
                            style: TextStyle(fontSize: 8, color: Colors.grey)),
                        Text("Pujan Khanal",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Text("Aadarsha tarkari pasal",
                            style: TextStyle(fontSize: 8, color: Colors.grey)),
                        Text("Gausala Kathmandu",
                            style: TextStyle(fontSize: 8, color: Colors.grey)),
                        SizedBox(height: 11),
                        Text("pujan@gmail.com",
                            style: TextStyle(fontSize: 10, color: Colors.grey)),
                        Text("987654321",
                            style: TextStyle(fontSize: 10, color: Colors.grey)),
                        Text("Edit Address",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.green,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )),
            ),
          ],
        ),
        SizedBox(height: 70),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: TextField(
                  decoration: InputDecoration(
                hintText: "pujankhanal@gmail.com",
                hintStyle: TextStyle(
                    fontSize: 14, color: const Color.fromARGB(255, 48, 41, 41)),
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
        SizedBox(height: 6),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: TextField(
                  decoration: InputDecoration(
                hintText: "Full Name",
                hintStyle: TextStyle(
                    fontSize: 14, color: const Color.fromARGB(255, 48, 41, 41)),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              )),
            ),
            Positioned(
              left: 10,
              top: 12,
              child: Image.asset(
                "assets/contact.png",
                width: 25,
                height: 25,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        SizedBox(height: 6),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: TextField(
                  decoration: InputDecoration(
                hintText: "Mobile",
                hintStyle: TextStyle(
                    fontSize: 14, color: const Color.fromARGB(255, 48, 41, 41)),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              )),
            ),
            Positioned(
              left: 10,
              top: 12,
              child: Image.asset(
                "assets/phone.png",
                width: 25,
                height: 25,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        SizedBox(height: 6),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: TextField(
                  decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(
                    fontSize: 14, color: const Color.fromARGB(255, 48, 41, 41)),
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
      ]),
    ));
  }
}
