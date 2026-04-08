import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/core/widget/custom_global_container.dart';
import 'package:e_commerce/core/widget/custom_global_sized_box.dart';
import 'package:e_commerce/features/home/presentation/widget/details/custom_app_bar_chosen_item.dart';
import 'package:e_commerce/features/home/presentation/widget/details/custom_outline_button_size.dart';
import 'package:flutter/material.dart';

class ItemchosenDetails extends StatefulWidget {
  const ItemchosenDetails({super.key});

  @override
  State<ItemchosenDetails> createState() => _ItemShowsnDetailsState();
}

class _ItemShowsnDetailsState extends State<ItemchosenDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kWhite0,
      appBar:CustomAppBarChosenItem(svgIcon: "assets/icons/shopping-cart 2.svg",) ,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 25.w),
          child: Column(
            children: [
              CustomGlobalContainer(
                height: 320.h,
                width: double.infinity,
                  color: AppColor.kWhite0,
                  widget: Image.asset("assets/images/7.jpg",fit: BoxFit.fill,)),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 30.h,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomOutlineButtonSize(txt: "6 UK"),
                    CustomGlobalSizedBox(width: 10,),
                    CustomOutlineButtonSize(txt: "7 UK"),
                    CustomGlobalSizedBox(width: 10,),
                    CustomOutlineButtonSize(txt: "8 UK"),
                    CustomGlobalSizedBox(width: 10,),
                    CustomOutlineButtonSize(txt: "9 UK"),
                    CustomGlobalSizedBox(width: 10,),
                    CustomOutlineButtonSize(txt: "10 UK")
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
