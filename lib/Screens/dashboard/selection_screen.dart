import 'package:flutter/material.dart';
import 'package:laligurashapp/Driving/driving.dart';
import 'package:laligurashapp/Screens/shopkeeper/screens/dashboard/shopkeeper_intro_screen.dart';
import 'package:laligurashapp/Widgets/dashboard_widget/user_role_container_component.dart';
import 'package:laligurashapp/providers/select_provider.dart';

import 'intro_screen.dart';

class SelectionScreen extends StatelessWidget {
  SelectionScreen({super.key});

  final List<String> imageList = [
    "assets/customer.png",
    "assets/ride.png",
    "assets/shopkeeper.png",
  ];

  final List<String> textList = ["Customer", "Delivery Boy", "Shopkeeper"];

  final SelectionProvider selectionProvider = SelectionProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset("assets/window.png", width: 176, height: 113),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Divider(),
            SizedBox(height: 20),
            Text("Who Are You?",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                  children: List.generate(
                3,
                (index) => GestureDetector(
                    onTap: () {
                      selectionProvider.setSelectedOption(textList[index]);

                      if (selectionProvider.selectedOption == "Customer") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroScreen()));
                      } else if (selectionProvider.selectedOption ==
                          "Shopkeeper") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShopkeeperIntroScreen()));
                      } else {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Driver()));
                      }
                    },
                    child: UserRoleContainerComponent(
                        imageList: imageList[index],
                        textList: textList[index])),
              )),
            )
          ],
        ),
      ),
    );
  }
}
