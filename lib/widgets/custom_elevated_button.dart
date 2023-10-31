import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final double borderRadiusValue;
  final double? width;
  final double height;
  final VoidCallback? onPressed;
  final String text;
  final EdgeInsetsGeometry margin;
  final Color? color;

  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.borderRadiusValue = 25,
    this.width = double.infinity,
    this.height = 36.0,
    this.margin = const EdgeInsets.fromLTRB(0, 0, 0, 0),
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shadowColor: Color.fromARGB(0, 23, 23, 23),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadiusValue),
          ),
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
