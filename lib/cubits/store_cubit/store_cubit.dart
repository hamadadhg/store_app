/*
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app_2/cubits/store_cubit/store_state.dart';
import 'package:store_app_2/modals/get_product_in_a_specific_category_modal.dart';

class StoreCubit extends Cubit<StoreState> {
  StoreCubit()
      : super(
          InitialStoreState(),
        );
  final String baseUrl = 'https://fakestoreapi.com/products/category';
  List<GetProductInASpecificCategoryModal> emptyList = [];
  Future<List<GetProductInASpecificCategoryModal>> storeMethod(
      {required String category, required int limit}) async {
    emit(
      LoadingStoreState(),
    );
    //i get on same product in all category, Clear the list before adding new products, don't forget you trigger method in initState, so first product you enter on it will api take you a value and assign to emptyList
    emptyList.clear();
    final Dio dio = Dio();
    try {
      final response = await dio.get(
        '$baseUrl/$category?limit=$limit',
      );
      List<dynamic> assignDataToList = response.data;
      for (int i = 0; i < limit; i++) {
        emptyList.add(
          GetProductInASpecificCategoryModal.fromJson(
            jsonData: assignDataToList[i],
          ),
        );
      }
      emit(
        SuccessStoreState(
          limit: limit,
        ),
      );
      return emptyList;
    } on DioException catch (e) {
      emit(
        FailureStoreState(
          errorMessage: 'catch dio exception ${e.toString()}',
        ),
      );
      return []; //return empty list because put return, my data type method should has a return value
    } catch (e) {
      emit(
        FailureStoreState(
          errorMessage: 'catch an error ${e.toString()}',
        ),
      );
      return []; //return empty list because put return, my data type method should has a return value
    }
  }
}
*/
