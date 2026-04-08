import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/core/widget/custom_global_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBarChosenItem extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarChosenItem({super.key, this.title, this.svgIcon});

  final String? title;
  final String? svgIcon;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.kWhite0,
      scrolledUnderElevation: 0,
      leadingWidth: 80.w,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(Icons.arrow_back_ios),
      ),
      title: Center(
        child: title != null
            ? CustomGlobalText(
                size: 24,
                weight: FontWeight.w600,
                color: AppColor.kBlack1,
                txt: title!,
              )
            : null,
      ),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: svgIcon != null ? SvgPicture.asset(svgIcon!) : null,
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
