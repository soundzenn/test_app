import 'package:flutter/material.dart';

class SelectorWidget extends StatefulWidget {
  final String label;
  final String button1Text;
  final String button2Text;

  const SelectorWidget({
    required this.label,
    required this.button1Text,
    required this.button2Text,
  });

  @override
  State<SelectorWidget> createState() => _SelectorWidgetState();
}

class _SelectorWidgetState extends State<SelectorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.label),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                child: Text(widget.button1Text),
                onPressed: () {},
              )),
              SizedBox(width: 10),
              Expanded(
                  child: ElevatedButton(
                child: Text(widget.button2Text),
                onPressed: () {},
              )),
            ],
          ),
        ],
      ),
    );
  }
}
