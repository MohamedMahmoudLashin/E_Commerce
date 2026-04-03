import 'package:easy_localization/easy_localization.dart';

class HomeItem {
  final String image;
  final String txt;

  HomeItem({required, required this.image, required this.txt});
}
final List<HomeItem>homeItems=[
  HomeItem(
      image: "assets/images/ellipse 1.png",
      txt: "sear5".tr()),
  HomeItem(
      image: "assets/images/ellipse 2.png",
      txt: "sear6".tr()),
  HomeItem(
      image: "assets/images/ellipse 3.png",
      txt: "sear7".tr()),
  HomeItem(
      image: "assets/images/ellipse 4.png",
      txt: "sear8".tr()),
  HomeItem(
      image: "assets/images/ellipse 5.png",
      txt: "sear9".tr()),
];