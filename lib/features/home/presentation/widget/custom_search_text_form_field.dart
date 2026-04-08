import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/core/widget/custom_global_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSearchTextFormField extends StatelessWidget {
  const CustomSearchTextFormField({super.key, this.validate, this.controller});

  final String? Function(String?)? validate;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validate,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.sp),
          borderSide: BorderSide(color: AppColor.kWhite0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.sp),
          borderSide: BorderSide(color: AppColor.kWhite0),
        ),
        ///use CustomGlobalText
        hint: CustomGlobalText(
          align: TextAlign.center,
          size: 16,
          weight: FontWeight.w500,
          color: AppColor.kGrey0,
          txt: "sear1".tr(),
        ),
        fillColor: AppColor.kWhite0,
        prefixIcon: SvgPicture.asset("assets/icons/search 1.svg",fit: BoxFit.scaleDown,),
        suffixIcon: SvgPicture.asset("assets/icons/mic.svg",fit: BoxFit.scaleDown,),
      ),
    );
  }
}
