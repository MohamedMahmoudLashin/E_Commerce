import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/core/widget/custom_global_sized_box.dart';
import 'package:e_commerce/core/widget/custom_global_text.dart';
import 'package:easy_localization/easy_localization.dart';
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
      backgroundColor: AppColor.kWhite1,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Logo
              Center(
                child: SvgPicture.asset(
                  "assets/images/splash.svg",
                  width: 90.sp,
                ),
              ),

              CustomGlobalSizedBox(height: 20),

              /// User Info
              Row(
                children: [
                  Container(
                    width: 70.w,
                    height: 70.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.sp),
                      color: AppColor.kGrey0,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35.sp),
                      child: SvgPicture.asset(
                        "assets/images/info1.svg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  CustomGlobalSizedBox(width: 15),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mo Hamed",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        CustomGlobalSizedBox(height: 4),
                        Text(
                          "Flutter Developer",
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              CustomGlobalSizedBox(height: 30),

              ///  Divider
              Divider(color: Colors.grey.shade300),

              CustomGlobalSizedBox(height: 10),

              /// ️ Menu Items
              _drawerItem(
                icon: Icons.person,
                title: "Profile",
                onTap: () {},
              ),
              _drawerItem(
                icon: Icons.settings,
                title: "Settings",
                onTap: () {},
              ),
              _drawerItem(
                icon: Icons.favorite,
                title: "Favorites",
                onTap: () {},
              ),

              CustomGlobalSizedBox(height: 10),

              Divider(color: Colors.grey.shade300),

              Spacer(),

              ///  Language Dropdown
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: CustomGlobalSizedBox(
                  width: 150,
                  widget: DropdownButtonFormField<String>(
                    initialValue: context.locale.languageCode,
                    isDense: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColor.kGrey0,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.sp),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 4.h,
                      ),
                    ),
                    items: [
                      DropdownMenuItem(
                        value: 'ar',
                        child: CustomGlobalText(
                          size: 14,
                          weight: FontWeight.w600,
                          color: AppColor.kBlack0,
                          txt: 'عربي',
                        ),
                      ),
                      DropdownMenuItem(
                        value: 'en',
                        child: CustomGlobalText(
                          size: 14,
                          weight: FontWeight.w600,
                          color: AppColor.kBlack0,
                          txt: 'English',
                        ),
                      ),
                    ],
                    onChanged: (value) {
                      if (value != null) {
                        context.setLocale(Locale(value));
                        setState(() {});
                      }
                    },
                    dropdownColor: AppColor.kGrey0,
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColor.kBlack0,
                    ),
                  ),
                ),
              ),

              CustomGlobalSizedBox(height: 10),

              ///  Logout
              _drawerItem(
                icon: Icons.logout,
                title: "Logout",
                color: Colors.red,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///  reusable item
  Widget _drawerItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Color color = Colors.black,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: color),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 14.sp,
          color: color,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: onTap,
    );
  }
}