import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/responsive/responsive_extension.dart';
import '../../../../core/widget/custom_global_text.dart';

class CustomHomeCliprrect extends StatelessWidget {
  const CustomHomeCliprrect({
    super.key,
    required this.image,
    required this.size,
    required this.txt,
    required this.weight,
    required this.color,
  });

  final String image;

  final int size;
  final String txt;
  final FontWeight weight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60.w,
          height: 60.w,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.sp),
            child: SvgPicture.asset(image, fit: BoxFit.cover),
          ),
        ),
        CustomGlobalText(size: size, weight: weight, color: color, txt: txt),
      ],
    );
  }
}
