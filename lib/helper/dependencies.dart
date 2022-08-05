import 'package:afzal_mao/controllers/cart_controller.dart';
import 'package:afzal_mao/controllers/popular_product_controller.dart';
import 'package:afzal_mao/data/repository/cart_repo.dart';
import 'package:afzal_mao/data/repository/popular_product_repo.dart';
import 'package:afzal_mao/data/repository/recommended_product_repo.dart';
import 'package:afzal_mao/utils/constants.dart';
import 'package:get/get.dart';
import '../controllers/recommended_product_controller.dart';
import '../data/api/api_client.dart';
Future<void> init()async {
  //api client
  //Get.lazyPut(()=> ApiClient(appBaseUrl: "https://www.dbestech.com"));
 Get.lazyPut(()=> ApiClient(appBaseUrl: AppConstants.baseUrl));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
 Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
 Get.lazyPut(()=>CartRepo());

  //controllers
 Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
 Get.lazyPut(() => RecommendedProductController(recommendedProductRepo: Get.find()));
 Get.lazyPut(() => CartController(cartRepo: Get.find()));

}