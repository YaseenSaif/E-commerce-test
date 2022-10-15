import 'dart:math';
import 'dart:ui';

import 'package:e_commerse_app/app/core/values/app_colors.dart';

class HelperMethods {
  HelperMethods._();

  static Color? getRandomColor() {
    List<Color> colors = const [
      AppColors.color1,
      AppColors.color2,
      AppColors.color3,
      AppColors.color4,
      AppColors.color5,
      AppColors.color6,
    ];
    var rng = Random();
    var randomNo = rng.nextInt(6);
    return colors[randomNo];
  }
}
