import 'package:afzal_mao/data/api/api_client.dart';
import 'package:afzal_mao/utils/constants.dart';
import 'package:get/get.dart';

class RecommendedProductRepo extends GetxService{
  final ApiClient apiClient;
  RecommendedProductRepo({required this.apiClient});

  Future<Response> getRecommendedProductList() async{
//return await apiClient.getData("www.dbestech.com/api/product/list");
    return await apiClient.getData(AppConstants.recommendedProductUri);
  }
}