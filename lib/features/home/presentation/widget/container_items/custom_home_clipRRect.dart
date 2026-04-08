import 'package:e_commerce/core/theme/app_color.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../core/responsive/responsive_extension.dart';
import '../../../../../core/widget/custom_global_text.dart';

class CustomHomeCliprrect extends StatelessWidget {
  const CustomHomeCliprrect({
    super.key,
    required this.image,
    required this.size,
    required this.txt,
    required this.weight,
    required this.color,
    this.press,

  });

  final void Function()? press;
  final String image;

  final double size;
  final String txt;
  final FontWeight weight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7.h),
      child: SizedBox(
        height: 110.h,
        child: Column(
          mainAxisAlignment: .spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                // boxShadow:[
                //   BoxShadow(color: AppColor.kWhite1.withAlpha(60),blurRadius:15,spreadRadius: 1,blurStyle: BlurStyle.normal,offset: Offset(2, 3) )
                // ]
              ),
              width: 75.w,
              height: 75.w,
              child: GestureDetector(
                onTap: press,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40.sp),
                  child: Image.asset(image, fit: BoxFit.cover),
                ),
              ),
            ),
            CustomGlobalText(size: size, weight: weight, color: color, txt: txt),
          ],
        ),
      ),
    );
  }
}
