import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  // We use home controller for logical part
  bool isRightDoorLock = true;
  bool isLeftDoorLock = true;
  bool isBonnetLock = true;

  void updateRightDoorLock() {
    isRightDoorLock = !isRightDoorLock;
    notifyListeners();
    // if you use provider then you may know this
    // it works like setState
  }

  void updateLeftDoorLock() {
    isLeftDoorLock = !isLeftDoorLock;
    notifyListeners();
  }
  void updateBonnetDoorLock() {
    isBonnetLock = !isBonnetLock;
    notifyListeners();
  }
}
