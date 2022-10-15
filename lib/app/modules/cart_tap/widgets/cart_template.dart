import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_commerse_app/app/modules/cart_tap/controllers/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/utils/helpers/helper_methods.dart';
import '../../../core/utils/shared_style.dart';
import '../../../data/models/cart_item_model.dart';
import '../../../global_widgets/ui_helpers.dart';
import 'counter_widget.dart';

class CartTemplate extends StatelessWidget {
  final CartItemModel item;
  final int index;
  final Function({required int index, required bool isAdding}) onTapButton;

  const CartTemplate(
      {Key? key,
      required this.item,
      required this.index,
      required this.onTapButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 70.r,
          width: 70.r,
          decoration: BoxDecoration(
              borderRadius: SharedStyle.contentContainerBorderRadius,
              color: HelperMethods.getRandomColor()),
        ),
        UiHelper.horizontalSpaceSmall,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                item.name ?? '',
                minFontSize: 8,
                style: Get.textTheme.bodyText2,
              ),
              UiHelper.verticalSpaceSmall,
              AutoSizeText(
                item.description ?? '',
                minFontSize: 8,
                style: Get.textTheme.caption
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
              UiHelper.verticalSpaceSmall,
              AutoSizeText(
                "\$ ${item.price ?? 0}",
                minFontSize: 8,
                style: Get.textTheme.bodyText1?.copyWith(
                  color: Get.theme.colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              UiHelper.horizontalSpaceTiny,
            ],
          ),
        ),
        GetBuilder<CartController>(
          id: 'cartItem',
          builder: (controller) => CounterWidget(
            item: item,
            onTapButton: onTapButton,
            index: index,
          ),
        )
      ],
    );
  }
}
