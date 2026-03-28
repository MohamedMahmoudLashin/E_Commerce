import 'package:flutter/cupertino.dart';
import '../responsive/responsive_extension.dart';

class CustomGlobalText extends StatelessWidget {
  const CustomGlobalText({
    super.key,
    required this.size,
    required this.weight,
    required this.color,
    required this.txt,
  });

  final int size;
  final FontWeight weight;
  final Color color;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      txt,
      style: TextStyle(
        height: 1.3,
        letterSpacing: 1.5.sp,
        fontSize: size.sp,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}
