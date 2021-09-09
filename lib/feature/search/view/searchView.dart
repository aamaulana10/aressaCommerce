import 'package:aressa_commerce/core/data/repository.dart';
import 'package:aressa_commerce/core/domain/model/categoryModel.dart';
import 'package:aressa_commerce/core/domain/model/productModel.dart';
import 'package:aressa_commerce/feature/category/view/allCategoryView.dart';
import 'package:aressa_commerce/feature/detailProduct/view/detailProductView.dart';
import 'package:aressa_commerce/feature/mainTabbar.dart';
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
        isShowList = true;
      });
    } else {
      setState(() {
        isSearch = false;
        isShowList = false;
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

  Widget productResultWidget() {
    return StreamBuilder(
      stream: Repository().getAllProduct().asStream(),
      builder: (context, AsyncSnapshot<List<ProductData>> snapshoot) {
        if (snapshoot.hasData) {
          var filteredData = snapshoot.data
              .where((element) =>
                  element.name
                      .toLowerCase()
                      .contains(searchData.toLowerCase()) &&
                  element.category == currentCategory)
              .toList();

          return Container(
            margin: EdgeInsets.only(top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        filteredData.length.toString(),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontFamily: 'PoppinsRegular'),
                      )),
                      FlatButton(
                          onPressed: () => {gotoAllCategory()},
                          child: Row(
                            children: [
                              Text(
                                currentCategory,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'PoppinsBold'),
                              ),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ))
                    ],
                  ),
                ),
                Expanded(
                  child: filteredData.length == 0
                      ? Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 16, right: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image(
                                height: 120,
                                width: 120,
                                image: AssetImage("lib/asset/image/home/notFound.png")
                              ),
                              Text("Product not found", style: TextStyle(
                                color: ColorConfig.textColorBold1,
                                fontFamily: "PoppinsBold",
                                fontSize: 24
                              )),
                              Text("Thank you for shopping with us", style: TextStyle(
                                  color: ColorConfig.textColor1,
                                  fontFamily: "PoppinsRegular",
                                  fontSize: 12
                              )),
                              
                              Container(
                                margin: EdgeInsets.only(top: 16),
                                width: 300,
                                decoration: BoxDecoration(
                                  color: ColorConfig.bluePrimary,
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: FlatButton(
                                    onPressed: () => {backToHome()},
                                    child: Text("Back to Home", style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "PoppinsBold",
                                        fontSize: 14
                                    ))
                                ),
                              )
                            ],
                          ),
                        )
                      : GridView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.all(0),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, childAspectRatio: 0.65),
                          itemCount: filteredData.length,
                          itemBuilder: (item, index) {
                            var data = filteredData[index];

                            return Container(
                              height: 400,
                              margin: EdgeInsets.all(8),
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: ColorConfig.borderColor, width: 1),
                                  borderRadius: BorderRadius.circular(8)),
                              child: InkWell(
                                onTap: () => {gotoDetailProduct(data)},
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5),
                                          child: Image(
                                            image:
                                                AssetImage(data.image.thumbnail),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(data.name,
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: ColorConfig.textColorBold1,
                                            fontFamily: 'PoppinsBold',
                                          )),
                                      padding: EdgeInsets.only(top: 10),
                                    ),
                                    Container(
                                      child: RatingBarIndicator(
                                        rating: data.rate,
                                        itemBuilder: (context, index) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        itemCount: 5,
                                        itemSize: 24.0,
                                        unratedColor: ColorConfig.borderColor,
                                      ),
                                      padding: EdgeInsets.only(top: 10),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 8),
                                      child: Text(data.price.special,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: ColorConfig.bluePrimary,
                                            fontFamily: 'PoppinsBold',
                                          )),
                                      padding: EdgeInsets.only(top: 10),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Text(data.price.normal,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontFamily: 'PoppinsRegular',
                                                  decoration: TextDecoration
                                                      .lineThrough)),
                                          Padding(
                                            padding: EdgeInsets.only(left: 8),
                                            child: Text("24% off",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontFamily: 'PoppinsBold',
                                                    color: Color(0XFFFB7181))),
                                          ),
                                        ],
                                      ),
                                      padding: EdgeInsets.only(top: 10),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                ),
              ],
            ),
          );
        } else if (snapshoot.hasError) {
          return Text(snapshoot.error.toString());
        } else {
          return Container();
        }
      },
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
            isSearch == false
                ? Expanded(
                    child: SingleChildScrollView(child: categoriesWidget()),
                  )
                : isShowList
                    ? Expanded(child: productResultWidget())
                    : Container()
          ],
        ),
      ),
    );
  }
}
