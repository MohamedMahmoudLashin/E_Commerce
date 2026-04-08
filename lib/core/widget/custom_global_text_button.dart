import 'package:e_commerce/core/widget/custom_global_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomGlobalTextButton extends StatelessWidget {
  const CustomGlobalTextButton({
    super.key,
    required this.txt,
    required this.color,
    required this.size,
    this.press,
    required this.weight,
  });
  final void Function()? press;
  final double size;
  final FontWeight weight;
  final Color color;
  final String txt;



  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      child: CustomGlobalText(
        size: size,
        weight: weight,
        color: color,
        txt: txt,
      ),
    );
  }
}
