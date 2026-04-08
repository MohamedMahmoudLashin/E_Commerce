import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/core/widget/custom_global_text_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomGlobalContainerTextButton extends StatelessWidget {
  const CustomGlobalContainerTextButton({
    super.key,
    this.press,
    required this.size,
    required this.weight,
    required this.color,
    required this.txt,
    this.height,
  });

  final double? height;
  final void Function()? press;
  final double size;
  final FontWeight weight;
  final Color color;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:height!=null?height!.h:65.h,
      decoration: BoxDecoration(
        color: AppColor.kRed0,
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: CustomGlobalTextButton(
        press: press,
        txt: txt,
        color: color,
        size: size,
        weight: weight,
      ),
    );
  }
}
