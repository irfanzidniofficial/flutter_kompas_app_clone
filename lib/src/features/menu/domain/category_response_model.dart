import 'package:flutter_kompas_app_clone/src/features/menu/domain/category_model.dart';

class CategoryResponseModel {
  List<CategoryModel>? data;

  CategoryResponseModel({this.data});

  CategoryResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <CategoryModel>[];
      json['data'].forEach((v) {
        data!.add(CategoryModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
