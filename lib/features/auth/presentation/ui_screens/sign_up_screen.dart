import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/core/widget/custom_global_container_text_button.dart';
import 'package:e_commerce/core/widget/custom_global_text.dart';
import 'package:e_commerce/core/widget/custom_global_text_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget_screen/custom_auth_clipRRect.dart';
import '../widget_screen/custom_container_text_button.dart';
import '../widget_screen/custom_text.dart';
import '../widget_screen/custom_text_form_field.dart';
import '../widget_screen/header_text.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignUpScreen> {
  TextEditingController emailController =TextEditingController();
  TextEditingController passController =TextEditingController();
  TextEditingController confPassController =TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passController.dispose();
    confPassController.dispose();
    super.dispose();
  }
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
                SizedBox(height: 40.h,),
                CustomTextFormField(obs: true,controller: confPassController,),
                Padding(
                  padding: EdgeInsets.symmetric(vertical:21.h ),
                  /////////////By Clicking//////////////
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: .start,
                        children: [
                          ///use CustomGlobalText
                          CustomGlobalText(size: 16, weight: FontWeight.w500, color: AppColor.kGrey0, txt: "byClicking1".tr()),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.sp),
                            child: CustomGlobalText(size: 16, weight: FontWeight.w500, color: AppColor.kRed1, txt:"register".tr()),
                          ),
                          CustomGlobalText(size: 16, weight: FontWeight.w500, color: AppColor.kGrey0, txt: "byClicking2".tr()),
                        ],
                      ),
                      SizedBox(height: 8.h,),
                      Row(
                        children: [
                          CustomText(size: 15, word: "byClicking3".tr()),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h,),
                ///use CustomGlobalContainerTextButton
                CustomGlobalContainerTextButton(
                    press:(){
                      Navigator.of(context).pushReplacementNamed("login");
                    },size: 26, weight: FontWeight.w600, color: AppColor.kWhite1, txt: "createAcc".tr()),
                SizedBox(height: 40.h,),
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
                        CustomGlobalText(size: 17, weight: FontWeight.w500, color: AppColor.kGrey0, txt: "iAlreadyHave".tr()),
                        ///use CustomGlobalTextButton
                        CustomGlobalTextButton(
                            press:(){
                              Navigator.of(context).pushReplacementNamed("login");
                            },
                            txt:"login".tr(), color: AppColor.kRed0, size: 17, weight: FontWeight.w500)
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
