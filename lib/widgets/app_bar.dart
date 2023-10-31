import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Color.fromARGB(0, 23, 23, 23),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_sharp), onPressed: () {}),
      title: Text('Ordering'),
      centerTitle: true,
    );
  }
}
