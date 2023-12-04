import 'dart:ffi';
import 'package:get/get.dart';
class likeModel {
  final int id;
  final String title;
  final String description;
  final double price;
  final String images;
  int quantity;
  final RxBool isLiked;

  likeModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.images,
    required this.quantity,
    bool isLiked = false,
  }): isLiked = isLiked.obs;
}

