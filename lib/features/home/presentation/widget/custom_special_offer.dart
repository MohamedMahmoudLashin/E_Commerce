import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/core/widget/custom_global_container.dart';
import 'package:e_commerce/core/widget/custom_global_sized_box.dart';
import 'package:e_commerce/core/widget/custom_global_text.dart';
import 'package:flutter/cupertino.dart';

class CustomSpecialOffer extends StatelessWidget {
  const CustomSpecialOffer({super.key, required this.txt1, required this.txt2});

  final String txt1;
  final String txt2;

  @override
  Widget build(BuildContext context) {
    return CustomGlobalContainer(
      color: AppColor.kWhite0,
      widget: Padding(
        padding:EdgeInsets.symmetric(vertical: 10.h,horizontal: 20.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/special.png"),
            CustomGlobalSizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomGlobalText(
                    size: 17,
                    weight: FontWeight.w500,
                    color: AppColor.kBlack0,
                    txt: txt1,
                  ),
                  CustomGlobalSizedBox(height: 7),
                  CustomGlobalText(
                    size: 15,
                    weight: FontWeight.w300,
                    color: AppColor.kBlack0,
                    txt: txt2
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
