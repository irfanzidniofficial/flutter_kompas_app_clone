import 'package:flutter_kompas_app_clone/src/features/news/domain/image_model.dart';

class CategoryModel {
  int? id;
  CategoryAttributes? attributes;

  CategoryModel({this.id, this.attributes});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attributes = json['attributes'] != null
        ? new CategoryAttributes.fromJson(json['attributes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    return data;
  }
}




class CategoryAttributes {
  String? title;
  String? subtitle;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;
  ImageModel? categoryImage;

  CategoryAttributes(
      {this.title,
      this.subtitle,
      this.createdAt,
      this.updatedAt,
      this.publishedAt,
      this.categoryImage});

  CategoryAttributes.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    publishedAt = json['publishedAt'];
    categoryImage = json['category_image'] != null
        ? new ImageModel.fromJson(json['category_image'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['publishedAt'] = this.publishedAt;
    if (this.categoryImage != null) {
      data['category_image'] = this.categoryImage!.toJson();
    }
    return data;
  }
}


class CategoryOnNewsModel {
  CategoryModel? data;

  CategoryOnNewsModel({this.data});

  CategoryOnNewsModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? CategoryModel.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}
