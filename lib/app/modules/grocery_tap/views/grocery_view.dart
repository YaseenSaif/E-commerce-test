import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_commerse_app/app/core/utils/shared_style.dart';
import 'package:e_commerse_app/app/global_widgets/search_widget.dart';
import 'package:e_commerse_app/app/global_widgets/ui_helpers.dart';
import 'package:e_commerse_app/app/modules/grocery_tap/controllers/grocery_controller.dart';
import 'package:e_commerse_app/app/modules/grocery_tap/widgets/address_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/values/launguages_and_localization/app_strings.dart';
import '../../../global_widgets/hider_widget.dart';
import '../widgets/category_template.dart';
import '../widgets/deal_template.dart';
import '../widgets/offer_template.dart';

class GroceryView extends GetView<GroceryController> {
  static const String route = '/GroceryView';

  const GroceryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('dddd');
    print(Get.size.height);
    return SingleChildScrollView(
      child: Padding(
        padding: SharedStyle.mainContainerElementsPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            HiderWidget(address: controller.userAddress),
            UiHelper.verticalSpaceMedium,
            SearchWidget(
              onChanged: (jj) {},
              hintText: AppStrings.searchHint.tr.capitalizeFirst!,
              color: Get.theme.primaryColorLight,
              hasBorder: true,
            ),
            UiHelper.verticalSpaceMedium,
            SizedBox(
              height: 70.h,
              child: ListView.separated(
                itemCount: controller.addressItems.length,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) =>
                    UiHelper.horizontalSpaceMedium,
                itemBuilder: (BuildContext context, int index) =>
                    AddressTemplate(
                  address: controller.addressItems[index],
                ),
              ),
            ),
            UiHelper.verticalSpaceMedium,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AutoSizeText(
                  AppStrings.exploreByCategory.tr.capitalizeFirst!,
                  minFontSize: 8,
                  style: Get.textTheme.bodyText2
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                AutoSizeText(
                  AppStrings.seeAll.tr.capitalizeFirst! +
                      controller.categoryItems.length.toString(),
                  minFontSize: 8,
                  style: Get.textTheme.caption
                      ?.copyWith(fontWeight: FontWeight.w700),
                )
              ],
            ),
            UiHelper.verticalSpaceSmall,
            SizedBox(
              height: 70.h,
              child: ListView.separated(
                itemCount: controller.categoryItems.length,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) =>
                    UiHelper.horizontalSpaceMedium,
                itemBuilder: (BuildContext context, int index) =>
                    CategoryTemplate(category: controller.categoryItems[index]),
              ),
            ),
            UiHelper.verticalSpaceMedium,
            AutoSizeText(
              minFontSize: 8,
              AppStrings.dealsOfTheDay.tr.capitalizeFirst!,
              style: Get.textTheme.bodyText2
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            UiHelper.verticalSpaceSmall,
            SizedBox(
              height: 95.h,
              child: ListView.separated(
                itemCount: controller.dealItems.length,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) =>
                    UiHelper.horizontalSpaceMedium,
                itemBuilder: (BuildContext context, int index) => DealTemplate(
                  deal: controller.dealItems[index],
                  onTapFavorite: controller.setFavorite,
                  index: index,
                ),
              ),
            ),
            UiHelper.verticalSpaceMedium,
            SizedBox(
              height: 115.h,
              child: ListView.separated(
                itemCount: controller.offerItems.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) =>
                    UiHelper.horizontalSpaceMedium,
                itemBuilder: (BuildContext context, int index) => OfferTemplate(
                  offer: controller.offerItems[index],
                ),
              ),
            ),
            if (Get.size.height < 550) UiHelper.verticalSpaceMedium,
          ],
        ),
      ),
    );
  }
}
