import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/dashboard_screen.dart';
import 'package:laligurashapp/Screens/logout_screen.dart';
import 'package:laligurashapp/Screens/nutrient_screen.dart';
import 'package:laligurashapp/Screens/setting_screen.dart';
import 'package:laligurashapp/Screens/shopping_screen.dart';

class ProfiletabScreen extends StatefulWidget {
  const ProfiletabScreen({super.key});

  @override
  State<ProfiletabScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfiletabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: 65),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 2.0),
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
      SizedBox(height: 12),
      Container(
        width: 400,
        height: 1,
        color: Colors.grey,
      ),
      SizedBox(height: 38),
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
      SizedBox(height: 8),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset("assets/dashboard.png", width: 20, height: 20),
          ),
          SizedBox(width: 4),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DashboardScreen()));
            },
            child: Text("Dashboard",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
      SizedBox(height: 1),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset("assets/shopping.png", width: 20, height: 20),
          ),
          SizedBox(width: 4),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ShoppingScreen()));
            },
            child: Text("Shopping",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
      SizedBox(height: 1),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset("assets/nutrient.png", width: 20, height: 20),
          ),
          SizedBox(width: 4),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NutrientScreen()));
            },
            child: Text("Nutrient",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
      SizedBox(height: 1),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset("assets/setting.png", width: 20, height: 20),
          ),
          SizedBox(width: 4),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingScreen()));
            },
            child: Text("setting",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
      SizedBox(height: 1),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset("assets/out.png", width: 20, height: 20),
          ),
          SizedBox(width: 4),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LogoutScreen()));
            },
            child: Text("Log-out",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    ]));
  }
}
