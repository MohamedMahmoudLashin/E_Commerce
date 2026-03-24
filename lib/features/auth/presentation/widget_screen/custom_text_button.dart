import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key,required this.word, required this.color, required this.size, this.press});
  final void Function()? press;
  final String word;
  final Color color;
  final int size;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: press,
        child: Text(word,style: TextStyle(fontSize: size.sp,color: color,fontWeight: FontWeight.w400,letterSpacing: 1.sp),));
  }
}
