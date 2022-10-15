import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  /// variable
  int bottomNavIndex = 0;
  late AnimationController animationController;
  late Animation<double> animation;
  late CurvedAnimation curve;

  /// Getx methods
  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    curve = CurvedAnimation(
      parent: animationController,
      curve: const Interval(
        0.5,
        1.0,
        curve: Curves.fastOutSlowIn,
      ),
    );
    animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(curve);
    Future.delayed(
      const Duration(milliseconds: 50),
      () => animationController.forward(),
    );
  }

  @override
  void dispose() {
    curve.dispose();
    animationController.dispose();
    super.dispose();
  }

  /// process methods
  void updateHomeIndex(int value) {
    startAnimation();
    if (bottomNavIndex != value) {
      bottomNavIndex = value;
      update();
    }
  }

  startAnimation() {
    animationController.forward();
  }
}
