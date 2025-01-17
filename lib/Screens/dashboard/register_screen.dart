import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/dashboard/login_screen.dart';
import 'package:laligurashapp/Screens/dashboard/signup_screen.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isCustomer = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
              children: [
        SizedBox(height: 350),
        SizedBox(
            width: 350,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ElevatedButton(
                onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 17, 92, 19),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text("Register",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            )),
        SizedBox(height: 12),
        
        SizedBox(
            width: 350,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: Colors.black,
                      )),
                ),
                child: Text("Login",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
            ))
              ],
            ));
  }
}

// import 'package:flutter/material.dart';
// import 'package:laligurashapp/Screens/dashboard/login_screen.dart';
// import 'package:laligurashapp/Screens/dashboard/signup_screen.dart';
// import 'package:laligurashapp/Widgets/dashboard_widget/padding.dart';
// import 'package:laligurashapp/Widgets/dashboard_widget/sized_box.dart';
// import '../../Widgets/dashboard_widget/button.dart';
// class RegisterScreen extends StatelessWidget {
//   const RegisterScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const CustomSizedBox(height: 350),
//             CustomPadding(
//               horizontalPadding: 15,
//               child: SizedBox(
//                 width: 350,
//                 height: 50,
//                 child: CustomElevatedButton(
//                   text: "Register",
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const SignupScreen()),
//                     );
//                   },
//                 ),
//               ),
//             ),
//             const CustomSizedBox(height: 12),
//             CustomPadding(
//               horizontalPadding: 15,
//               child: SizedBox(
//                 width: 350,
//                 height: 50,
//                 child: CustomElevatedButton(
//                   text: "Login",
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const LoginScreen()),
//                     );
//                   },
//                   backgroundColor: const Color.fromARGB(255, 190, 166, 166),
//                   textColor: Colors.black,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
