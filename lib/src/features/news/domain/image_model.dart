class ImageModel {
  Image? data;

  ImageModel({this.data});

  ImageModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Image.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Image {
  UrlAttributes? attributes;

  Image({this.attributes});

  Image.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? UrlAttributes.fromJson(json['attributes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (attributes != null) {
      data['attributes'] = attributes!.toJson();
    }
    return data;
  }
}

class UrlAttributes {
  String? url;

  UrlAttributes({this.url});

  UrlAttributes.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    return data;
  }
}
