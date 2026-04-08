import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/core/widget/custom_global_container.dart';
import 'package:e_commerce/core/widget/custom_global_sized_box.dart';
import 'package:e_commerce/core/widget/custom_global_text.dart';
import 'package:e_commerce/features/home/presentation/widget/custom_outline_button_action.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContainerRewarded extends StatelessWidget {
  const CustomContainerRewarded({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGlobalContainer(
        color: AppColor.kWhite1,
        widget:Row(
          children: [
            Stack(
              clipBehavior: Clip.none ,
              children: [
                Align(
                  alignment: Alignment.center,
                  child:Image.asset("assets/images/Group 33732.png"),
                ),                Container(
                  height: 170.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors:[
                            AppColor.kYellow0,
                            AppColor.kYellow1,

                          ])
                  ),
                ),
                PositionedDirectional(
                  bottom:20.h ,
                    start: 30.w,

                    ///rotate image such as mirror
                    child: Transform(
                      alignment:Alignment.center,
                        transform: Matrix4.rotationY(
                          context.locale.languageCode=="ar"?3.1416 : 0,
                        ),
                        child: Image.asset("assets/images/Rectangle 55.png"))),

              ],
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomGlobalText(size: 17, weight: FontWeight.w600, color:AppColor.kBlack0, txt:"reward0".tr(), ),
                  CustomGlobalSizedBox(height: 5),
                  CustomGlobalText(size: 15, weight: FontWeight.w400, color:AppColor.kBlack1, txt:"reward1".tr() ),
                  CustomGlobalSizedBox(height: 10),
                  CustomOutlineAction(txt: "visit".tr(),back: AppColor.kRed0,press: (){},)
                ],
              ),
            )
          ],
        ));
  }
}
