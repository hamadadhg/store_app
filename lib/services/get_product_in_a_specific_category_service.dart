import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:store_app_2/modals/get_product_in_a_specific_category_modal.dart';

class GetProductInASpecificCategoryService {
  final String baseUrl = 'https://fakestoreapi.com/products/category';
  Future<List<GetProductInASpecificCategoryModal>> getRequest(
      {required String category, required int limit}) async {
    final Dio dio = Dio();
    try {
      final response = await dio.get(
        '$baseUrl/$category?limit=$limit',
      );
      List<dynamic> assignDataToList = response.data;
      List<GetProductInASpecificCategoryModal> emptyList = [];
      for (int i = 0; i < limit; i++) {
        emptyList.add(
          GetProductInASpecificCategoryModal.fromJson(
            jsonData: assignDataToList[i],
          ),
        );
      }
      log(
        'The Data In API $emptyList',
      );
      return emptyList;
    } on DioException catch (e) {
      throw Exception(
        'There Is An Exception In DioExcepiton = $e',
      );
    } catch (e) {
      throw Exception(
        'There Is An Error In Catch = $e',
      );
    }
  }
}
