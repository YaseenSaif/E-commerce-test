import 'package:e_commerse_app/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/shared_style.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final bool isAdding;
  final int index;
  final Function({required int index, required bool isAdding}) onTap;

  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.onTap,
    required this.index,
    required this.isAdding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(isAdding: isAdding, index: index),
      child: Container(
        height: 30.r,
        width: 30.r,
        decoration: BoxDecoration(
            borderRadius: SharedStyle.contentContainerBorderRadius,
            color: AppColors.color8),
        child: Icon(
          icon,
          size: 25.r,
          color: AppColors.color7,
        ),
      ),
    );
  }
}
