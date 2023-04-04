import 'package:flutter_kompas_app_clone/src/features/news/domain/news_model.dart';

class TrendResponseModel {
  List<NewsModel>? data;

  TrendResponseModel({this.data});

  TrendResponseModel.fromJson(Map<String, dynamic> json) {
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

// class Data {
// 	int? id;
// 	Attributes? attributes;

// 	Data({this.id, this.attributes});

// 	Data.fromJson(Map<String, dynamic> json) {
// 		id = json['id'];
// 		attributes = json['attributes'] != null ? new Attributes.fromJson(json['attributes']) : null;
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['id'] = this.id;
// 		if (this.attributes != null) {
//       data['attributes'] = this.attributes!.toJson();
//     }
// 		return data;
// 	}
// }

// class Attributes {
// 	String? createdAt;
// 	String? updatedAt;
// 	String? publishedAt;
// 	New? new;

// 	Attributes({this.createdAt, this.updatedAt, this.publishedAt, this.new});

// 	Attributes.fromJson(Map<String, dynamic> json) {
// 		createdAt = json['createdAt'];
// 		updatedAt = json['updatedAt'];
// 		publishedAt = json['publishedAt'];
// 		new = json['new'] != null ? new New.fromJson(json['new']) : null;
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['createdAt'] = this.createdAt;
// 		data['updatedAt'] = this.updatedAt;
// 		data['publishedAt'] = this.publishedAt;
// 		if (this.new != null) {
//       data['new'] = this.new!.toJson();
//     }
// 		return data;
// 	}
// }

// class New {
// 	Data? data;

// 	New({this.data});

// 	New.fromJson(Map<String, dynamic> json) {
// 		data = json['data'] != null ? new Data.fromJson(json['data']) : null;
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		if (this.data != null) {
//       data['data'] = this.data!.toJson();
//     }
// 		return data;
// 	}
// }

// class Attributes {
// 	String? title;
// 	String? createdAt;
// 	String? updatedAt;
// 	String? publishedAt;
// 	String? subtitle;
// 	String? content;

// 	Attributes({this.title, this.createdAt, this.updatedAt, this.publishedAt, this.subtitle, this.content});

// 	Attributes.fromJson(Map<String, dynamic> json) {
// 		title = json['title'];
// 		createdAt = json['createdAt'];
// 		updatedAt = json['updatedAt'];
// 		publishedAt = json['publishedAt'];
// 		subtitle = json['subtitle'];
// 		content = json['content'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['title'] = this.title;
// 		data['createdAt'] = this.createdAt;
// 		data['updatedAt'] = this.updatedAt;
// 		data['publishedAt'] = this.publishedAt;
// 		data['subtitle'] = this.subtitle;
// 		data['content'] = this.content;
// 		return data;
// 	}
// }
