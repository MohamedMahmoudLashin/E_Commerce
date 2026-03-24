import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtuon extends StatelessWidget {
  const CustomButtuon({super.key, required this.word, required this.color, this.press});

  final String word;
  final Color color;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      child: Text(
        word,
        style: TextStyle(
          fontSize: 21.sp,
          fontWeight: FontWeight.w500,
          color: color,
        ),
      ),
    );
  }
}
