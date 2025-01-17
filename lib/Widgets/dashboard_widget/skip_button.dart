import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/dashboard/register_screen.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

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
                MaterialPageRoute(builder: (context) => RegisterScreen()));
          },
        ),
      ],
    );
  }
}
