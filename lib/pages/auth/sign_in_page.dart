import 'package:afzal_mao/pages/auth/sign_up_page.dart';
import 'package:afzal_mao/utils/colors.dart';
import 'package:afzal_mao/widgets/big_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/dimensions.dart';
import '../../widgets/app_text_field.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController =TextEditingController();
    var passwordController =TextEditingController();
    var nameController =TextEditingController();
    var phoneController =TextEditingController();

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: Dimensions.screenHeight*0.05,),
              //app logo
              Container(
                margin: EdgeInsets.only(left: Dimensions.height20, right: Dimensions.height20),
                height: Dimensions.screenHeight*0.25,
                child: Center(
                  child: CircleAvatar(
                    backgroundColor:AppColors.paraColor,
                    radius: 90,
                    backgroundImage: AssetImage(
                        "assets/image/logo1.png"
                    ),
                  ),
                ),

              ),
              Container(
                margin: EdgeInsets.only(left: Dimensions.width20),
                  child: Column(
                    children: [
                      SizedBox(height: Dimensions.screenHeight*0.02,),
                      Text(
                        "Hello",
                        style: TextStyle(
                          fontSize: Dimensions.font20*3+Dimensions.font20/2,
                          fontWeight: FontWeight.bold

                        )
                      )
                    ],
                  ),
              ),
              AppTextField(textController:phoneController,
                  hintText:"Phone",
                  icon:Icons.phone_android),
              SizedBox(height:Dimensions.height20,),
              AppTextField(textController:passwordController,
                  hintText:"Password",
                  icon:Icons.password_sharp),

              SizedBox(height: Dimensions.height10,),
              Row(
                children: [
                  RichText(
                      text: TextSpan(
                          text:"Sign into your account",
                          style:TextStyle(
                              color:Colors.grey[500],
                              fontSize: Dimensions.font20
                          )
                      )
                  )
                ],
              ),
              SizedBox(height: Dimensions.screenHeight*0.05),
              //sign in
              Container(
                width: Dimensions.screenWidth/2,
                height:Dimensions.screenHeight/13,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius30),
                    color:AppColors.paraColor
                ),
                child: Center(
                  child: BigText(
                    text: "Sign in",
                    size: Dimensions.font20+Dimensions.font20/2,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: Dimensions.screenHeight*0.05),

              RichText(
                  text: TextSpan(
                       text:"Don\'t have an account?",
                      style:TextStyle(
                          color:Colors.grey[500],
                           fontSize: Dimensions.font16
                      ),
                      children:[
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpPage(), transition: Transition.fade),
                      text:"Create",
                      style:TextStyle(
                        fontWeight: FontWeight.bold,
                          color:Colors.grey[500],
                          fontSize: Dimensions.font16
                      )
                  ),
                  ]
                  ),

              )
            ],
          ),
        )
    );
  }
}
