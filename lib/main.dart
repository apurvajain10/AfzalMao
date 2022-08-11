import 'package:afzal_mao/controllers/popular_product_controller.dart';
import 'package:afzal_mao/controllers/recommended_product_controller.dart';
import 'package:afzal_mao/pages/cart/cart_page.dart';
import 'package:afzal_mao/pages/food/popular_food_detail.dart';
import 'package:afzal_mao/pages/food/recommended_food_detail.dart';
import 'package:afzal_mao/pages/home/food_page_body.dart';
import 'package:afzal_mao/pages/home/main_food_page.dart';
import 'package:afzal_mao/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: MainFoodPage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}