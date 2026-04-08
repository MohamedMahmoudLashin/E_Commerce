import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/core/widget/custom_global_container.dart';
import 'package:e_commerce/core/widget/custom_global_sized_box.dart';
import 'package:e_commerce/core/widget/custom_global_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

class CustomContainerSponsered extends StatelessWidget {
  const CustomContainerSponsered({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGlobalContainer(
      width: double.infinity,
      color: AppColor.kWhite0,
      widget: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomGlobalText(
                    size: 20,
                    weight: FontWeight.w600,
                    color: AppColor.kBlack0,
                    txt: "sear13".tr(),
                  ),
                ],
              ),
              CustomGlobalSizedBox(height: 7),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.sp),
                child:Image.asset("assets/images/image 12.png"),
              ),
              CustomGlobalSizedBox(height: 7),
              Row(
                children: [
                  CustomGlobalText(size: 20, weight: FontWeight.w600, color: AppColor.kBlack0, txt: "disc0".tr()),
                ],
              ),

            ]),
      ),
    );
  }
}
