import 'package:afzal_mao/pages/food/popular_food_detail.dart';
import 'package:afzal_mao/pages/food/recommended_food_detail.dart';
import 'package:afzal_mao/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper{
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommmendedFood = "/recommended-food";

  static String getInitial() => '$initial';
  static String getPopularFood(int pageId)=> '$popularFood?pageId=$pageId';
  static String getRecommendedFood(int pageId)=> '$recommmendedFood?pageId=$pageId';

  static List<GetPage> routes=[
    GetPage(name: initial, page: ()=>MainFoodPage()),
    GetPage(name: popularFood, page: (){
      var pageId= Get.parameters['pageId'];
      //print("popular food get called");
      return PopularFoodDetail(pageId: int.parse(pageId!));
    },
        transition: Transition.fadeIn
    ),
  GetPage(name: recommmendedFood, page: (){
  //print("popular food get called");
    var pageId= Get.parameters['pageId'];
    return RecommendedFoodDetail(pageId: int.parse(pageId!));
  },
    transition: Transition.fadeIn
    ),
  ];
}