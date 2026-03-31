import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/core/widget/custom_global_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContainerColumnItems extends StatelessWidget {
  const CustomContainerColumnItems({
    super.key,
    required this.txt,
    required this.subTxt,
    required this.salary, required this.rate,
  });

  final String txt;
  final String subTxt;
  final double salary;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.sp),
        color: AppColor.kWhite0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ////////image/////////////
          Container(
            width: 230.w,
            height: 150.h,
            child: ClipRRect(
              child: Image.asset(
                "assets/images/Rectangle 48.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal:10.w,vertical: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ////////title/////////////
                CustomGlobalText(
                  size: 17,
                  weight: FontWeight.w600,
                  color: AppColor.kBlack0,
                  txt: txt,
                ),
                SizedBox(height: 8.h,),
                ////////subTitle/////////////
                CustomGlobalText(
                  size: 15,
                  weight: FontWeight.w500,
                  color: AppColor.kBlack0,
                  txt: subTxt,
                ),
                ////////salary/////////////
                CustomGlobalText(
                  size: 15,
                  weight: FontWeight.w500,
                  color: AppColor.kBlack0,
                  txt: salary.toString(),
                ),
                SizedBox(height: 8.h,),
                ////////rating/////////////
                Row(
                  children: [
                    SizedBox(
                      width: 110.w,
                      height: 18.h,
                      child: ListView.separated(
                        physics:NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Icon(Icons.star, color: Colors.amber, size: 17.sp),
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 5.w,);
                        },
                        itemCount: 5,
                      ),
                    ),
                    CustomGlobalText(
                      size: 15,
                      weight: FontWeight.w500,
                      color: AppColor.kBlack0,
                      txt: rate.toString(),
                    ),
                  ],
                ),
              ],),
          )
        ],
      ),
    );
  }
}
