import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCliprrect extends StatelessWidget {
  const CustomCliprrect({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 80.w,
      height: 80.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.sp),
        border: Border.all(
          color: AppColor.kRed0,
          width: 1.5.sp
        ),
        color: AppColor.kWhite1
      ),
      child: ClipRRect(
        child: Padding(
          padding: EdgeInsets.all(18.sp),
          child: SvgPicture.asset(image),
        ),
      ),
    );
  }
}
