import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/shopkeeper/screens/dashboard/shopkeeper_login_screen.dart';
import 'package:laligurashapp/Screens/shopkeeper/screens/dashboard/shopkeeper_onboarding_screen.dart';
import 'package:laligurashapp/Screens/shopkeeper/screens/dashboard/shopkeeper_started_screen.dart';
import 'package:laligurashapp/Screens/shopkeeper/screens/dashboard/shopkeeper_welcome_screen.dart';
import 'package:laligurashapp/Widgets/shopkeeper%20widget/shopkeeper_dashboard_widget/button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShopkeeperIntroScreen extends StatefulWidget {
  ShopkeeperIntroScreen({super.key});
  @override
  State<ShopkeeperIntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<ShopkeeperIntroScreen> {
  final PageController _controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Button(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: PageView(
              onPageChanged: (value) {
                index = value;
                setState(() {});
              },
              controller: _controller,
              children: [
                ShopkeeperOnboardingScreen(),
                ShopkeeperWelcomeScreen(),
                ShopkeeperStartedScreen(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.green,
              dotHeight: 5,
              dotWidth: 7,
              spacing: 5,
            ),
          ),
          TextButton(
            onPressed: () {
              if (index == 2) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ShopkeeperLoginScreen()));
              }
              _controller.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut);
            },
            child: Text(index == 2 ? "Get Started" : "Next",
                style: TextStyle(
                    fontSize: 17,
                    color: const Color.fromARGB(255, 73, 69, 69))),
          )
        ],
      )),
    );
  }
}
