import 'package:afzal_mao/controllers/cart_controller.dart';
import 'package:afzal_mao/controllers/popular_product_controller.dart';
import 'package:afzal_mao/pages/home/main_food_page.dart';
import 'package:afzal_mao/utils/colors.dart';
import 'package:afzal_mao/utils/constants.dart';
import 'package:afzal_mao/utils/dimensions.dart';
import 'package:afzal_mao/widgets/app_column.dart';
import 'package:afzal_mao/widgets/app_icon.dart';
import 'package:afzal_mao/widgets/big_text.dart';
import 'package:afzal_mao/widgets/expandable_text_widget.dart';
import 'package:afzal_mao/widgets/icon_and_text_widget.dart';
import 'package:afzal_mao/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../cart/cart_page.dart';

class PopularFoodDetail extends StatelessWidget {
  final int pageId;
   const PopularFoodDetail({Key? key, required this.pageId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product = Get.find<PopularProductController>().popularProductList[pageId];
    Get.find<PopularProductController>().initProduct(product,Get.find<CartController>());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background Image
          Positioned(
              left : 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      AppConstants.baseUrl+ AppConstants.uploadUrl+ product.img!
                    )
                  )
                ),

          )),
          //Icon Widgets
          Positioned(
            top: Dimensions.height45,
             left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap:(){
                    Get.to(()=>MainFoodPage());
                  },
                    child: AppIcon(icon: Icons.arrow_back_ios)),

                GetBuilder<PopularProductController>(builder:(controller){
                  return Stack(
                    children: [
                      AppIcon(icon: Icons.shopping_cart_outlined),
                      Get.find<PopularProductController>().totalItems>=1?
                  Positioned(
                    right:0, top:0,
                    child: GestureDetector(
                      onTap:(){
                        Get.to(()=>CartPage());
                  },
                      child: AppIcon(icon: Icons.circle, size:20,
                          iconColor:Colors.transparent,
                          backgroundColor: AppColors.bluegray),
                    ),
                  ):
                  Container(),
                      Get.find<PopularProductController>().totalItems>=1?
                      Positioned(
                        right:3, top:3,
                        child: BigText(text:Get.find<PopularProductController>().totalItems.toString(),
                        size:12,color: Colors.black,
                        ),
                      ):
                      Container()
                    ],
                  );
                },)
              ],
            ),
          ),
          //Introduction of Food
          Positioned(
            left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize,
              //top: Dimensions.popularFoodImgSize-20,
              child: Container(
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
              decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(Dimensions.radius20),
                topLeft: Radius.circular(Dimensions.radius20),
              ),
              //color: Colors.redAccent
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppColumn(text:product.name!),
                SizedBox(height: Dimensions.height20,),
                BigText(text: "Introduce"),
                SizedBox(height: Dimensions.height20,),
                Expanded( // SingleChildScrollView does not work alone inside a column. you need to wrap it around another widget
                  child: SingleChildScrollView( // to make it scroallable
                    child: ExpandableTextWidget(text: product.description!),
                  ),
                )
              ],
            ),
          ))
          //Expandable Text Widget

        ],
      ),
      bottomNavigationBar: GetBuilder<PopularProductController>(builder: (popularProduct){
        return Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30, left: Dimensions.height20, right: Dimensions.height20),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20*2),
                  topLeft: Radius.circular(Dimensions.radius20*2),
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                      onTap: (){
                      popularProduct.setQuantity(false);
                        },
                      child: Icon(Icons.remove, color: AppColors.signColor,)),

                      SizedBox(width: Dimensions.width10/2,),
                      BigText(text: popularProduct.inCartItems.toString()),
                      SizedBox(width: Dimensions.width10/2,),
                      GestureDetector(
                          onTap: (){
                            popularProduct.setQuantity(true);
                          },
                          child: Icon(Icons.add, color: AppColors.signColor,)),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    popularProduct.addItem(product);
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
                    
                        child: BigText(text: "\₹ ${product.price!} | Add to Cart", color: Colors.white,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.titleColor,
                    ),
                  ),
                )
              ],
            )
        );
      },),
    
    );
  }
}
