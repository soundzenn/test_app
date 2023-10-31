import 'package:flutter/material.dart';

class RecepientButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Ko Yuri', style: TextStyle(color: Colors.white)),
                SizedBox(height: 5),
                Text('Italy, Naple, Via Toledo 256',
                    style: TextStyle(color: Colors.white))
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios,
              color: const Color.fromARGB(255, 139, 136, 136), size: 15),
        ],
      ),
    );
  }
}
