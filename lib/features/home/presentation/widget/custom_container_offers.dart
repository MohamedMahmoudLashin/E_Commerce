import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/core/widget/custom_global_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

import 'custom_outline_button_action.dart';

class CustomContainerOffers extends StatelessWidget {
  const CustomContainerOffers({
    super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.kWhite0,
        borderRadius: BorderRadius.circular(15.sp)
      ),
      height: 200.h,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(child: Image.asset("assets/images/Rectangle 48.png",fit: BoxFit.fill,)),
          Positioned(
            left: 30.w,
            bottom: 37.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomGlobalText(
                    size: 27,
                    weight: FontWeight.bold,
                    color: AppColor.kWhite1,
                    txt: "disc0".tr(),
                  ),
                  SizedBox(height: 5.h,),
                  CustomGlobalText(
                    size: 14,
                    weight: FontWeight.w400,
                    color: AppColor.kWhite1,
                    txt: "disc1".tr(),
                  ),
                  SizedBox(height: 3.h,),
                  CustomGlobalText(
                    size: 14,
                    weight: FontWeight.w400,
                    color: AppColor.kWhite1,
                    txt: "disc2".tr(),
                  ),
                  SizedBox(height: 7.h,),
                  CustomOutlineAction(txt: "disc3".tr(),press: (){

                  },)

                ]
            ),
          ),
        ],
      )
    );
  }
}
