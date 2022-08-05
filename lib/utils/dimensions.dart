import'package:get/get.dart';
class Dimensions{
  static double screenHeight= Get.context!.height;
  static double screenWidth= Get.context!.width;

  static double pageView=screenHeight/2.62;
  static double pageViewContainer=screenHeight/3.80;
  static double pageViewTextContainer=screenHeight/6.98;
//dynamic height padding and margin
  static double height10=screenHeight/83.73;
  static double height15=screenHeight/55.82;
  static double height20=screenHeight/41.87;
  static double height30=screenHeight/27.91;
  static double height45=screenHeight/18.60;


  //dynamic width padding and margin
  static double width10=screenHeight/83.73;
  static double width15=screenHeight/55.82;
  static double width20=screenHeight/41.87;
  static double width30=screenHeight/27.91;
  static double width45=screenHeight/18.60;

  //fontsize
  static double font16 =screenHeight/52.33;
  static double font20 = screenHeight/41.86;
  static double font26 = screenHeight/32.20;

  //radius
  static double radius15=screenHeight/55.82;
  static double radius20=screenHeight/41.86;
  static double radius30=screenHeight/27.91;

//icon size
  static double iconSize24=screenHeight/34.89;
  static double iconSize16=screenHeight/52.33;
//list view size
  static double listViewImgSize = screenWidth/3.25;
  static double listViewTextContSize = screenWidth/3.9;
//popular food
  static double popularFoodImgSize = screenHeight/2.62;
//bottom height
  static double bottomHeightBar = screenHeight/6.98;
}
