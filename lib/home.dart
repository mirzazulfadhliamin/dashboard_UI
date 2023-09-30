import 'package:dashboard/controllers/home_binding.dart';
import 'package:dashboard/controllers/home_ctrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ass';

class HomePage extends GetView<HomeBinding> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: appbarcolor ,),
      body: SingleChildScrollView(
        child: Column(
        
        ),
      ),
    );
  }
}