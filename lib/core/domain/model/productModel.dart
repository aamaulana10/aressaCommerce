class ProductModel {
  List<ProductData> data;

  ProductModel({this.data});

  ProductModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<ProductData>();
      json['data'].forEach((v) {
        data.add(new ProductData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProductData {
  String id;
  ImageProduct image;
  String category;
  String description;
  double rate;
  bool isFavorite;
  String name;
  Price price;

  ProductData(
      {this.id,
        this.image,
        this.category,
        this.description,
        this.rate,
        this.isFavorite,
        this.name,
        this.price});

  ProductData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'] != null ? new ImageProduct.fromJson(json['image']) : null;
    category = json['category'];
    description = json['description'];
    rate = json['rate'];
    isFavorite = json['isFavorite'];
    name = json['name'];
    price = json['price'] != null ? new Price.fromJson(json['price']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.image != null) {
      data['image'] = this.image.toJson();
    }
    data['category'] = this.category;
    data['description'] = this.description;
    data['rate'] = this.rate;
    data['isFavorite'] = this.isFavorite;
    data['name'] = this.name;
    if (this.price != null) {
      data['price'] = this.price.toJson();
    }
    return data;
  }
}

class ImageProduct {
  String thumbnail;
  List<String> gallery;

  ImageProduct({this.thumbnail, this.gallery});

  ImageProduct.fromJson(Map<String, dynamic> json) {
    thumbnail = json['thumbnail'];
    gallery = json['gallery'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['thumbnail'] = this.thumbnail;
    data['gallery'] = this.gallery;
    return data;
  }
}

class Price {
  String normal;
  String special;

  Price({this.normal, this.special});

  Price.fromJson(Map<String, dynamic> json) {
    normal = json['normal'];
    special = json['special'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['normal'] = this.normal;
    data['special'] = this.special;
    return data;
  }
}
