import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_commerse_app/app/core/utils/shared_style.dart';
import 'package:e_commerse_app/app/core/values/launguages_and_localization/app_strings.dart';
import 'package:e_commerse_app/app/global_widgets/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../global_widgets/hider_widget.dart';
import '../controllers/cart_controller.dart';
import '../widgets/cart_template.dart';

class CartView extends GetView<CartController> {
  static const String route = '/CartView';

  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SharedStyle.mainContainerElementsPadding,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        HiderWidget(address: controller.userAddress),
        UiHelper.verticalSpaceMedium,
        AutoSizeText(
          AppStrings.cart.tr.capitalizeFirst!,
          minFontSize: 8,
          style: Get.textTheme.subtitle1?.copyWith(fontWeight: FontWeight.bold),
        ),
        UiHelper.verticalSpaceMedium,
        Expanded(
          child: ListView.separated(
              itemCount: controller.items.length,
              shrinkWrap: true,
              separatorBuilder: (context, index) =>
                  UiHelper.verticalSpaceMedium,
              itemBuilder: (context, index) => CartTemplate(
                    item: controller.items[index],
                    onTapButton: controller.calculateTotalPrice,
                    index: index,
                  )),
        )
      ]),
    );
  }
}
