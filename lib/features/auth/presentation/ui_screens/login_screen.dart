import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/features/auth/presentation/widget_screen/custom_cliprrect.dart';
import 'package:e_commerce/features/auth/presentation/widget_screen/custom_text.dart';
import 'package:e_commerce/features/auth/presentation/widget_screen/custom_text_button.dart';
import 'package:e_commerce/features/auth/presentation/widget_screen/custom_text_form_field.dart';
import 'package:e_commerce/features/auth/presentation/widget_screen/header_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget_screen/custom_container_text_button.dart';

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
                    CustomTextButton(word: "forgPass".tr(),color: AppColor.kRed0,size: 15,press: (){
                      Navigator.of(context).pushNamedAndRemoveUntil("forgpass",(route)=>route.settings.name=="login");
                    },),
                  ],
                ),
                SizedBox(height: 45.h,),
                CustomContainerTextButton(word: "login".tr(),press: (){},),
                SizedBox(height: 120.h,),
                Column(
                  mainAxisAlignment: .center,
                  children: [
                    CustomText(size: 15, word: "orcWith".tr()),
                    SizedBox(height: 10.h,),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.h),
                      child: Row(
                        mainAxisAlignment: .center,
                        children: [
                          CustomCliprrect(image: "assets/icons/google.svg"),
                          SizedBox(width: 15.w,),
                          CustomCliprrect(image: "assets/icons/apple.svg"),
                          SizedBox(width: 15.w,),
                          CustomCliprrect(image: "assets/icons/facebook.svg"),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: .center,
                      children: [
                        CustomText(size: 17, word: "createSign".tr()),
                        CustomTextButton(word: "signup".tr(), color: AppColor.kRed0,size: 17,press: (){
                          Navigator.of(context).pushReplacementNamed("signup");
                        },)
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
