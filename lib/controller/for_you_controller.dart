import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ForYouController extends GetxController {
  var selectedIndex = 0.obs;
  final pageController = PageController();

  void onItemTapped(int index) {
    selectedIndex.value = index;
    pageController.jumpToPage(index);
  }

  void onPageChanged(int index) {
    selectedIndex.value = index;
  }
}
