import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/HomeScreen.dart';

class MainRoutGetxController extends GetxController {
  int? index;

  late int currentIndex = index ?? 0;

  List<Widget> screens = [
     HomeScreen(),
     HomeScreen(),
     HomeScreen(),
     HomeScreen(),
     HomeScreen(),
  ];


  void changeBottom(int index, BuildContext context) {
    currentIndex = index;
    update();
  }
}