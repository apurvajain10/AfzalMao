import 'package:afzal_mao/data/repository/cart_repo.dart';
import 'package:afzal_mao/models/products_model.dart';
import 'package:get/get.dart';

import '../models/cart_model.dart';

class CartController extends GetxController{
  final CartRepo cartRepo;
  CartController({required this.cartRepo});
  Map<int, CartModel> items={};


}