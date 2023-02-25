import 'dart:convert';

import 'package:flutter_kompas_app_clone/src/features/news/domain/news_model.dart';
import 'package:flutter_kompas_app_clone/src/shared/shared_values.dart';
import 'package:http/http.dart' as http;

class NewsService {
  Future<List<NewsModel>> getNews() async {
    try {
      final res = await http.get(
        Uri.parse('$baseUrlApi/news?populate=*'),
      );

      if (res.statusCode == 200) {
        return List<NewsModel>.from(
          jsonDecode(res.body)['data'].map(
            (news) => NewsModel.fromJson(news),
          ),
        ).toList();
      }

      throw jsonDecode(res.body)['errors']['message'];
    } catch (e) {
      rethrow;
    }
  }
}
