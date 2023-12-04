import 'package:dashboard/data/popular.dart';
import 'package:dashboard/data/trend.dart';
import 'package:dashboard/model/like.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController {
  RxList<likeModel> likeItems = <likeModel>[].obs;
  RxString lala = '0'.obs;
  RxBool like = false.obs;

  void updateItemIsLiked(
    int index,
  ) {
    shopItems[index].isLiked.toggle();
    print("lala zola");
    print("${shopItems[index].isLiked}");
    lala.value = "halo bang jago";
    update();
    refresh();
  }

  RxList<ShopItem> shopItems = <ShopItem>[
    ShopItem(
        id: 1,
        title: 'Baju T-Shirt Putih',
        image: 'images/tshirt.jpeg',
        description: 'Baju T-Shirt warna putih dengan desain sederhana.',
        price: 19.99,
        isLiked: false),
    ShopItem(
        id: 2,
        title: 'Celana Jeans Biru',
        image: 'images/tshirt.jpeg',
        description: 'Celana jeans warna biru yang nyaman digunakan.',
        price: 34.99,
        isLiked: false),
    ShopItem(
        id: 3,
        title: 'Sepatu Sneakers Hitam',
        image: 'images/sepatunigger.jpg',
        description: 'Sepatu sneakers warna hitam yang stylish.',
        price: 49.99,
        isLiked: false),
    ShopItem(
        id: 4,
        title: 'Topi Baseball Merah',
        image: 'images/topi.jpg',
        description: 'Topi baseball warna merah dengan logo bordir.',
        price: 12.99,
        isLiked: false),
    ShopItem(
        id: 5,
        title: 'Tas Ransel Kulit',
        image: 'images/taskulit.jpg',
        description: 'Tas ransel kulit sintetis yang kuat dan tahan lama.',
        price: 59.99,
        isLiked: false),
    ShopItem(
        id: 6,
        title: 'Jam Tangan Digital',
        image: 'images/jamtangan.jpg',
        description: 'Jam tangan digital dengan fitur canggih.',
        price: 29.99,
        isLiked: false),
  ].obs;
}
