class NewsModel {
  final int? id;
  final String? title;
  final String? subtitle;
  final String? category;
  final String? content;
  final String? newsImage;

  NewsModel({
    this.id,
    this.subtitle,
    this.title,
    this.category,
    this.content,
    this.newsImage,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        id: json['id'],
        title: json['attributes']['title'],
        subtitle: json['attributes']['subtitle'],
        category: json['attributes']['category']['data']['attributes']
                ['title'] ??
            'Uncategorized',
        content: json['attributes']['content'],
        newsImage: json['attributes']['news_image']['data']['attributes']
            ['url'],
      );
}
