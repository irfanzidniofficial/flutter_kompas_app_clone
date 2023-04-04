import 'package:flutter_kompas_app_clone/src/features/menu/domain/category_model.dart';
import 'package:flutter_kompas_app_clone/src/features/menu/domain/category_response_model.dart';
import 'package:flutter_kompas_app_clone/src/features/news/domain/image_model.dart';

class NewsModel {
  int? id;
  NewsAttributes? attributes;

  NewsModel({this.id, this.attributes});

  NewsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attributes = json['attributes'] != null
        ? NewsAttributes.fromJson(json['attributes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (attributes != null) {
      data['attributes'] = attributes!.toJson();
    }
    return data;
  }
}

class NewsAttributes {
  String? title;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;
  String? subtitle;
  String? content;
  ImageModel? newsImage;
  CategoryOnNewsModel? category;

  NewsAttributes(
      {this.title,
      this.createdAt,
      this.updatedAt,
      this.publishedAt,
      this.subtitle,
      this.content,
      this.newsImage,
      this.category});

  NewsAttributes.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    publishedAt = json['publishedAt'];
    subtitle = json['subtitle'];
    content = json['content'];
    newsImage = json['news_image'] != null
        ? ImageModel.fromJson(json['news_image'])
        : null;
    category = json['category'] != null
        ? CategoryOnNewsModel.fromJson(json['category'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['publishedAt'] = publishedAt;
    data['subtitle'] = subtitle;
    data['content'] = content;
    if (newsImage != null) {
      data['news_image'] = newsImage!.toJson();
    }
    if (category != null) {
      data['category'] = category!.toJson();
    }
    return data;
  }
}
