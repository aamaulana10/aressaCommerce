import 'package:aressa_commerce/core/data/repository.dart';
import 'package:aressa_commerce/core/domain/model/categoryModel.dart';
import 'package:aressa_commerce/core/domain/model/productModel.dart';
import 'package:aressa_commerce/feature/category/view/allCategoryView.dart';
import 'package:aressa_commerce/feature/detailProduct/view/detailProductView.dart';
import 'package:aressa_commerce/feature/mainTabbar.dart';
import 'package:aressa_commerce/feature/search/view/searchResultView.dart';
import 'package:aressa_commerce/generated/l10n.dart';
import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key key}) : super(key: key);

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  bool isSearch = false;
  bool isShowList = false;
  var searchData = "";
  var currentCategory = "Man Shoes";

  void onSearch(String e) {
    if (e.length != 0) {
      setState(() {
        isSearch = true;
        searchData = e;
      });
    } else {
      setState(() {
        isSearch = false;
      });
    }
  }

  showSearchResult(String e) {
    print("done " + e);
    if (e.length != 0) {
      setState(() {
        isShowList = true;
        searchData = e;
      });

      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchResultView(
        searchData: searchData,
      )));
    }
  }

  setCategory(String category) {
    Future.delayed(Duration(milliseconds: 500)).then((value) {
      setState(() {
        currentCategory = category;
        isSearch = true;
        isShowList = true;
      });
    });
  }

  gotoAllCategory() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => AllCategoryView()));
  }

  gotoDetailProduct(ProductData productData) {

    Future.delayed(Duration(milliseconds: 500), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => DetailProductView(
        productData: productData,
      )));
    });
  }

  backToHome() {

    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => MainTabbar()));
  }

  Widget header() {
    return Container(
      height: 80,
      margin: EdgeInsets.only(left: 16, right: 16),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: ColorConfig.borderColor, width: 1),
                  borderRadius: BorderRadius.circular(8)),
              child: TextFormField(
                onChanged: (e) => {onSearch(e)},
                textInputAction: TextInputAction.search,
                onFieldSubmitted: (e) => {showSearchResult(e)},
                decoration: InputDecoration(
                    labelText: S.of(context).searchProduct,
                    labelStyle: TextStyle(
                        color: ColorConfig.textColor1,
                        fontSize: 12,
                        fontFamily: 'Poppinsregular'),
                    prefixIcon: Icon(
                      Icons.search,
                      color: ColorConfig.bluePrimary,
                    ),
                    border: InputBorder.none),
              ),
            ),
          ),
          isSearch != true
              ? Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () => {print("whishlist")},
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Image(
                              image:
                                  AssetImage("lib/asset/image/home/love.png"),
                            ),
                          )),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () => {print("whishlist")},
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Image(
                              image: AssetImage(
                                  "lib/asset/image/home/notification.png"),
                            ),
                          )),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () => {print("whishlist")},
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Image(
                              image:
                                  AssetImage("lib/asset/image/home/more.png"),
                            ),
                          )),
                    ),
                  ],
                )
              : isShowList == true
                  ? Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () => {print("whishlist")},
                              child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Icon(Icons.sort))),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () => {print("whishlist")},
                              child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Icon(Icons.filter_alt_outlined))),
                        ),
                      ],
                    )
                  : Container()
        ],
      ),
    );
  }

  Widget categoriesWidget() {
    return StreamBuilder(
      stream: Repository().getCategories().asStream(),
      builder: (context, AsyncSnapshot<List<CategoryData>> snapshoot) {
        if (snapshoot.hasData) {
          var man = snapshoot.data
              .where((element) => element.category == "Man")
              .toList();
          var woman = snapshoot.data
              .where((element) => element.category == "Woman")
              .toList();

          return Column(
            children: [manFashionWidget(man), womanFashionWidget(woman)],
          );
        } else if (snapshoot.hasError) {
          return Text(snapshoot.error.toString());
        } else {
          return Container();
        }
      },
    );
  }

  Widget manFashionWidget(List<CategoryData> categoryData) {
    return Container(
      margin: EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              S.of(context).Fashion,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: ColorConfig.textColorBold1,
                fontSize: 14,
                fontFamily: 'PoppinsBold',
              ),
            ),
          ),
          GridView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.all(0),
              primary: false,
              physics: new NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, childAspectRatio: 0.8),
              itemCount: categoryData.length,
              itemBuilder: (item, index) {
                return Container(
                  width: 70,
                  margin: EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () => {setCategory(categoryData[index].name)},
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: ColorConfig.borderColor, width: 1),
                              shape: BoxShape.circle),
                          height: 70,
                          width: 70,
                          child: Padding(
                            child: Image(
                                image: AssetImage(categoryData[index].image)),
                            padding: EdgeInsets.all(20),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Text(
                              categoryData[index].name,
                              style: TextStyle(
                                  fontSize: 10, fontFamily: 'PoppinsRegular'),
                              textAlign: TextAlign.center,
                            ),
                            padding: EdgeInsets.only(top: 10),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }

  Widget womanFashionWidget(List<CategoryData> categoryData) {
    return Container(
      margin: EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(S.of(context).womenFahsion,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: ColorConfig.textColorBold1,
                  fontSize: 14,
                  fontFamily: 'PoppinsBold',
                )),
          ),
          GridView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.all(0),
              primary: false,
              physics: new NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, childAspectRatio: 0.8),
              itemCount: categoryData.length,
              itemBuilder: (item, index) {
                return Container(
                  width: 70,
                  margin: EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () => {setCategory(categoryData[index].name)},
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: ColorConfig.borderColor, width: 1),
                              shape: BoxShape.circle),
                          height: 70,
                          width: 70,
                          child: Padding(
                            child: Image(
                                image: AssetImage(categoryData[index].image)),
                            padding: EdgeInsets.all(20),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Text(categoryData[index].name,
                                style: TextStyle(
                                    fontSize: 10, fontFamily: 'PoppinsRegular'),
                                textAlign: TextAlign.center),
                            padding: EdgeInsets.only(top: 10),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 32),
        child: Column(
          children: [
            header(),
            Expanded(
                    child: SingleChildScrollView(child: categoriesWidget()),
                  )
          ],
        ),
      ),
    );
  }
}
