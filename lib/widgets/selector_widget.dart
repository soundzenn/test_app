import 'package:flutter/material.dart';

class SelectorWidget extends StatelessWidget {
  final String label;
  final String button1Text;
  final String button2Text;

  const SelectorWidget({
    required this.label,
    required this.button1Text,
    required this.button2Text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                child: Text(button1Text),
                onPressed: () {},
              )),
              SizedBox(width: 10),
              Expanded(
                  child: ElevatedButton(
                child: Text(button2Text),
                onPressed: () {},
              )),
            ],
          ),
        ],
      ),
    );
  }
}
