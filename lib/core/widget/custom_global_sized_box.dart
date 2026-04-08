import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:flutter/material.dart';

class CustomGlobalSizedBox extends StatelessWidget {
  const CustomGlobalSizedBox({super.key, this.height, this.width, this.widget});

  final double? height;
  final double? width;
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width?.w ?? 0,
        height: height?.h ?? 0,
    child: widget??null,);
  }
}
