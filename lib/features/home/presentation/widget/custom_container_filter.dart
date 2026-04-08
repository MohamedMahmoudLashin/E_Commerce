import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/core/widget/custom_global_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomContainerFilter extends StatelessWidget {
  const CustomContainerFilter({
    super.key,
    required this.size,
    required this.weight,
    required this.color,
    required this.txt,
    required this.image,
    this.press,

  });

  final void Function()? press;
  final double size;
  final String image;
  final FontWeight weight;
  final Color color;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        width: 90.w,
        height: 35.h,
        decoration: BoxDecoration(
          color: AppColor.kWhite0,
          borderRadius: BorderRadius.circular(8.sp),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomGlobalText(size: size, weight: weight, color: color, txt: txt),
            SvgPicture.asset(image,fit: BoxFit.scaleDown,colorFilter: ColorFilter.srgbToLinearGamma(),),
          ],
        ),
      ),
    );
  }
}
