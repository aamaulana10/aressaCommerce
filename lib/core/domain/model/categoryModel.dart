class CategoryModel {
  List<CategoryData> data;

  CategoryModel({this.data});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<CategoryData>();
      json['data'].forEach((v) {
        data.add(new CategoryData.fromJson(v));
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

class CategoryData {
  String id;
  String image;
  String name;
  String category;

  CategoryData({this.id, this.image, this.name, this.category});

  CategoryData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    name = json['name'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['name'] = this.name;
    data['category'] = this.category;
    return data;
  }
}