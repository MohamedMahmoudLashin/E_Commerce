import 'package:e_commerce/core/widget/custom_global_sized_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/responsive/responsive_extension.dart';
import '../../../../../core/theme/app_color.dart';


class ColumnPageView extends StatelessWidget {
  const ColumnPageView({
    super.key,
    required this.num,
    required this.title,
    required this.subTitle,
  });
  final int num;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomGlobalSizedBox(height: 130),
        Container(
          height: 360.h,
          width: double.infinity,
          child: SvgPicture.asset(
            "assets/images/info$num.svg",
            fit: BoxFit.contain,
          ),
        ),
        CustomGlobalSizedBox(height: 21),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.w),
          child: Column(
            crossAxisAlignment: .center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColor.kBlack0,
                ),
              ),
              SizedBox(height: 13.h),
              Center(
                child: Text(
                  subTitle,
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w300,
                    color: AppColor.kGrey0,
                    letterSpacing: .3.sp,
                    height: 2.4.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
