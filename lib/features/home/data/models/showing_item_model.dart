class ShowingItemModel {
  final String title;
  final String subTitle;
  final String price;
  final String image;
  final double rating;

  ShowingItemModel({
    required this.title,
    required this.price,
    required this.image,
    required this.rating,
    required this.subTitle,
  });
}

final List<ShowingItemModel> showingItem = [
  ShowingItemModel(
    title: "Black Winter...",
    subTitle: "Autumn And Winter Casual cotton-padded jacket...",
    price: "₹499",
    image: "assets/images/1.jpg",
    rating: 4.5,
  ),
  ShowingItemModel(
    title: "Mens Starry",
    subTitle: "Mens Starry Sky Printed Shirt 100% Cotton Fabric",
    price: "₹499",
    image: "assets/images/2.jpg",
    rating: 4.5,
  ),
  ShowingItemModel(
    title: "women Starry",
    subTitle: "Solid Black Dress for Women, Sexy Chain Shorts Ladi...",
    price: "₹499",
    image: "assets/images/3.jpg",
    rating: 4.5,
  ),
  ShowingItemModel(
    title: "child Starry",
    subTitle: "EARTHEN Rose Pink Embroidered Tiered Max...",
    price: "₹499",
    image: "assets/images/4.jpg",
    rating: 4.5,
  ),
];
