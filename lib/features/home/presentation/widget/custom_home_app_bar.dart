import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      leadingWidth:80.w ,
      leading: InkWell(
          onTap: (){
            Scaffold.of(context).openDrawer();
          },
          child: SvgPicture.asset("assets/icons/lead.svg",fit: BoxFit.scaleDown,)),
      backgroundColor: AppColor.kWhite1,
      title: Center(child: SvgPicture.asset("assets/images/splash.svg",width: 40.sp,height: 40.sp,)),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Image.asset("assets/images/profile.png",),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
