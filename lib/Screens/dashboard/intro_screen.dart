import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/dashboard/started_screen.dart';
import 'package:laligurashapp/Screens/dashboard/onboarding_screen.dart';
import 'package:laligurashapp/Screens/dashboard/register_screen.dart';
import 'package:laligurashapp/Screens/dashboard/welcome_screen.dart';
import 'package:laligurashapp/Widgets/dashboard_widget/skip_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class IntroScreen extends StatefulWidget {
  IntroScreen({super.key});
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}
class _IntroScreenState extends State<IntroScreen> {
  final PageController _controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return 
    SafeArea(
      child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SkipButton(),
          SizedBox(
            height:MediaQuery.of(context).size.height*0.1
          ),
          SizedBox(
            height:MediaQuery.of(context).size.height/2,
            child: PageView(
              onPageChanged: (value) { 
                index = value;
                setState(() {
                });
              },
              controller: _controller,
              children: [
                OnboardingScreen(),
                WelcomeScreen(),
                StartedScreen(),
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
              if(index == 2) {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> RegisterScreen()) );
              }
              _controller.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut);
            },
            child: Text(index == 2? "Get Started":"Next",
                style: TextStyle(
                    fontSize: 17,
                    color: const Color.fromARGB(255, 73, 69, 69))),
          )
        ],
      )),
    );
  }
}
