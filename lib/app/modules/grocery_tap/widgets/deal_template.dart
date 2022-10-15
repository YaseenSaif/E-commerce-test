import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_commerse_app/app/data/models/deal_model.dart';
import 'package:e_commerse_app/app/modules/grocery_tap/controllers/grocery_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/utils/helpers/helper_methods.dart';
import '../../../core/utils/shared_style.dart';
import '../../../global_widgets/ui_helpers.dart';

class DealTemplate extends StatelessWidget {
  final DealModel? deal;
  final int index;
  final Function(int index) onTapFavorite;

  const DealTemplate(
      {Key? key,
      required this.deal,
      required this.index,
      required this.onTapFavorite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
              margin: EdgeInsets.only(top: 3.h, left: 3.w),
              height: 90.r,
              width: 90.r,
              decoration: BoxDecoration(
                  borderRadius: SharedStyle.contentContainerBorderRadius,
                  color: HelperMethods.getRandomColor()),
            ),
            GetBuilder<GroceryController>(
              id: 'favorite',
              builder: (controller) => InkWell(
                onTap: () => onTapFavorite(index),
                child: Container(
                  padding: EdgeInsets.all(5.r),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Icon(
                    (deal?.isFavorite ?? false)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    size: 20.r,
                    color: (deal?.isFavorite ?? false)
                        ? Get.theme.colorScheme.secondary
                        : Get.theme.shadowColor,
                  ),
                ),
              ),
            )
          ],
        ),
        UiHelper.horizontalSpaceSmall,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoSizeText(
              deal?.name ?? '',
              minFontSize: 8,
              style: Get.textTheme.caption?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Get.textTheme.bodyText2?.color),
            ),
            UiHelper.verticalSpaceTiny,
            AutoSizeText(
              deal?.description ?? '',
              minFontSize: 8,
              style: Get.textTheme.caption?.copyWith(
                  color: Get.textTheme.bodyText2?.color,
                  fontWeight: FontWeight.w400),
            ),
            UiHelper.verticalSpaceTiny,
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 25.r,
                ),
                UiHelper.horizontalSpaceTiny,
                AutoSizeText(
                  deal?.location ?? '',
                  minFontSize: 8,
                  style: Get.textTheme.caption
                      ?.copyWith(color: Get.textTheme.bodyText2?.color),
                ),
              ],
            ),
            UiHelper.verticalSpaceTiny,
            Row(
              children: [
                AutoSizeText(
                  "\$ ${deal?.newPrice ?? 0}",
                  minFontSize: 8,
                  style: Get.textTheme.caption?.copyWith(
                    color: Get.theme.colorScheme.secondary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                UiHelper.horizontalSpaceMedium,
                AutoSizeText(
                  "\$ ${deal?.oldPrice ?? 0}",
                  minFontSize: 8,
                  style: Get.textTheme.caption?.copyWith(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
            UiHelper.verticalSpaceSmall,
          ],
        ),
      ],
    );
  }
}
