import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/core/widget/custom_global_sized_box.dart';
import 'package:e_commerce/core/widget/custom_global_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomOutlineAction extends StatelessWidget {
  const CustomOutlineAction({
    super.key,
    required this.txt,
    this.press,
    this.back,
  });

  final String txt;
  final Color? back;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: back ?? null,
        minimumSize: Size(50.w, 35.h),
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        side: BorderSide(width: 1.5, color: back??AppColor.kWhite0),
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
            color: AppColor.kWhite0,
            txt: txt,
          ),
          CustomGlobalSizedBox(height: 7),
          Icon(
            Icons.arrow_forward_rounded,
            fontWeight: FontWeight.bold,
            color: AppColor.kWhite0,
          ),
        ],
      ),
    );
  }
}
