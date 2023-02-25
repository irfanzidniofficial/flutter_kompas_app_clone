class ImageUrl {
  ImageUrl({
    required this.url,
  });

  final String url;

  ImageUrl copyWith({
    String? url,
  }) =>
      ImageUrl(
        url: url ?? this.url,
      );

  factory ImageUrl.fromJson(Map<String, dynamic> json) => ImageUrl(
        url: json['url'],
      );

  Map<String, dynamic> toJson() => {
        'url': url,
      };
}

class ImageAtrributes {
  ImageAtrributes({
    required this.attributes,
  });

  final ImageUrl attributes;

  ImageAtrributes copyWith({
    ImageUrl? attributes,
  }) =>
      ImageAtrributes(
        attributes: attributes ?? this.attributes,
      );

  factory ImageAtrributes.fromJson(Map<String, dynamic> json) =>
      ImageAtrributes(
        attributes: ImageUrl.fromJson(json['attributes']),
      );
  Map<String, dynamic> toJson() => {
        'attributes': attributes.toJson(),
      };
}

class ImageModel {
  ImageModel({
    required this.data,
  });

  final ImageAtrributes data;

  ImageModel copyWith({
    ImageAtrributes? data,
  }) =>
      ImageModel(
        data: data ?? this.data,
      );

  factory ImageModel.fromJson(Map<String, dynamic> json) => ImageModel(
        data: ImageAtrributes.fromJson(json['data']),
      );

  Map<String, dynamic> toJson() => {
        'data': data.toJson(),
      };
}
