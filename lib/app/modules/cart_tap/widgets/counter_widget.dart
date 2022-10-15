import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_commerse_app/app/data/models/cart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../global_widgets/ui_helpers.dart';
import 'custom_icon_button.dart';

class CounterWidget extends StatelessWidget {
  final Function({required int index, required bool isAdding}) onTapButton;
  final CartItemModel item;
  final int index;

  const CounterWidget(
      {Key? key,
      required this.onTapButton,
      required this.item,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomIconButton(
          icon: Icons.remove,
          onTap: onTapButton,
          index: index,
          isAdding: false,
        ),
        UiHelper.horizontalSpaceSmall,
        AutoSizeText(
          '${item.quantity ?? 0}',
          minFontSize: 8,
          style: Get.textTheme.subtitle1,
        ),
        UiHelper.horizontalSpaceSmall,
        CustomIconButton(
          icon: Icons.add,
          index: index,
          onTap: onTapButton,
          isAdding: true,
        )
      ],
    );
  }
}
