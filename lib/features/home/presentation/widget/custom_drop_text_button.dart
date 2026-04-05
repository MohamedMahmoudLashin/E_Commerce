import 'package:e_commerce/core/widget/custom_global_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDropTextButton extends StatelessWidget {
  const CustomDropTextButton({
    super.key,
    required this.size,
    required this.txt,
    required this.color,
    required this.weight,
  });

  final double size;
  final String txt;
  final Color color;
  final FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        if (context.locale.languageCode=="en"){
          context.setLocale(const Locale('ar'));
        }else{
          context.setLocale(const Locale('en'));
        }
      },
      ///use CustomGlobalText
      child: CustomGlobalText(
        size: size,
        weight: weight,
        color: color,
        txt: txt,
      ),
    );
  }
}
