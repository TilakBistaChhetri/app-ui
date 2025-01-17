import 'package:flutter/material.dart';
import "package:laligurashapp/Pages/favourite_tab_screen.dart";
import "package:laligurashapp/providers/bottomnavigation_provider.dart";
import "package:provider/provider.dart";
import "../Pages/home_tab_screen.dart";
import "../Pages/profile_tab_screen.dart";
import "../Pages/package_tab_screen.dart";
import "../Pages/search_tab_screen.dart";

class BottomnavigationScreen extends StatefulWidget {
  const BottomnavigationScreen({super.key});
  @override
  State<BottomnavigationScreen> createState() => _BottomnavigationScreenState();
}

class _BottomnavigationScreenState extends State<BottomnavigationScreen> {
  final List<Widget> screens = [
    HometabScreen(),
    favouritetabScreen(),
    SearchtabScreen(),
    ProfiletabScreen(),
    PackagetabScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Display the current screen based on navigation index
      body: Consumer<BottomnavigationProvider>(
        builder: (context, navi, child) {
          return screens[navi.currentIndex];
        },
      ),
      // BottomNavigationBar
      bottomNavigationBar: Consumer<BottomnavigationProvider>(
        builder: (context, navi, child) {
          return BottomNavigationBar(
            currentIndex: navi.currentIndex,
            onTap: navi.setchangesIndex,
            items: List.generate(
              navi.imageList.length,
              (index) => BottomNavigationBarItem(
                icon: Image.asset(
                  navi.imageList[index],
                  height: 22,
                  width: 20,
                ),
                label: navi.textList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
