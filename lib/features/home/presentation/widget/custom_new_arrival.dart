import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/core/widget/custom_global_container.dart';
import 'package:e_commerce/core/widget/custom_global_sized_box.dart';
import 'package:e_commerce/core/widget/custom_global_text.dart';
import 'package:e_commerce/features/home/presentation/widget/custom_outline_button_action.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

class CustomNewArrival extends StatelessWidget {
  const CustomNewArrival({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGlobalContainer(
      width: double.infinity,
      color: AppColor.kWhite0,
      widget: Directionality(
        textDirection: Directionality.of(context),
        child: Column(
          children: [
            Image.asset("assets/images/image 10.png", fit: BoxFit.cover),
            Padding(
              padding: EdgeInsets.only(top: 5.w, right: 20.w, left: 20.w),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomGlobalText(
                        size: 17,
                        weight: FontWeight.w600,
                        color: AppColor.kBlack0,
                        txt: "sear11".tr(),
                      ),
                      CustomGlobalSizedBox(height: 5),
                      CustomGlobalText(
                        size: 15,
                        weight: FontWeight.w400,
                        color: AppColor.kBlack0,
                        txt: "sear12".tr(),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      CustomOutlineAction(
                        txt: "sear0".tr(),
                        back: AppColor.kRed0,
                        press: () {},
                      ),
                    ],
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
