import 'package:dot_curved_bottom_nav/dot_curved_bottom_nav.dart';
import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/features/home/presentation/uii_screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../home/presentation/uii_screens/item_chosen_details.dart';
import '../home/presentation/uii_screens/showing_item.dart';

class HeartOfApp extends StatefulWidget {
  const HeartOfApp({super.key});

  @override
  State<HeartOfApp> createState() => _HeartOfAppState();
}

class _HeartOfAppState extends State<HeartOfApp> {
  final ScrollController _scrollController = ScrollController();
  int _currentPage = 0;

  final List<Widget> screens = [
    HomeScreen(),
    ShowingItem(),
    ItemchosenDetails(),
    Container(),
    HomeScreen()
  ];

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kWhite1,
      body: screens[_currentPage],
      bottomNavigationBar: Directionality(
        ///to reline widgets align
        textDirection:Directionality.of(context),
        child: DotCurvedBottomNav(
          scrollController: _scrollController,
          hideOnScroll: true,
          indicatorColor: AppColor.kPurple1,
          backgroundColor: AppColor.kWhite0,
          animationDuration: const Duration(milliseconds: 300),
          animationCurve: Curves.ease,
          selectedIndex: _currentPage,
          indicatorSize: 10,
          borderRadius: 25,
          height: 70,
          onTap: (index) {
            setState(() => _currentPage = index);
          },
          items: [
            SvgPicture.asset("assets/icons/home 1.svg",width: 30.sp,
              colorFilter: ColorFilter.mode(
                _currentPage == 0 ? AppColor.kPurple1 : AppColor.kGrey1,
                BlendMode.srcIn,
              ),),
            SvgPicture.asset("assets/icons/heart 1.svg",width: 30.sp,
              colorFilter: ColorFilter.mode(
                _currentPage == 1 ? AppColor.kPurple1 : AppColor.kGrey1,
                BlendMode.srcIn,
              ),),
            SvgPicture.asset("assets/icons/shopping-cart 2.svg",width: 35.sp, colorFilter: ColorFilter.mode(
              _currentPage == 2 ? AppColor.kPurple1 : AppColor.kGrey1,
              BlendMode.srcIn,
            ),),
            SvgPicture.asset("assets/icons/search 1.svg",width: 30.sp, colorFilter: ColorFilter.mode(
              _currentPage == 3 ? AppColor.kPurple1 : AppColor.kGrey1,
              BlendMode.srcIn,
            ),),
            SvgPicture.asset("assets/icons/settings.svg",width: 30.sp, colorFilter: ColorFilter.mode(
              _currentPage == 4 ? AppColor.kPurple1 : AppColor.kGrey1,
              BlendMode.srcIn,
            ),),

          ],
        ),
      ),
    );
  }
}