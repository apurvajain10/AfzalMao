import 'package:afzal_mao/data/api/api_client.dart';
import 'package:afzal_mao/utils/constants.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService{
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async{
//return await apiClient.getData("www.dbestech.com/api/product/list");
return await apiClient.getData(AppConstants.popularProductUri);
  }
}