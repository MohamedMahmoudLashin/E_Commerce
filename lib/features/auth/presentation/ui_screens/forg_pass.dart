import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/responsive/responsive_extension.dart';
import '../../../../core/theme/app_color.dart';
import '../widget_screen/custom_container_text_button.dart';
import '../widget_screen/custom_text.dart';
import '../widget_screen/custom_text_form_field.dart';
import '../widget_screen/header_text.dart';

class ForgPass extends StatefulWidget {
  const ForgPass({super.key});

  @override
  State<ForgPass> createState() => _ForgPassState();
}

class _ForgPassState extends State<ForgPass> {
  TextEditingController emailController =TextEditingController();

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
                HeaderText(word:"forPass".tr()),
                SizedBox(height: 40.h,),
                CustomTextFormField(obs: false,controller: emailController,),
                SizedBox(height: 30.h,),
                CustomText(size: 15, word: "sendResetPass".tr()),
                SizedBox(height: 50.h,),
                CustomContainerTextButton(word: "submit".tr(),press: (){},),
              ],
            ),
          )),
    );
  }
}
