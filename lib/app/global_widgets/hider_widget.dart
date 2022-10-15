import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'user_address_model.dart';

class HiderWidget extends StatelessWidget {
  final String address;

  const HiderWidget({
    Key? key,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        UserAddressWidget(address: address),
        Container(
          height: 40.r,
          width: 40.r,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey.shade800)),
        )
      ],
    );
  }
}
