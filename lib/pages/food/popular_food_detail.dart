import 'package:afzal_mao/utils/colors.dart';
import 'package:afzal_mao/utils/dimensions.dart';
import 'package:afzal_mao/widgets/app_column.dart';
import 'package:afzal_mao/widgets/app_icon.dart';
import 'package:afzal_mao/widgets/big_text.dart';
import 'package:afzal_mao/widgets/expandable_text_widget.dart';
import 'package:afzal_mao/widgets/icon_and_text_widget.dart';
import 'package:afzal_mao/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    image: AssetImage(
                      "assets/image/food0.png"
                    )
                  )
                ),

          )),
          //Icon Widgets
          Positioned(
             left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_basket_outlined)
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
                AppColumn(text:"Shahi Paneer"),
                SizedBox(height: Dimensions.height20,),
                BigText(text: "Introduce"),
                SizedBox(height: Dimensions.height20,),
                Expanded( // SingleChildScrollView does not work alone inside a column. you need to wrap it around another widget
                  child: SingleChildScrollView( // to make it scroallable
                    child: ExpandableTextWidget(text: "Shahi paneer is a Mughlai dish where paneer is cooked in a creamy gravy made of onions, yogurt, "
                        "nut and seeds. As the name suggests, Shahi Paneer literally means Paneer for the royalty. So it is cooked with ingredients that "
                        "impart a richness to the dish like yogurt, cream, nuts and seeds.This is one of the few vegetarian recipes you’ll find in the "
                        "traditional Mughlai cuisine other than desserts which brings us to a popular and rich regional cuisine made popular by restaurants "
                        "across India. Shahi paneer is a Mughlai dish where paneer is cooked in a creamy gravy made of onions, yogurt, "
                        "nut and seeds. As the name suggests, Shahi Paneer literally means Paneer for the royalty. So it is cooked with ingredients that "
                        "impart a richness to the dish like yogurt, cream, nuts and seeds.This is one of the few vegetarian recipes you’ll find in the "
                        "traditional Mughlai cuisine other than desserts which brings us to a popular and rich regional cuisine made popular by restaurants "
                        "across India. "),
                  ),
                )
              ],
            ),
          ))
          //Expandabe Text Widget

        ],
      ),
      bottomNavigationBar: Container(
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
                    Icon(Icons.add, color: AppColors.signColor,),
                    SizedBox(width: Dimensions.width10/2,),
                    BigText(text: "0"),
                    SizedBox(width: Dimensions.width10/2,),
                    Icon(Icons.add, color: AppColors.signColor,),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
                child: BigText(text: "\$10 | Addto Cart", color: Colors.white,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor,
                ),
              )
            ],
          )
      ),
    
    );
  }
}
