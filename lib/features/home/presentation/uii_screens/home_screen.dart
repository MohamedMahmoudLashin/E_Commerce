import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/core/widget/custom_global_container.dart';
import 'package:e_commerce/core/widget/custom_global_sized_box.dart';
import 'package:e_commerce/core/widget/custom_global_text.dart';
import 'package:e_commerce/features/home/data/models/home_item.dart';
import 'package:e_commerce/features/home/presentation/widget/container_items/custom_container_column_items.dart';
import 'package:e_commerce/features/home/presentation/widget/custom_container_deal_trending.dart';
import 'package:e_commerce/features/home/presentation/widget/custom_container_offers.dart';
import 'package:e_commerce/features/home/presentation/widget/custom_container_rewarded.dart';
import 'package:e_commerce/features/home/presentation/widget/custom_container_sponsered.dart';
import 'package:e_commerce/features/home/presentation/widget/drawer/custom_drawer.dart';
import 'package:e_commerce/features/home/presentation/widget/container_items/custom_home_clipRRect.dart';
import 'package:e_commerce/features/home/presentation/widget/custom_new_arrival.dart';
import 'package:e_commerce/features/home/presentation/widget/custom_search_text_form_field.dart';
import 'package:e_commerce/features/home/presentation/widget/custom_special_offer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/custom_container_filter.dart';
import '../widget/custom_home_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kWhite1,
      appBar: CustomHomeAppBar(),
      drawer: CustomDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 25.w),
        child: Column(
          children: [
            CustomGlobalSizedBox(height: 15),
            CustomSearchTextFormField(controller: searchController),
            Expanded(
              child: SingleChildScrollView(
                child: Directionality(
                  ///to reline widgets align
                  textDirection:Directionality.of(context),
                  child: Column(
                    children: [
                      ////////filter&sort/////////////
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.h),
                        child: Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            CustomGlobalText(
                              size: 22,
                              weight: FontWeight.w600,
                              color: AppColor.kBlack0,
                              txt: "sear2".tr(),
                            ),
                            Row(
                              children: [
                                CustomContainerFilter(
                                  press: (){
                                    ///what do you want
                                  },
                                  size: 15,
                                  color: AppColor.kBlack0,
                                  txt: "sear3".tr(),
                                  weight: FontWeight.w600,
                                  image: "assets/icons/sort.svg",
                                ),
                                CustomGlobalSizedBox(width: 30),
                                CustomContainerFilter(
                                  press: (){
                                    ///what do you want
                                  },
                                  size: 15,
                                  color: AppColor.kBlack0,
                                  txt: "sear4".tr(),
                                  weight: FontWeight.w600,
                                  image: "assets/icons/filter.svg",
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                      ///////ListViewBuilder/////////////
                      CustomGlobalContainer(
                          //width: double.infinity,
                          height: 110,color: AppColor.kWhite0,
                          widget: ListView.separated(
                            separatorBuilder: (context, index) {
                              return CustomGlobalSizedBox(width: 20,);
                            },
                            scrollDirection: Axis.horizontal,
                            itemCount: homeItems.length,
                            padding: EdgeInsets.symmetric(horizontal: 15.w),
                            itemBuilder: (context, index) {
                              final item =homeItems[index];
                              return CustomHomeCliprrect(
                                press: (){
                                  ///Navigate to>>>>
                                  Navigator.of(context).pushNamed("showingitem");
                                },
                                image: item.image,
                                weight: FontWeight.w400,
                                color: AppColor.kBlack0,
                                size: 14,
                                txt: item.txt,
                              );
                            },
                          ),),
                      ///////////Custom Container Offers/////////
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.h),
                        child: CustomContainerOffers(),
                      ),
                      ///////////Custom Container Deal///////////
                      CustomContainerDealTrending(color: AppColor.kBlue1, title: "disc3".tr(), subTitle: "disc4".tr(), icon: "assets/icons/clock1.svg",press: (){},),
                      /////////Custom Column >>>>>>> ListView//////////////////
                      Padding(
                        padding: EdgeInsets.symmetric(vertical:15.h ),
                        child: Container(
                          height: 270.h,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                              itemBuilder:(context, index) {
                              return CustomContainerColumnItems(txt: "Women Printed Kurta", subTxt: "Neque porro quisquam est qui dolorem ipsum quia", salary: 1500.toString(), rate: 5000);
                              } ,
                              separatorBuilder:(context, index) {
                                return CustomGlobalSizedBox(width: 15);
                              } ,
                              itemCount: 5),
                        ),
                      ),
                      //////////////////Custom Special Offers////////////////
                      CustomSpecialOffer(txt1: "offer1".tr(),txt2: "offer2".tr(),),
                      /////////////////Container Reward////////////////
                      Padding(
                        padding:EdgeInsets.symmetric(vertical:15.h),
                        child: CustomGlobalContainer(color: AppColor.kWhite0, widget: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 5.h),
                          child: CustomContainerRewarded(),
                        )),
                      ),
                      ///////////Custom Container Deal///////////
                      CustomContainerDealTrending(color: AppColor.kPurple1, title: "disc5".tr(), subTitle: "disc6".tr(), icon: "assets/icons/cal.svg",press: (){},),
                      /////////Custom Column >>>>>>> ListView//////////////////
                      Padding(
                        padding: EdgeInsets.symmetric(vertical:15.h ),
                        child: Container(
                          height: 270.h,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder:(context, index) {
                                return CustomContainerColumnItems(txt: "Women Printed Kurta", subTxt: "Neque porro quisquam est qui dolorem ipsum quia", salary: 1500.toString(), rate: 5000);
                              } ,
                              separatorBuilder:(context, index) {
                                return CustomGlobalSizedBox(width: 15);
                              } ,
                              itemCount: 5),
                        ),
                      ),
                      ///////////////////New Arrival/////////////////
                      CustomNewArrival(),
                      ///////////////Sponserd///////////////////
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.h),
                        child: CustomContainerSponsered(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
