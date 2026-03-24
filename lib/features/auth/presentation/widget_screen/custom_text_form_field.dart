import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.obs,
    required this.controller});

  final bool obs;
  final TextEditingController controller;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:widget.controller ,
      obscureText: widget.obs,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 20.h),
        hintText: widget.obs?"pass".tr():"email".tr(),
        hintStyle: TextStyle(fontWeight:FontWeight.w400,fontSize: 15.sp,color: AppColor.kGrey1 ),
        filled: true,
        fillColor: AppColor.kWhite1,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColor.kGrey0,width: 2.sp),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColor.kGrey0,width: 2.sp),
        ),
        prefixIcon:widget.obs?SvgPicture.asset("assets/icons/lock.svg",fit: BoxFit.scaleDown,):SvgPicture.asset("assets/icons/User.svg",fit: BoxFit.scaleDown,),
        suffixIcon:widget.obs?SvgPicture.asset("assets/icons/eye.svg",fit: BoxFit.scaleDown,):null,
      ),
    );
  }
}
