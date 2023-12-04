import 'package:dashboard/home.dart';
import 'package:dashboard/modules/controllers/home_ctrl.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/utils/colors/colors.dart';
import 'package:dashboard/widget/text.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ShoppingItem extends StatelessWidget {
  final String title;
  final String description;
  final String ttext;
  final String image;
  final double price;
  final bool isLiked;
  Function fuction;

  ShoppingItem({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.fuction,
    required this.ttext,
    this.isLiked = false,
  });

  @override
  Widget build(BuildContext context) {
    return 
    
    Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: GestureDetector(
                  onTap: () {
                    fuction();
                  },
                  child: 
                   Icon(
                      isLiked ? Icons.favorite : Icons.favorite_border,
                      color: isLiked ? Colors.red : Colors.grey,
                    ),
                  ),
                ),
            
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text(
                  title,
                  16,
                  db2_black,
                  FontWeight.bold,
                ),
                SizedBox(height: 4),
                text(
                  description,
                  12,
                  db2_black,
                  FontWeight.normal,
                  maxLines: 2,
                ),
              ],
            ),
          ),
          Expanded(child: SizedBox()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: db1_green,
                  ),
                  child: Text(
                    "Add",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: text(
                  "\$${price}",
                  16,
                  db1_green,
                  FontWeight.bold,
                ),
              ),
            ],
          ),
          text('${ttext}', 12, db3_black, FontWeight.normal),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
