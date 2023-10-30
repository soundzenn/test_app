import 'package:flutter/material.dart';

class LabeledTextField extends StatelessWidget {
  final String label;
  final Widget icon;
  final String hintText;

  const LabeledTextField({
    required this.label,
    required this.icon,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
            child: Text(
              label,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, bottom: 10, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: icon,
                  hintText: hintText,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
