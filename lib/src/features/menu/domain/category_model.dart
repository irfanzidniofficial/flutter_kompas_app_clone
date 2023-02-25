class CategoryModel {
  final int? id;
  final String? title;
  final String? subtitle;
  final String? image;
  // final List<NewsModel>? news;

  CategoryModel({
    this.id,
    this.title,
    this.subtitle,
    this.image,
    // this.news,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json['id'],
        title: json['attributes']['title'],
        subtitle: json['attributes']['subtitle'],
        
         /**
        news: json['attributes']['news'] == null
            ? null
            : (json['attributes']['news']['data'] as List)
                .map(
                  (category) => NewsModel.fromJson(category),
                )
                .toList(),
         */
        image: json['attributes']['category_image']['data']['attributes']
            ['url'],
      );
}
