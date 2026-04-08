import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/core/widget/custom_global_container.dart';
import 'package:e_commerce/core/widget/custom_global_sized_box.dart';
import 'package:e_commerce/core/widget/custom_global_text.dart';
import 'package:e_commerce/features/home/presentation/widget/custom_outline_button_action.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomContainerDealTrending extends StatelessWidget {
  const CustomContainerDealTrending({
    super.key,
    required this.color,
    required this.title,
    required this.subTitle,
    required this.icon,
    this.press,
  });

  final Color color;
  final String title;
  final String subTitle;
  final String icon;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return CustomGlobalContainer(
      color: color,
      widget: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 14.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomGlobalText(
                  size: 21,
                  weight: FontWeight.w600,
                  color: AppColor.kWhite0,
                  txt: title,
                ),
                CustomGlobalSizedBox(height: 10),
                Row(
                  children: [
                    SvgPicture.asset(icon),
                    CustomGlobalSizedBox(width: 6),
                    CustomGlobalText(
                      size: 16,
                      weight: FontWeight.w400,
                      color: AppColor.kWhite0,
                      txt: subTitle,
                    ),
                  ],
                ),
              ],
            ),
            CustomOutlineAction(txt: "sear0".tr(), press: press),
          ],
        ),
      ),
    );
  }
}
