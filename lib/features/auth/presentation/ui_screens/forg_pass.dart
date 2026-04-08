import 'package:e_commerce/core/widget/custom_global_container_text_button.dart';
import 'package:e_commerce/core/widget/custom_global_sized_box.dart';
import 'package:e_commerce/core/widget/custom_global_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/responsive/responsive_extension.dart';
import '../../../../core/theme/app_color.dart';
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: .stretch,
                children: [
                  CustomGlobalSizedBox(height: 10,),
                  HeaderText(word:"forPass".tr()),
                  CustomGlobalSizedBox(height: 40,),
                  CustomTextFormField(obs: false,controller: emailController,),
                  CustomGlobalSizedBox(height: 30,),
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      CustomGlobalText(size: 16, weight: FontWeight.w500, color: AppColor.kGrey0, txt: "sendResetPass".tr()),
                      CustomGlobalSizedBox(height: 8,),
                      CustomGlobalText(size: 16, weight: FontWeight.w500, color: AppColor.kGrey0, txt: "sendResetPass0".tr()),
                    ],
                  ),
                  CustomGlobalSizedBox(height: 50,),
                  ///use CustomGlobalContainerTextButton
                  CustomGlobalContainerTextButton(
                      press:(){
                        Navigator.of(context).pushReplacementNamed("login");
                      },size: 26, weight: FontWeight.w600, color: AppColor.kWhite1, txt: "submit".tr()),
                ],
              ),
            ),
          )),
    );
  }
}
