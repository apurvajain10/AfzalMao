import 'package:get/get.dart';

void showCustomSnackBar(String message, {bool isError = true, String title= "Error"}){
  Get.snackbar(title, message)

}