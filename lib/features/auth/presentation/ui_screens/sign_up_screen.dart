import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/responsive/responsive_extension.dart';
import '../../../../core/theme/app_color.dart';
import '../widget_screen/custom_cliprrect.dart';
import '../widget_screen/custom_container_text_button.dart';
import '../widget_screen/custom_text.dart';
import '../widget_screen/custom_text_button.dart';
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
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: .start,
                        children: [
                          CustomText(size: 15, word: "byClicking1".tr()),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.sp),
                            child: Text("register".tr(),style: TextStyle(fontSize: 15.sp,
                              color: AppColor.kRed1,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.sp, ),),
                          ),
                          CustomText(size: 15, word: "byClicking2".tr()),
                        ],
                      ),
                      Row(
                        children: [
                          CustomText(size: 15, word: "byClicking3".tr()),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h,),
                CustomContainerTextButton(word: "createAcc".tr(),press: (){},),
                SizedBox(height: 40.h,),
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
                        CustomText(size: 17, word: "iAlreadyHave".tr()),
                        CustomTextButton(word: "login".tr(), color: AppColor.kRed0,size: 17,press: (){
                          Navigator.of(context).pushReplacementNamed("login");
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
