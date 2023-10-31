import 'package:flutter/material.dart';

class AddressSelection extends ChangeNotifier {
  bool isAddAddress = true;

  void toggle() {
    isAddAddress = !isAddAddress;
    notifyListeners();
  }
}
