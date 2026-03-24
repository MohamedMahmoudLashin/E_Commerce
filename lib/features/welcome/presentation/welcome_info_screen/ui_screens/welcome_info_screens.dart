import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget_screens/column_page_view.dart';
import '../widget_screens/custom_info_app_bar.dart';
import '../widget_screens/row_welcome_nav_info.dart';

class WelcomeInfoScreens extends StatefulWidget {
  const WelcomeInfoScreens({super.key});

  @override
  State<WelcomeInfoScreens> createState() => _WelcomeInfoScreensState();
}

class _WelcomeInfoScreensState extends State<WelcomeInfoScreens> {
  final PageController _controller = PageController();
  int currentIndex=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kWhite0,
      appBar: CustomInfoAppBar(index: currentIndex,press:(){
        if (currentIndex<3){
          _controller.nextPage(
              duration: Duration(milliseconds: 600),
              curve: Curves.easeInOut);
        }else{
          Navigator.of(context).pushReplacementNamed("login");
        }
      } ,),

        body: PageView(
        controller: _controller,
        onPageChanged: (index){
          setState(() {
           currentIndex=++index;
          });
        },
        children: [
          ColumnPageView(num: 1, title: "choose".tr(), subTitle: "chooseInfo".tr() ),
          ColumnPageView(num: 2, title: "make".tr(), subTitle: "makeInfo".tr()),
          ColumnPageView(num: 3, title: "get".tr(), subTitle: "getInfo".tr()),
        ],
      ),
      bottomNavigationBar:Padding(
        padding:  EdgeInsets.only(bottom: 20.h),
        child: RowWelcomeNavInfo(
          next:currentIndex==3?"getStart".tr():"next".tr(),
          prev: "prev".tr(),
          pressPrev:(){
            if (currentIndex>1){
              _controller.previousPage(
                  duration: Duration(milliseconds: 600),
                  curve: Curves.easeInOut);
            }
          },
          num: currentIndex,
          pressNext: (){
            if (currentIndex<3){
              _controller.nextPage(
                  duration: Duration(milliseconds: 600),
                  curve: Curves.easeInOut);
            }else{
              Navigator.of(context).pushReplacementNamed("login");
            }
          },
        ),
      )
    );
  }
}
