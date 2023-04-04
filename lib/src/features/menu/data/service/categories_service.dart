import 'dart:convert';

import 'package:flutter_kompas_app_clone/src/features/menu/domain/category_response_model.dart';
import 'package:flutter_kompas_app_clone/src/shared/shared_values.dart';
import 'package:http/http.dart' as http;

class CategoriesService {
  Future<CategoryResponseModel> getCategoriesList() async {
    try {
      final res = await http.get(
        Uri.parse('$baseUrlApi/categories?populate=*'),
      );

      if (res.statusCode == 200) {
        CategoryResponseModel categoryResponseModel =
            CategoryResponseModel.fromJson(
          jsonDecode(res.body),
        );

        return categoryResponseModel;
      }

      throw jsonDecode(res.body)['errors']['message'];
    } catch (e) {
      rethrow;
    }
  }
}
