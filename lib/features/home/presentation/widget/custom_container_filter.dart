import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/core/widget/custom_global_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomContainerFilter extends StatelessWidget {
  const CustomContainerFilter({
    super.key,
    required this.size,
    required this.weight,
    required this.color,
    required this.txt,
    required this.image,

  });

  final int size;
  final String image;
  final FontWeight weight;
  final Color color;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.h,horizontal: 10.w),
      width: 40.w,
      height: 20.h,
      decoration: BoxDecoration(
        color: AppColor.kWhite0,
        borderRadius: BorderRadius.circular(15.sp),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomGlobalText(size: size, weight: weight, color: color, txt: txt),
          SvgPicture.asset(image),
        ],
      ),
    );
  }
}
