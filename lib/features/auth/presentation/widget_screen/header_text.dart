import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:flutter/cupertino.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({super.key, required this.word});

  final String word;

  @override
  Widget build(BuildContext context) {
    return Text(word,style: TextStyle(fontSize: 40.sp,fontWeight: FontWeight.bold,color: AppColor.kBlack0,),);
  }
}
