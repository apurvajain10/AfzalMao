import 'package:afzal_mao/utils/colors.dart';
import 'package:afzal_mao/utils/dimensions.dart';
import 'package:afzal_mao/widgets/app_icon.dart';
import 'package:afzal_mao/widgets/big_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [//slivers are special widgets that have special effect
          //it takes a list of slivers
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_basket_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                //margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                color: Colors.white,
                child: Center(child: BigText(size: Dimensions.font26,
                    text:"Silver App Bar")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top:5, bottom:10),

                //decoration: BoxDecoration(
                  //  borderRadius: BorderRadius.only(
                      //  topLeft: Radius.circular(Dimensions.radius20),
                      //  topRight: Radius.circular(Dimensions.radius20)
                    //)
              //  ),
              )
            ),
            expandedHeight: 300,
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/image/food0.png",
              width: double.maxFinite,
              fit: BoxFit.cover,),
            ),
          ),
          SliverToBoxAdapter(
            child: Text("Shahi paneer is a Mughlai dish where paneer is cooked in a creamy gravy made of onions, yogurt, "
                "nut and seeds. As the name suggests, Shahi Paneer literally means Paneer for the royalty. So it is cooked with ingredients that "
                "impart a richness to the dish like yogurt, cream, nuts and seeds.This is one of the few vegetarian recipes you’ll find in the "
                "traditional Mughlai cuisine other than desserts which brings us to a popular and rich regional cuisine made popular by restaurants "
                "across India. Shahi paneer is a Mughlai dish where paneer is cooked in a creamy gravy made of onions, yogurt, "
                "nut and seeds. As the name suggests, Shahi Paneer literally means Paneer for the royalty. So it is cooked with ingredients that "
                "impart a richness to the dish like yogurt, cream, nuts and seeds.This is one of the few vegetarian recipes you’ll find in the "
                "traditional Mughlai cuisine other than desserts which brings us to a popular and rich regional cuisine made popular by restaurants "
                "across India. Shahi paneer is a Mughlai dish where paneer is cooked in a creamy gravy made of onions, yogurt, "
                "nut and seeds. As the name suggests, Shahi Paneer literally means Paneer for the royalty. So it is cooked with ingredients that "
                "impart a richness to the dish like yogurt, cream, nuts and seeds.This is one of the few vegetarian recipes you’ll find in the "
                "traditional Mughlai cuisine other than desserts which brings us to a popular and rich regional cuisine made popular by restaurants "
                "across India. Shahi paneer is a Mughlai dish where paneer is cooked in a creamy gravy made of onions, yogurt, "
                "nut and seeds. As the name suggests, Shahi Paneer literally means Paneer for the royalty. So it is cooked with ingredients that "
                "impart a richness to the dish like yogurt, cream, nuts and seeds.This is one of the few vegetarian recipes you’ll find in the "
                "traditional Mughlai cuisine other than desserts which brings us to a popular and rich regional cuisine made popular by restaurants "
                "across India. Shahi paneer is a Mughlai dish where paneer is cooked in a creamy gravy made of onions, yogurt, "
                "nut and seeds. As the name suggests, Shahi Paneer literally means Paneer for the royalty. So it is cooked with ingredients that "
                "impart a richness to the dish like yogurt, cream, nuts and seeds.This is one of the few vegetarian recipes you’ll find in the "
                "traditional Mughlai cuisine other than desserts which brings us to a popular and rich regional cuisine made popular by restaurants "
                "across India. Shahi paneer is a Mughlai dish where paneer is cooked in a creamy gravy made of onions, yogurt, "
                "nut and seeds. As the name suggests, Shahi Paneer literally means Paneer for the royalty. So it is cooked with ingredients that "
                "impart a richness to the dish like yogurt, cream, nuts and seeds.This is one of the few vegetarian recipes you’ll find in the "
                "traditional Mughlai cuisine other than desserts which brings us to a popular and rich regional cuisine made popular by restaurants "
                "across India. "),
          )
        ],
      ),
    );
  }
}
