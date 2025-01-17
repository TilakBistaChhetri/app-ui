import 'package:flutter/material.dart';

class UserRoleContainerComponent extends StatelessWidget {
  const UserRoleContainerComponent({super.key, required this.imageList, required this.textList});
  final String imageList, textList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: [
          Image.asset(imageList, width: 71, height: 48),
          SizedBox(width: 10),
          Text(
            textList,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
