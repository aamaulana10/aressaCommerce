import 'dart:convert';

import 'package:aressa_commerce/core/domain/model/categoryModel.dart';
import 'package:aressa_commerce/core/domain/model/productModel.dart';
import 'package:flutter/services.dart';

class LocalDataSource {

  Future<List<ProductData>> getFlashSaleProduct() async {

    final String assetJson = await rootBundle.loadString('lib/asset/json/flashSale.json');

    var data = jsonDecode(assetJson);

    var model = ProductModel.fromJson(data);

    return model.data;

  }

  Future<List<ProductData>> getMegaSaleProduct() async {

    final String assetJson = await rootBundle.loadString('lib/asset/json/megaSale.json');

    var data = jsonDecode(assetJson);

    var model = ProductModel.fromJson(data);

    return model.data;

  }

  Future<List<ProductData>> getRecommendedProduct() async {

    final String assetJson = await rootBundle.loadString('lib/asset/json/recommended.json');

    var data = jsonDecode(assetJson);

    var model = ProductModel.fromJson(data);

    return model.data;

  }

  Future<List<CategoryData>> getCategories() async {

    final String assetJson = await rootBundle.loadString('lib/asset/json/category.json');

    var data = jsonDecode(assetJson);

    var model = CategoryModel.fromJson(data);

    return model.data;

  }
}