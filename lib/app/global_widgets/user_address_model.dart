import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'costom_container.dart';
import 'ui_helpers.dart';

class UserAddressWidget extends StatelessWidget {
  final String address;

  const UserAddressWidget({Key? key, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(1.sw, 0.5.sh),
      painter: MyPainter(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Colors.white,
              size: 25.r,
            ),
            UiHelper.horizontalSpaceTiny,
            Text(
              address,
              style: Get.textTheme.bodyText2?.copyWith(color: Colors.white),
            ),
            UiHelper.horizontalSpaceLarge,
          ],
        ),
      ),
    );
  }
}
