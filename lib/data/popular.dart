import 'package:get/get.dart';

class ShopItem extends GetxController{
  final int id;
  final String title;
  final String description;
  final String image;
  final double price;
  RxBool isLiked;

  ShopItem({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.price,
     bool? isLiked,
  }): isLiked = isLiked?.obs ?? false.obs;
}


