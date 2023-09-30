import 'dart:math';

import 'package:dashboard/widget/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyCard extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback reset;
  final pages;

  MyCard({
    Key? key,
    this.title = "bangun datar",
    this.image = "",

    required this.reset,
    required this.pages,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 224, 224, 224),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.black, width: 2)),
      child: InkWell(
        onTap: () {
    

          reset();
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(10),

              title: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        '',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: textKu(
                          text: title,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      elevation: 0,
    );
  }
}
