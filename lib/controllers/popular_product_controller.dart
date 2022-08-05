import 'package:afzal_mao/data/repository/popular_product_repo.dart';
import 'package:afzal_mao/models/products_model.dart';
import 'package:afzal_mao/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList=[];
  List<dynamic> get popularProductList =>_popularProductList;

  bool _isLoaded = false;
  bool get isLoaded=> _isLoaded;

  int _quantity = 0;
  int get quantity => _quantity;
  int _inCartItems =0;
  int get inCartItems=>_inCartItems+_quantity;

  Future<void> getPopularProductList() async{
    Response response = await popularProductRepo.getPopularProductList();
    if(response.statusCode==200){

     // print("got products");
      _popularProductList=[];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      //print(_popularProductList);
      _isLoaded = true;
      update();
    }else{

    }
  }
  void setQuantity(bool isIncrement){
    if(isIncrement){
      //print("Increment"+ _quantity.toString());
      _quantity = checkQuantity(_quantity+1);
    }else{
      //print("Decrement"+ _quantity.toString());
      _quantity = checkQuantity(_quantity-1);
    }
    update();
  }
  int checkQuantity(int quantity){
    if(quantity<0){
      Get.snackbar("Item count", "You can't reduce more",
          backgroundColor: AppColors.mainBlackColor,
        colorText: Colors.white,
      );

      return 0;
    } else if(quantity > 20){
      Get.snackbar("Item count", "You can't add more",
        backgroundColor: AppColors.mainBlackColor,
        colorText: Colors.white,
      );
      return 20;
    } else{
      return quantity;
    }
  }

  void initProduct(){
    _quantity =0;
    _inCartItems =0;
    //if exists
    //get from storage _incartItems=3
  }

}