import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/responsive/responsive_extension.dart';
import '../../../../core/theme/app_color.dart';
import 'custom_get_text.dart';

class CustomContainerTextButton extends StatelessWidget {
  const CustomContainerTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 70.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.kRed0
      ),
      child: TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacementNamed("");
        },
        child:
        CustomGetText(size: 30, weight: FontWeight.w600, color: AppColor.kWhite0, txt: "getStart".tr()),
      ),
    );
  }
}
