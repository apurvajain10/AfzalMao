import 'package:afzal_mao/pages/food/popular_food_detail.dart';
import 'package:afzal_mao/pages/food/recommended_food_detail.dart';
import 'package:afzal_mao/pages/home/home_page.dart';
import 'package:afzal_mao/pages/home/main_food_page.dart';
import 'package:afzal_mao/pages/splash/splash_page.dart';
import 'package:get/get.dart';

import '../pages/cart/cart_page.dart';

class RouteHelper{
  static const String splashPage = "/splash-page";
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommmendedFood = "/recommended-food";
  static const String cartPage = "/cart-page";

  static String getSplashPage()=>'$splashPage';
  static String getInitial() => '$initial';
  static String getPopularFood(int pageId, String page )=> '$popularFood?pageId=$pageId&page=$page';
  static String getRecommendedFood(int pageId,String page)=> '$recommmendedFood?pageId=$pageId&page=$page';
  static String getCartPage()=>'$cartPage';

  static List<GetPage> routes=[
    GetPage(name: splashPage, page: ()=>SplashScreen()),
    GetPage(name: initial, page: ()=>HomePage()),
    GetPage(name: popularFood, page: (){
      var pageId= Get.parameters['pageId'];
      var page = Get.parameters["page"];
      //print("popular food get called");
      return PopularFoodDetail(pageId: int.parse(pageId!), page: page!);
    },
        transition: Transition.fadeIn
    ),
  GetPage(name: recommmendedFood, page: (){
  //print("popular food get called");
    var pageId= Get.parameters['pageId'];
    var page = Get.parameters["page"];
    return RecommendedFoodDetail(pageId: int.parse(pageId!),page:page!);
  },
    transition: Transition.fadeIn
    ),
    GetPage(name: cartPage, page: (){
      return CartPage();
    },
    transition: Transition.fadeIn
    )
  ];
}