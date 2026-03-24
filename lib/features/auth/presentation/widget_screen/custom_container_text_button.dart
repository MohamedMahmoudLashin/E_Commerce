import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/features/auth/presentation/widget_screen/custom_text_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContainerTextButton extends StatelessWidget {
  const CustomContainerTextButton({super.key, this.press, required this.word});

  final void Function()? press;
  final String word;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.h,
      decoration: BoxDecoration(
        color: AppColor.kRed0,
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: CustomTextButton(
        word: word,
        color: AppColor.kWhite0,
        size: 23,
        press: press,
      ),
    );
  }
}
