import 'package:flutter/material.dart';
import 'package:test_app/widgets/custom_elevated_button.dart';

class SelectorWidget extends StatefulWidget {
  final String label;
  final String buttonTextOne;
  final String buttonTextTwo;
  final bool isSelectAddress;
  final Function() callbackOne;
  final Function() callbackTwo;

  const SelectorWidget({
    required this.label,
    required this.buttonTextOne,
    required this.buttonTextTwo,
    required this.callbackOne,
    required this.callbackTwo,
    required this.isSelectAddress,
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
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: CustomElevatedButton(
                  text: widget.buttonTextOne,
                  onPressed: widget.callbackOne,
                  color: widget.isSelectAddress
                      ? Colors.grey
                      : Color.fromRGBO(234, 86, 13, 1),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: CustomElevatedButton(
                  text: widget.buttonTextTwo,
                  onPressed: widget.callbackTwo,
                  color: widget.isSelectAddress
                      ? Color.fromRGBO(234, 86, 13, 1)
                      : Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
