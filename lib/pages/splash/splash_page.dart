import 'dart:async';
import 'dart:ui';

import 'package:afzal_mao/routes/route_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controllers/popular_product_controller.dart';
import '../../controllers/recommended_product_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{

  late Animation<double> animation;
  late AnimationController controller;

  Future<void> _loadResources() async {
    await Get.find<PopularProductController>().getPopularProductList();
    await Get.find<RecommendedProductController>().getRecommendedProductList();

  }

  @override
  void initState(){
    super.initState();
    controller = new AnimationController(vsync: this,
        duration: Duration(seconds: 2) )..forward();
    animation= new CurvedAnimation(
        parent: controller,
        curve: Curves.linear);

    Timer(
        const Duration(seconds: 3),
        ()=> Get.offNamed(RouteHelper.getInitial()));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(scale: animation,
              child: Center(child: Image.asset("assets/image/logo1.png", width: 250))),
          //Center(child: Image.asset("assets/image/logo part 2.png", width: 250))

        ],
      )
    );
  }
}
