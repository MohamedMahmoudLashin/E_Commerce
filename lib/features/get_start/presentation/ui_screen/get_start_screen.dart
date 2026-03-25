import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/features/get_start/presentation/widget_screen/custom_container_text_button.dart';
import 'package:e_commerce/features/get_start/presentation/widget_screen/custom_get_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset("assets/images/Get Started.png",fit:BoxFit.cover ,)),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    AppColor.kBlack0.withAlpha(140),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 70.w,vertical: 30.h),
              child: Column(
                crossAxisAlignment: .center,
                children: [
                   CustomGetText(size: 43, weight: FontWeight.w600, color: AppColor.kWhite0, txt: "t1Get".tr()),
                  SizedBox(height: 20.h,),
                   CustomGetText(size: 17, weight: FontWeight.w400, color: AppColor.kGrey, txt: "t2Get".tr()),
                  SizedBox(height: 50.h,),
                 CustomContainerTextButton()
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
