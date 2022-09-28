import 'package:afzal_mao/base/custom_loader.dart';
import 'package:afzal_mao/controllers/auth_controller.dart';
import 'package:afzal_mao/routes/route_helper.dart';
import 'package:afzal_mao/utils/colors.dart';
import 'package:afzal_mao/utils/dimensions.dart';
import 'package:afzal_mao/widgets/app_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../controllers/cart_controller.dart';
import '../../controllers/user_controller.dart';
import '../../widgets/account_widget.dart';
import '../../widgets/big_text.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _userLoggedIn = Get.find<AuthController>().userLoggedIn();
    if(_userLoggedIn){
      Get.find<UserController>().getUserInfo();

    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.paraColor,
        title: BigText(
          text: "Profile", size: 24, color: Colors.white,
        ),
      ),
      body: GetBuilder<UserController>(builder: (userController){
        return _userLoggedIn?
        (userController.isLoading?Container(
              width: double.maxFinite,
              margin:EdgeInsets.only(top: Dimensions.height20) ,
              child: Column(
                children: [
                  //profile icon
                  AppIcon(icon: Icons.person,
                    backgroundColor: AppColors.paraColor,
                    iconColor: Colors.white,
                    iconSize: Dimensions.height45+Dimensions.height30,
                    size:Dimensions.height15*10 ,),
                  SizedBox(height:Dimensions.height30 ,),
                  Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            //name
                            AccountWidget(
                                appIcon:AppIcon(icon: Icons.person,
                                  backgroundColor: AppColors.paraColor,
                                  iconColor: Colors.white,
                                  iconSize:Dimensions.height10*5/2 ,
                                  size: Dimensions.height10*5,),
                                bigText:BigText(text:userController.userModel.name)
                            ),
                            SizedBox(height:Dimensions.height20 ,),
                            //phone
                            AccountWidget(
                                appIcon:AppIcon(icon: Icons.phone,
                                  backgroundColor: AppColors.bluegray,
                                  iconColor: Colors.white,
                                  iconSize:Dimensions.height10*5/2 ,
                                  size: Dimensions.height10*5,),
                                bigText:BigText(text:userController.userModel.phone)
                            ),
                            SizedBox(height:Dimensions.height20 ,),
                            //email
                            AccountWidget(
                                appIcon:AppIcon(icon: Icons.email,
                                  backgroundColor: AppColors.bluegray,
                                  iconColor: Colors.white,
                                  iconSize:Dimensions.height10*5/2 ,
                                  size: Dimensions.height10*5,),
                                bigText:BigText(text:userController.userModel.email)
                            ),
                            SizedBox(height:Dimensions.height20 ,),
                            //address
                            AccountWidget(
                                appIcon:AppIcon(icon: Icons.location_on,
                                  backgroundColor: AppColors.bluegray,
                                  iconColor: Colors.white,
                                  iconSize:Dimensions.height10*5/2 ,
                                  size: Dimensions.height10*5,),
                                bigText:BigText(text:"Gurgav, Mumbai" ,)
                            ),
                            SizedBox(height:Dimensions.height20 ,),
                            //message
                            GestureDetector(
                              onTap: (){
                                if(Get.find<AuthController>().userLoggedIn()){
                                  Get.find<AuthController>().clearSharedData();
                                  Get.find<CartController>().clear();
                                  Get.find<CartController>().clearCartHistory();
                                  Get.offNamed(RouteHelper.getSignInPage());
                                }
                                else{
                                  print("You logged out");
                                }
                              },
                              child: AccountWidget(
                                  appIcon:AppIcon(icon: Icons.message_outlined,
                                    backgroundColor: AppColors.bluegray,
                                    iconColor: Colors.white,
                                    iconSize:Dimensions.height10*5/2 ,
                                    size: Dimensions.height10*5,),
                                  bigText:BigText(text:"Chat with us" ,)
                              ),
                            ),
                            SizedBox(height:Dimensions.height20 ,),
                          ],),
                      ))
                ],
              ),
            ):
        CustomLoader()):
        Container(child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.maxFinite,
              height: Dimensions.height20*8,
              margin: EdgeInsets.only(left:Dimensions.width20,
                  right: Dimensions.width20
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/image/signintocontinue.png"
                      )
                  )
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.toNamed(RouteHelper.getSignInPage());
              },
              child: Container(
                width: double.maxFinite,
                height: Dimensions.height20*5,
                margin: EdgeInsets.only(left:Dimensions.width20,
                    right: Dimensions.width20
                ),
                decoration: BoxDecoration(
                  color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                ),
                child: Center(child: BigText(text: "Sign in",color: Colors.white, size: Dimensions.font20,)),
              ),
            )
          ],
        ) ));
      },),
    );
  }
}
