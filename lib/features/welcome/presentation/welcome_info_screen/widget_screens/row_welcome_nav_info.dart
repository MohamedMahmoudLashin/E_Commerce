import 'package:e_commerce/core/widget/custom_global_sized_box.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../core/responsive/responsive_extension.dart';
import '../../../../../core/theme/app_color.dart';
import 'custom_buttuon.dart';

class RowWelcomeNavInfo extends StatelessWidget {
  const RowWelcomeNavInfo({
    super.key,this.prev,
    required this.next,
    this.colorPrev,
   required this.num,
    this.pressNext,
    this.pressPrev
  });

  final String? prev;
  final Color? colorPrev;
  final String next;
  final int num;
  final void Function()? pressNext;
  final void Function()? pressPrev;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          num!=1
            ?CustomButtuon(word:prev??"", color:colorPrev??AppColor.kGrey0,press: pressPrev,)
                :CustomButtuon(word: "", color:AppColor.kWhite0),

          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:num==1?AppColor.kBlack1:AppColor.kGrey0,
                ),
                height:num==1?12.h:13.h,
                width:num==1?60.w:13.h,
              ),
              CustomGlobalSizedBox(width: 15),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:num==2?AppColor.kBlack1:AppColor.kGrey0,
                ),
                height:num==2?12.h:13.h,
                width:num==2?60.w:13.h,
              ),
              SizedBox(width: 15.w,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:num==3?AppColor.kBlack1:AppColor.kGrey0,
                ),
                height:num==3?12.h:13.h,
                width:num==3?60.w:13.h,
              ),
            ],
          ),
          CustomButtuon(word:next, color:AppColor.kRed0,press:pressNext ,),
        ],
      ),
    )
    ;
  }
}
