import 'package:flutter/material.dart';
class CustomPadding extends StatelessWidget {
  final Widget child;
  final double horizontalPadding;
  final double verticalPadding;

  const CustomPadding({
    Key? key,
    required this.child,
    this.horizontalPadding = 0.0,
    this.verticalPadding = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: child,
    );
  }
}
