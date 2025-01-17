import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/shopkeeper/screens/dashboard/shopkeeper_login_screen.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton.icon(
          label: Text('Skip',
              style: TextStyle(color: const Color.fromARGB(255, 100, 94, 94))),
          icon: Icon(Icons.skip_next,
              color: const Color.fromARGB(255, 100, 94, 94)),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ShopkeeperLoginScreen()));
          },
        ),
      ],
    );
  }
}
