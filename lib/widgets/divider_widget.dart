import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 1,
              width: 370,
              color: Colors.grey,
              margin: EdgeInsets.only(top: 10, bottom: 10),
            ),
          )
        ],
      ),
    );
  }
}
