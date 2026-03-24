import 'package:e_commerce/core/theme/app_color.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/responsive/responsive_extension.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.size, required this.word});
  final int size;
  final String word;
  @override
  Widget build(BuildContext context) {
    return Text(
      word,
      style: TextStyle(
        fontSize: size.sp,
        color: AppColor.kGrey0,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.sp,
      ),
    );
  }
}
