import 'package:e_commerce/core/responsive/responsive_extension.dart';
import 'package:e_commerce/core/theme/app_color.dart';
import 'package:e_commerce/core/widget/custom_global_container.dart';
import 'package:e_commerce/core/widget/custom_global_sized_box.dart';
import 'package:e_commerce/core/widget/custom_global_text.dart';
import 'package:e_commerce/features/home/data/models/showing_item_model.dart';
import 'package:e_commerce/features/home/presentation/widget/container_items/custom_container_column_items.dart';
import 'package:e_commerce/features/home/presentation/widget/custom_container_filter.dart';
import 'package:e_commerce/features/home/presentation/widget/drawer/custom_drawer.dart';
import 'package:e_commerce/features/home/presentation/widget/custom_home_app_bar.dart';
import 'package:e_commerce/features/home/presentation/widget/custom_search_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ShowingItem extends StatefulWidget {
  const ShowingItem({super.key});

  @override
  State<ShowingItem> createState() => _ShowingItemState();
}

class _ShowingItemState extends State<ShowingItem> {
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
            //////////////text form field search/////////////////
            CustomSearchTextFormField(controller: searchController),
            //////////////filter and sort/////////////////
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  CustomGlobalText(
                    size: 22,
                    weight: FontWeight.w600,
                    color: AppColor.kBlack0,
                    txt: "52,082+ Iteams",
                  ),
                  Row(
                    children: [
                      CustomContainerFilter(
                        press: () {
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
                        press: () {
                          ///what do you want
                        },
                        size: 15,
                        color: AppColor.kBlack0,
                        txt: "sear4".tr(),
                        weight: FontWeight.w600,
                        image: "assets/icons/filter.svg",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //////////////grid view items/////////////////
            Expanded(
              child: MasonryGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20.h,
                crossAxisSpacing: 20.w,
                itemCount: showingItem.length,
                itemBuilder: (context, index) {
                  final product = showingItem[index];
                  return GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed("chosenitem");
                    },
                    child: CustomGlobalContainer(
                      color: AppColor.kWhite0,
                      widget: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(product.image, fit: BoxFit.cover),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomGlobalText(
                                  size: 17,
                                  weight: FontWeight.w600,
                                  color: AppColor.kBlack1,
                                  txt: product.title,
                                ),
                                CustomGlobalSizedBox(height: 4),
                                CustomGlobalText(
                                  size: 15,
                                  weight: FontWeight.w500,
                                  color: AppColor.kBlack1,
                                  txt: product.price,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 16,
                                      color: Colors.orange,
                                    ),
                                    CustomGlobalText(
                                      size: 15,
                                      weight: FontWeight.w500,
                                      color: AppColor.kBlack1,
                                      txt: product.rating.toString(),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
