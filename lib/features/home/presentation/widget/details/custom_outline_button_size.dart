import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/core/widget/custom_global_text.dart';
import 'package:flutter/material.dart';

class CustomOutlineButtonSize extends StatelessWidget {
  const CustomOutlineButtonSize({
    super.key,
    required this.txt,
    this.back,
    this.press,
  });

  final String txt;
  final Color? back;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor:back??null,
        minimumSize: Size(50.w, 35.h),
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        side: BorderSide(width: 1.5, color: AppColor.kPurple1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.sp),
        ),
      ),
      onPressed: press,
      child: Row(
        children: [
          CustomGlobalText(
            size: 16,
            weight: FontWeight.w600,
            color: AppColor.kPurple1,
            txt: txt,
          ),
        ],
      ),
    );
  }
}
