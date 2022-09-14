import 'package:afzal_mao/utils/colors.dart';
import 'package:afzal_mao/widgets/big_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/dimensions.dart';
import '../../widgets/app_text_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController =TextEditingController();
    var passwordController =TextEditingController();
    var nameController =TextEditingController();
    var phoneController =TextEditingController();

    void _registration() {
      String name = nameController.text.trim();
      String phone = phoneController.text.trim();
      String email = emailController.text.trim();
      String password = passwordController.text.trim();

      if (name.isEmpty) {

      } else if (phone.isEmpty) {

      } else if(email.isEmpty){

      } else if(!GetUtils.isEmail(email)){

      }else if(password.isEmpty){

      } else if(password.length<6){

      } else{
        
      }
    }
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
            AppTextField(textController:emailController,
              hintText:"Email",
            icon:Icons.email),
            SizedBox(height:Dimensions.height20,),
            AppTextField(textController:passwordController,
                hintText:"Password",
                icon:Icons.password_sharp),
            SizedBox(height:Dimensions.height20,),
            AppTextField(textController:nameController,
                hintText:"Name",
                icon:Icons.person),
            SizedBox(height:Dimensions.height20,),
            AppTextField(textController:phoneController,
                hintText:"Phone",
                icon:Icons.phone),
            SizedBox(height:Dimensions.height20,),
            
            GestureDetector(
              onTap: (){
                _registration();
              },
              child: Container(
                width: Dimensions.screenWidth/2,
                height:Dimensions.screenHeight/13,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                  color:AppColors.paraColor
                ),
                child: Center(
                  child: BigText(
                    text: "Sign up",
                    size: Dimensions.font20+Dimensions.font20/2,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: Dimensions.height10,),
            RichText(
              text: TextSpan(
                recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
                text:"Have an account already?",
                style:TextStyle(
                  color:Colors.grey[500],
                  fontSize: Dimensions.font20
                )
              )
            )
          ],
        ),
      )
    );


  }
}
