import 'package:afzal_mao/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../controllers/auth_controller.dart';
import '../utils/dimensions.dart';
import 'package:get/get.dart';
class CustomLoader extends StatelessWidget {
  const CustomLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("I am printing loading state"+Get.find<AuthController>().isLoading.toString());
    return Center(
      child: Container(
        height:Dimensions.height20*5,
        width:Dimensions.height20*5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.height20*5/2),
          color: AppColors.mainColor
        ),
        alignment: Alignment.center,
        child:CircularProgressIndicator(color: Colors.white,),
      ),
    );
  }
}
