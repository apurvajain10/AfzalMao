import 'package:afzal_mao/utils/colors.dart';
import 'package:afzal_mao/utils/dimensions.dart';
import 'package:afzal_mao/widgets/app_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widgets/account_widget.dart';
import '../../widgets/big_text.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.paraColor,
        title: BigText(
          text: "Profile", size: 24, color: Colors.white,
        ),
      ),
      body: Container(
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
                     bigText:BigText(text:"Lavanya" ,)
                 ),
                 SizedBox(height:Dimensions.height20 ,),
                 //phone
                 AccountWidget(
                     appIcon:AppIcon(icon: Icons.phone,
                       backgroundColor: AppColors.bluegray,
                       iconColor: Colors.white,
                       iconSize:Dimensions.height10*5/2 ,
                       size: Dimensions.height10*5,),
                     bigText:BigText(text:"9014223982" ,)
                 ),
                 SizedBox(height:Dimensions.height20 ,),
                 //email
                 AccountWidget(
                     appIcon:AppIcon(icon: Icons.email,
                       backgroundColor: AppColors.bluegray,
                       iconColor: Colors.white,
                       iconSize:Dimensions.height10*5/2 ,
                       size: Dimensions.height10*5,),
                     bigText:BigText(text:"phani.lavi@gamil.com" ,)
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
                 AccountWidget(
                     appIcon:AppIcon(icon: Icons.message_outlined,
                       backgroundColor: AppColors.bluegray,
                       iconColor: Colors.white,
                       iconSize:Dimensions.height10*5/2 ,
                       size: Dimensions.height10*5,),
                     bigText:BigText(text:"Chat with us" ,)
                 ),
                 SizedBox(height:Dimensions.height20 ,),
               ],),
           ))
          ],
        ),
      ),
    );
  }
}
