import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_commerse_app/app/data/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/utils/helpers/helper_methods.dart';
import '../../../core/utils/shared_style.dart';
import '../../../global_widgets/ui_helpers.dart';

class CategoryTemplate extends StatelessWidget {
  final CategoryModel? category;

  const CategoryTemplate({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 50.r,
          width: 50.r,
          decoration: BoxDecoration(
              borderRadius: SharedStyle.contentContainerBorderRadius,
              color: HelperMethods.getRandomColor()),
        ),
        UiHelper.verticalSpaceTiny,
        Expanded(
          child: AutoSizeText(
            category?.name ?? '',
            minFontSize: 8,
            style: Get.textTheme.bodyText2,
            maxLines: 1,
          ),
        )
      ],
    );
  }
}
