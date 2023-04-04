import 'dart:convert';

import 'package:flutter_kompas_app_clone/src/features/news/domain/news_model.dart';
import 'package:flutter_kompas_app_clone/src/features/news/domain/news_response_model.dart';
import 'package:flutter_kompas_app_clone/src/shared/shared_values.dart';
import 'package:http/http.dart' as http;

class NewsService {
  Future<NewsResponseModel> getNewsList() async {
    try {
      final res = await http.get(
        Uri.parse('$baseUrlApi/news?populate=*'),
      );

      if (res.statusCode == 200) {
        NewsResponseModel newsResponseModel = NewsResponseModel.fromJson(
          jsonDecode(res.body),
        );

        return newsResponseModel;
      }

      throw jsonDecode(res.body)['errors']['message'];
    } catch (e) {
      rethrow;
    }
  }

  Future<NewsModel> getDetailNews(int id) async {
    try {
      final res = await http.get(
        Uri.parse('$baseUrlApi/news/$id?populate=*'),
      );

      if (res.statusCode == 200) {
        NewsModel detailNews = NewsModel.fromJson(
          jsonDecode(res.body),
        );

        return detailNews;
      }

      throw jsonDecode(res.body)['errors']['message'];
    } catch (e) {
      rethrow;
    }
  }



  Future<NewsResponseModel> getTrend() async {
    try {
      final res = await http.get(
        Uri.parse('$baseUrlApi/news?populate=*'),
      );

      if (res.statusCode == 200) {
        NewsResponseModel newsResponseModel = NewsResponseModel.fromJson(
          jsonDecode(res.body),
        );

        return newsResponseModel;
      }

      throw jsonDecode(res.body)['errors']['message'];
    } catch (e) {
      rethrow;
    }
  }
}
