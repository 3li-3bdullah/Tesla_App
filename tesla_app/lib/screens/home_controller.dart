import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  // We use home controller for logical part
  bool isRightDoorLock = true;

  void updateRightDoorLock() {
    isRightDoorLock = !isRightDoorLock;
    // if you use provider then you may know this
    // it works like setState
  }
}
