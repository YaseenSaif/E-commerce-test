import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:e_commerse_app/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'bottom_nav_bar_icon_list.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => AnimatedBottomNavigationBar.builder(
        itemCount: BottomNavBarIconList.iconNameList.length,
        tabBuilder: (int index, bool isActive) {
          final color = isActive
              ? Get.theme.colorScheme.secondary
              : Get.theme.shadowColor.withOpacity(0.7);
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  BottomNavBarIconList.iconList[index],
                  width: 20.r,
                  height: 20.r,
                  color: color,
                ),
                SizedBox(height: 4.0.h),
                Text(
                  BottomNavBarIconList.iconNameList[index].capitalizeFirst!,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: Get.textTheme.caption?.copyWith(
                      color: color,
                      fontWeight:
                          isActive ? FontWeight.bold : FontWeight.normal),
                )
              ],
            ),
          );
        },
        backgroundColor: Get.theme.primaryColorLight,
        activeIndex: controller.bottomNavIndex,
        splashColor: Get.theme.colorScheme.secondary,
        notchAndCornersAnimation: controller.animation,
        splashSpeedInMilliseconds: 300,
        notchMargin: 0,
        height: 70.h,
        notchSmoothness: NotchSmoothness.sharpEdge,
        gapLocation: GapLocation.center,
        onTap: controller.updateHomeIndex,
      ),
    );
  }
}
