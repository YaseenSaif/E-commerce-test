import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_commerse_app/app/core/utils/helpers/helper_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/utils/shared_style.dart';
import '../../../data/models/address_model.dart';
import '../../../global_widgets/ui_helpers.dart';

class AddressTemplate extends StatelessWidget {
  final AddressModel? address;

  const AddressTemplate({Key? key, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.r),
      width: 0.5.sw,
      decoration: BoxDecoration(
          borderRadius: SharedStyle.contentContainerBorderRadius,
          border: Border.all(color: Get.theme.shadowColor)),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Container(
          height: 40.r,
          width: 40.r,
          decoration: BoxDecoration(
              borderRadius: SharedStyle.contentContainerBorderRadius,
              color: HelperMethods.getRandomColor()),
        ),
        UiHelper.horizontalSpaceSmall,
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                address?.name ?? '',
                minFontSize: 8,
                style: Get.textTheme.bodyText2
                    ?.copyWith(fontWeight: FontWeight.w600),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              AutoSizeText(
                address?.description ?? '',
                minFontSize: 8,
                style: Get.textTheme.caption
                    ?.copyWith(color: Get.textTheme.bodyText2?.color),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
