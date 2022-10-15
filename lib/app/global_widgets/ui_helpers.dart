import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UiHelper {
  UiHelper._();

  static SizedBox horizontalSpaceTiny = SizedBox(width: 4.0.w);
  static SizedBox horizontalSpaceSmall = SizedBox(width: 8.0.w);
  static SizedBox horizontalSpaceMedium = SizedBox(width: 16.0.w);
  static SizedBox horizontalSpaceLarge = SizedBox(width: 24.0.w);
  static SizedBox horizontalSpaceMassive = SizedBox(width: 32.0.w);

  static SizedBox verticalSpaceMoreSmall = SizedBox(height: 2.h);
  static SizedBox verticalSpaceTiny = SizedBox(height: 4.0.h);
  static SizedBox verticalSpaceSmall = SizedBox(height: 8.0.h);
  static SizedBox verticalSpaceMedium = SizedBox(height: 16.0.h);
  static SizedBox verticalSpaceLarge = SizedBox(height: 24.0.h);
  static SizedBox verticalSpaceMassive = SizedBox(height: 32.0.h);

  static SizedBox verticalSpace(double height) => SizedBox(height: height);

  static SizedBox horizontalSpace(double width) => SizedBox(width: width);

  static Divider columnDivider(
      {Color? color, double? height, double? indent, double? endIndent}) {
    return Divider(
      color: color ?? Get.theme.dividerColor,
      height: height,
      indent: indent,
      endIndent: endIndent,
    );
  }
}
