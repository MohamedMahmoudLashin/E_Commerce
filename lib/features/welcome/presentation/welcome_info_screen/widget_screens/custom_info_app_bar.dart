import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_buttuon.dart';

class CustomInfoAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomInfoAppBar({super.key, required this.index, this.press});

  final int index;
  final void Function()? press;

  @override
  State<CustomInfoAppBar> createState() => _CustomInfoAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomInfoAppBarState extends State<CustomInfoAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.kWhite0,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      leadingWidth: 100.w,
      leading: Padding(
        padding:  EdgeInsets.symmetric(horizontal:20.w,vertical: 20.h),
        child: RichText(text: TextSpan(
            children: [
          TextSpan(text: "${widget.index}",style: TextStyle(fontSize: 21.sp,fontWeight: FontWeight.w500,color: AppColor.kBlack0)),
          TextSpan(text: "/3",style: TextStyle(fontSize: 21.sp,fontWeight: FontWeight.w500,color: AppColor.kGrey0)),
            ])),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal:5.w,vertical: 8.h),
          child: CustomButtuon(word: "skip".tr(), color: AppColor.kBlack0,press: widget.press,),
        )],
    );
  }
}
