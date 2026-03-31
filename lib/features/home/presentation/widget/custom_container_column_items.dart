import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/core/widget/custom_global_container.dart';
import 'package:e_commerce/core/widget/custom_global_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContainerColumnItems extends StatelessWidget {
  const CustomContainerColumnItems({
    super.key,
    required this.txt,
    required this.subTxt,
    required this.salary,
    required this.rate,
  });

  final String txt;
  final String subTxt;
  final double salary;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return CustomGlobalContainer(
      width: 230,
      color: AppColor.kWhite0,
      widget: Column(
        children: [
          ////////image/////////////
          Container(
            width: 230.w,
            height: 150.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.sp),
              child: Image.asset(
                "assets/images/image 15.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h),
                    ////////title/////////////
                    CustomGlobalText(
                      size: 15,
                      weight: FontWeight.w500,
                      color: AppColor.kBlack0,
                      txt: txt,
                    ),
                    SizedBox(height: 5.h),
                    ////////subTitle/////////////
                    CustomGlobalText(
                      size: 13,
                      weight: FontWeight.w300,
                      color: AppColor.kBlack0,
                      txt: subTxt,
                    ),
                    SizedBox(height: 10.h),
                    ////////salary/////////////
                    CustomGlobalText(
                      size: 13,
                      weight: FontWeight.w500,
                      color: AppColor.kBlack0,
                      txt: salary.toString(),
                    ),
                    SizedBox(height: 5.h),
                    ////////rating/////////////
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 110.w,
                          height: 14.h,
                          child: ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: Colors.amber[200],
                              size: 20.sp,
                            ),
                            separatorBuilder: (context, index) {
                              return SizedBox(width: 1.w);
                            },
                            itemCount: 5,
                          ),
                        ),
                        CustomGlobalText(
                          size: 13,
                          weight: FontWeight.w500,
                          color: AppColor.kBlack0,
                          txt: rate.toString(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
