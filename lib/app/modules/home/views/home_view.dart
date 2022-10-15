import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_commerse_app/app/core/values/app_icons.dart';
import 'package:e_commerse_app/app/modules/cart_tap/controllers/cart_controller.dart';
import 'package:e_commerse_app/app/modules/grocery_tap/views/grocery_view.dart';
import 'package:e_commerse_app/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/values/launguages_and_localization/app_strings.dart';
import '../../cart_tap/views/cart_view.dart';
import '../widgets/bottom_bav_bar.dart';

class HomeView extends GetView<HomeController> {
  static const String route = '/HomeView';

  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          floatingActionButton: GetBuilder<CartController>(
            id: 'totalPrice',
            builder: (cartController) => ScaleTransition(
              scale: controller.animation,
              child: FloatingActionButton(
                elevation: 8,
                backgroundColor: Get.theme.colorScheme.secondary,
                onPressed: () {},
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Text(
                      '${cartController.totalPrice.toInt()} \$',
                      style:
                          Get.textTheme.caption?.copyWith(color: Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.r, left: 10.0.r),
                      child: Image.asset(
                        AppIcons.price,
                        height: 25.r,
                        width: 25.r,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: const BottomNavBar(),
          body: IndexedStack(
            index: controller.bottomNavIndex,
            children: [
              GroceryView(),
              Center(
                  child: AutoSizeText(
                AppStrings.empty.tr.capitalizeFirst!,
                minFontSize: 8,
              )),
              Center(
                  child: AutoSizeText(
                AppStrings.empty.tr.capitalizeFirst!,
                minFontSize: 8,
              )),
              CartView()
            ],
          ),
        ),
      ),
    );
  }
}
