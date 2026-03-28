import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/features/home/presentation/widget/custom_drop_text_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60.w,
                height: 60.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.sp),
                  child: SvgPicture.asset(
                    "assets/icons/action.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(children: [Text("name"), Text("age")]),
            ],
          ),
          SizedBox(height: 20.h),
          DropdownButtonFormField(
            decoration: InputDecoration(
              fillColor: AppColor.kPurple0
            ),
            items: [
              DropdownMenuItem(
                child: CustomDropTextButton(
                  size: 17,
                  txt: "Eng",
                  color: AppColor.kBlue0,
                  weight: FontWeight.w600,
                ),
              ),
            ],
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
