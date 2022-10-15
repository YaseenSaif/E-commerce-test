import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SharedStyle {
  SharedStyle._();

  /// border radius
  static BorderRadiusGeometry mainContainerBorderRadius = BorderRadius.only(
      topLeft: Radius.circular(30.0.r), topRight: Radius.circular(30.0.r));
  static BorderRadius contentContainerBorderRadius =
      BorderRadius.all(Radius.circular(10.0.r));

  /// padding
  static EdgeInsetsGeometry mainContainerElementsPadding =
      EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 15.0.h);
  static EdgeInsetsGeometry contentContainerPadding =
      EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 10.0.h);

  /// textStyle

  /// formBorders
  static var inputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey.withOpacity(0.6)),
    borderRadius: BorderRadius.all(Radius.circular(10.0.r)),
  );
  static var inputBorderAuth = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey.withOpacity(0.6)),
    borderRadius: BorderRadius.all(Radius.circular(20.0.r)),
  );
  static var errorBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.red),
    borderRadius: BorderRadius.all(Radius.circular(10.0.r)),
  );
  static var focusedBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Get.theme.colorScheme.secondary, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0.r)),
  );
  static const focusedErrorBuilder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 2.0),
  );
  static TextStyle? loginLabelTextStyle = Get.textTheme.subtitle1;
}
