import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/core/widget/custom_global_container_text_button.dart';
import 'package:e_commerce/core/widget/custom_global_text.dart';
import 'package:e_commerce/core/widget/custom_global_text_button.dart';
import 'package:e_commerce/features/auth/presentation/widget_screen/custom_auth_clipRRect.dart';
import 'package:e_commerce/features/auth/presentation/widget_screen/custom_text_form_field.dart';
import 'package:e_commerce/features/auth/presentation/widget_screen/header_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController =TextEditingController();
  TextEditingController passController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kWhite0,
      body: SafeArea(
          child:Padding(
            padding: EdgeInsets.symmetric(horizontal:35.w,vertical: 22.h),
            child: Column(
              crossAxisAlignment: .stretch,
              children: [
                SizedBox(height: 10.h,),
                HeaderText(word:"welcome".tr()),
                SizedBox(height: 30.h,),
                CustomTextFormField(obs: false,controller: emailController,),
                SizedBox(height: 40.h,),
                CustomTextFormField(obs: true,controller: passController,),
                Row(
                  mainAxisAlignment: .end,
                  children: [
                    ///use CustomGlobalTextButton
                    CustomGlobalTextButton(
                        press:(){
                      Navigator.of(context).pushNamedAndRemoveUntil("forgpass",(route)=>route.settings.name=="login");
                    },
                        txt: "forgPass".tr(), color: AppColor.kRed0, size: 16, weight: FontWeight.w500),
                  ],
                ),
                SizedBox(height: 45.h,),
                ///use CustomGlobalContainerTextButton
                CustomGlobalContainerTextButton(
                    press:(){
                  Navigator.of(context).pushReplacementNamed("getStart");
                },size: 26, weight: FontWeight.w600, color: AppColor.kWhite1, txt: "login".tr()),

                SizedBox(height: 120.h,),

                ////////////OR Continue With///////////////
                Column(
                  mainAxisAlignment: .center,
                  children: [
                    ///use CustomGlobalText
                    CustomGlobalText(size: 15, weight: FontWeight.w500, color: AppColor.kGrey0, txt: "orcWith".tr()),
                    SizedBox(height: 10.h,),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.h),
                      child: Row(
                        mainAxisAlignment: .center,
                        children: [
                          CustomAuthClipRRect(image: "assets/icons/google.svg"),
                          SizedBox(width: 15.w,),
                          CustomAuthClipRRect(image: "assets/icons/apple.svg"),
                          SizedBox(width: 15.w,),
                          CustomAuthClipRRect(image: "assets/icons/facebook.svg"),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: .center,
                      children: [
                        ///use CustomGlobalText
                        CustomGlobalText(size: 17, weight: FontWeight.w500, color: AppColor.kGrey0, txt: "createSign".tr()),
                        ///use CustomGlobalTextButton
                        CustomGlobalTextButton(
                            press:(){
                              Navigator.of(context).pushReplacementNamed("signup");
                            },
                            txt:"signup".tr(), color: AppColor.kRed0, size: 17, weight: FontWeight.w500)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
