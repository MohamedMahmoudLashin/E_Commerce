import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:flutter/material.dart';

class CustomGlobalContainer extends StatelessWidget {
  const CustomGlobalContainer({
    super.key,
    required this.color,
    this.height,
    this.width,
    required this.widget,
  });

  final Color color;
  final double? height;
  final double? width;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width != null ? width!.w : null,
      height: height != null ? height!.h : null,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.sp),
        color: color,
      ),
      child: widget,
    );
  }
}
