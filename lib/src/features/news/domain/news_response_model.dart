import 'package:flutter_kompas_app_clone/src/features/news/domain/news_model.dart';

class NewsResponseModel {
  List<NewsModel>? data;

  NewsResponseModel({this.data});

  NewsResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <NewsModel>[];
      json['data'].forEach((v) {
        data!.add(NewsModel.fromJson(v));
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
