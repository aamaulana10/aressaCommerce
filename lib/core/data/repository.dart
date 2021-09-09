import 'package:aressa_commerce/core/data/locale/localDataSource.dart';
import 'package:aressa_commerce/core/domain/model/categoryModel.dart';
import 'package:aressa_commerce/core/domain/model/productModel.dart';

class Repository {

  Future<List<ProductData>> getFlashSaleProduct() {

    var localData = LocalDataSource();

    return localData.getFlashSaleProduct();

  }

  Future<List<ProductData>> getMegaSaleProduct() {

    var localData = LocalDataSource();

    return localData.getMegaSaleProduct();

  }

  Future<List<ProductData>> getRecommendedProduct() {

    var localData = LocalDataSource();

    return localData.getRecommendedProduct();

  }

  Future<List<CategoryData>> getCategories() {

    var localData = LocalDataSource();

    return localData.getCategories();

  }
}