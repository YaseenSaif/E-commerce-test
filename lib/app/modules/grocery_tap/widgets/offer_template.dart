import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_commerse_app/app/data/models/offer_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/utils/helpers/helper_methods.dart';
import '../../../core/utils/shared_style.dart';
import '../../../core/values/app_icons.dart';
import '../../../global_widgets/ui_helpers.dart';

class OfferTemplate extends StatelessWidget {
  final OfferModel? offer;

  const OfferTemplate({Key? key, required this.offer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      width: 0.8.sw,
      padding: SharedStyle.contentContainerPadding,
      decoration: BoxDecoration(
          borderRadius: SharedStyle.contentContainerBorderRadius,
          color: HelperMethods.getRandomColor()),
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          UiHelper.verticalSpaceSmall,
          SvgPicture.asset(AppIcons.companyIcon, height: 35.r, width: 35.r),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              AutoSizeText(
                "\$ ${offer?.newPrice ?? 0}",
                minFontSize: 8,
                style: Get.textTheme.caption?.copyWith(
                  color: Get.theme.colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              UiHelper.horizontalSpaceMedium,
              AutoSizeText(
                "\$ ${offer?.oldPrice ?? 0}",
                minFontSize: 8,
                style: Get.textTheme.caption?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.lineThrough),
              ),
            ],
          ),
          UiHelper.verticalSpaceSmall,
          AutoSizeText(
            offer?.description ?? '',
            minFontSize: 8,
            style: Get.textTheme.caption?.copyWith(color: Colors.white),
          )
        ]),
      ),
    );
  }
}
