import 'package:get/get.dart';

import '../../../core/values/app_icons.dart';
import '../../../core/values/launguages_and_localization/app_strings.dart';

class BottomNavBarIconList {
  BottomNavBarIconList._();

  static const List<String> iconList = [
    AppIcons.grocery,
    AppIcons.news,
    AppIcons.favorite,
    AppIcons.cart,
  ];

  static List<String> iconNameList = [
    AppStrings.grocery.tr.capitalizeFirst!,
    AppStrings.news.tr.capitalizeFirst!,
    AppStrings.favorite.tr.capitalizeFirst!,
    AppStrings.cart.tr.capitalizeFirst!
  ];
}
