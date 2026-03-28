import 'package:e_commerce/core/theme/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: InkWell(
          onTap: (){
            Scaffold.of(context).openDrawer();
          },
          child: SvgPicture.asset("assets/icons/lead.svg")),
      backgroundColor: AppColor.kWhite1,
      title: SvgPicture.asset("assets/images/splash.svg"),
      actions: [
        Image.asset("assets/images/profile.png")
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
