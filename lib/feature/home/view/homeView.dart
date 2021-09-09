import 'package:aressa_commerce/core/data/repository.dart';
import 'package:aressa_commerce/core/domain/model/categoryModel.dart';
import 'package:aressa_commerce/core/domain/model/productModel.dart';
import 'package:aressa_commerce/feature/category/view/allCategoryView.dart';
import 'package:aressa_commerce/feature/detailProduct/view/detailProductView.dart';
import 'package:aressa_commerce/feature/favoritProduct/view/favoritProductView.dart';
import 'package:aressa_commerce/feature/flashSale/view/flashSaleView.dart';
import 'package:aressa_commerce/feature/megaSale/view/megaSaleView.dart';
import 'package:aressa_commerce/feature/notification/view/notificationView.dart';
import 'package:aressa_commerce/generated/l10n.dart';
import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:aressa_commerce/util/view/indicatorView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  gotoAllCategory() {
    Future.delayed(Duration(milliseconds: 500), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => AllCategoryView()));
    });
  }

  gotoDetailProduct(ProductData productData) {

    Future.delayed(Duration(milliseconds: 500), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => DetailProductView(
        productData: productData,
      )));
    });
  }

  gotoFlashSale() {
    Future.delayed(Duration(milliseconds: 500), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => FlashSaleView()));
    });
  }

  gotoMegaSale() {
    Future.delayed(Duration(milliseconds: 500), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => MegaSaleView()));
    });
  }

  gotoFavoriteProduct() {
    Future.delayed(Duration(milliseconds: 500), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => FavoritProductView()));
    });
  }

  gotoNotification() {
    Future.delayed(Duration(milliseconds: 500), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => NotificationView()));
    });
  }

  Widget header() {
    return Container(
      height: 80,
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: ColorConfig.borderColor, width: 1),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: S.of(context).searchProduct,
                            labelStyle: TextStyle(
                                color: ColorConfig.textColor1,
                                fontSize: 12,
                                fontFamily: 'PoppinsRegular'),
                            prefixIcon: Icon(
                              Icons.search,
                              color: ColorConfig.bluePrimary,
                            ),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () => {gotoFavoriteProduct()},
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Image(
                            image: AssetImage("lib/asset/image/home/love.png"),
                          ),
                        )),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () => {this.gotoNotification()},
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
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () => {print("more")},
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Image(
                            image: AssetImage("lib/asset/image/home/more.png"),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 1,
            color: ColorConfig.borderColor,
          )
        ],
      ),
    );
  }

  Widget promoBanner() {
    return Container(
      height: 250,
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: 3,
              itemBuilder: (ctx, idx) {
                return Container(
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image(
                          image: AssetImage(
                              "lib/asset/image/home/promotionDummy.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          bottom: 32,
                          left: 24,
                          child: Container(
                            width: 209,
                            child: Column(
                              children: [
                                Text(
                                  "Super Flash Sale 50% Off",
                                  maxLines: 2,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontFamily: 'PoppinsBold'),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 30),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 41,
                                        width: 42,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Center(
                                          child: Text(
                                            "08",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily: 'PoppinsBold'),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 8, right: 8),
                                        child: Text(
                                          ":",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'PoppinsBold',
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 41,
                                        width: 42,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Center(
                                          child: Text(
                                            "34",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'PoppinsBold',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 8, right: 8),
                                        child: Text(
                                          ":",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'PoppinsBold',
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 41,
                                        width: 42,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Center(
                                          child: Text(
                                            "52",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'PoppinsBold',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                      Positioned.fill(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => {print("banner")},
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            height: 40,
            margin: EdgeInsets.only(left: 32, right: 32),
            child: ListView.builder(
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (ctx, idx) {
                return IndicatorView(
                  currentIndex: 1,
                  positionIndex: 1,
                  color: ColorConfig.bluePrimary,
                  width: 5,
                  height: 5,
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget categoryWidget() {
    return StreamBuilder(
      stream: Repository().getCategories().asStream(),
      builder: (context, AsyncSnapshot<List<CategoryData>> snapshoot) {
        if (snapshoot.hasData) {
          return Container(
            height: 170,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 4),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(S.of(context).category,
                                style: TextStyle(
                                  color: ColorConfig.textColorBold1,
                                  fontSize: 14,
                                  fontFamily: 'PoppinsBold',
                                ))),
                        FlatButton(
                            onPressed: () => {gotoAllCategory()},
                            child: Text("More Category",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'PoppinsBold',
                                    color: ColorConfig.bluePrimary)))
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 140,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    padding: EdgeInsets.only(left: 8, right: 8),
                    itemBuilder: (ctx, idx) {

                      var data = snapshoot.data[idx];

                      return Container(
                        width: 70,
                        margin: EdgeInsets.all(8),
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
                                child: Image(image: AssetImage(data.image)),
                                padding: EdgeInsets.all(20),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text(data.name,
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontFamily: 'PoppinsRegular'),
                                textAlign: TextAlign.center
                                ),
                                padding: EdgeInsets.only(top: 10),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
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

  Widget flashSaleWidget() {
    return StreamBuilder(
      stream: Repository().getFlashSaleProduct().asStream(),
      builder: (context, AsyncSnapshot<List<ProductData>> snapshoot) {
        if (snapshoot.hasData) {
          return Container(
            height: 260,
            margin: EdgeInsets.only(top: 16),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 4),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text("Flash Sale",
                                style: TextStyle(
                                  color: ColorConfig.textColorBold1,
                                  fontSize: 14,
                                  fontFamily: 'PoppinsBold',))),
                        FlatButton(
                            onPressed: () => {gotoFlashSale()},
                            child: Text(S.of(context).seeMore,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'PoppinsBold',
                                    color: ColorConfig.bluePrimary)))
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 245,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    padding: EdgeInsets.only(left: 8, right: 8),
                    itemBuilder: (ctx, idx) {

                      var data = snapshoot.data[idx];

                      return Container(
                        width: 140,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border:
                            Border.all(color: ColorConfig.borderColor, width: 1),
                            borderRadius: BorderRadius.circular(8)),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => {gotoDetailProduct(data)},
                            child: Container(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 110,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image(
                                        image: AssetImage(
                                            data.image.thumbnail),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(data.name,
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: ColorConfig.textColorBold1,
                                          fontFamily: 'PoppinsBold',)),
                                    padding: EdgeInsets.only(top: 10),
                                  ),
                                  Container(
                                    child: Text(data.price.special,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: ColorConfig.bluePrimary,
                                          fontFamily: 'PoppinsBold',)),
                                    padding: EdgeInsets.only(top: 10),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(data.price.normal,
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontFamily: 'PoppinsRegular',
                                                decoration: TextDecoration.lineThrough)),
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
                          ),
                        ),
                      );
                    },
                  ),
                )
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

  Widget megaSaleWidget() {
    return StreamBuilder(
      stream: Repository().getMegaSaleProduct().asStream(),
      builder: (context, AsyncSnapshot<List<ProductData>> snapshoot) {
        if (snapshoot.hasData) {
          return Container(
            height: 260,
            margin: EdgeInsets.only(top: 16),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 4),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text("Mega Sale",
                                style: TextStyle(
                                  color: ColorConfig.textColorBold1,
                                  fontSize: 14,
                                  fontFamily: 'PoppinsBold',))),
                        FlatButton(
                            onPressed: () => {gotoFlashSale()},
                            child: Text(S.of(context).seeMore,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'PoppinsBold',
                                    color: ColorConfig.bluePrimary)))
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 245,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    padding: EdgeInsets.only(left: 8, right: 8),
                    itemBuilder: (ctx, idx) {

                      var data = snapshoot.data[idx];

                      return Container(
                        width: 140,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border:
                            Border.all(color: ColorConfig.borderColor, width: 1),
                            borderRadius: BorderRadius.circular(8)),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => {gotoDetailProduct(data)},
                            child: Container(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 110,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image(
                                        image: AssetImage(
                                            data.image.thumbnail),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(data.name,
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: ColorConfig.textColorBold1,
                                          fontFamily: 'PoppinsBold',)),
                                    padding: EdgeInsets.only(top: 10),
                                  ),
                                  Container(
                                    child: Text(data.price.special,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: ColorConfig.bluePrimary,
                                          fontFamily: 'PoppinsBold',)),
                                    padding: EdgeInsets.only(top: 10),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(data.price.normal,
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontFamily: 'PoppinsRegular',
                                                decoration: TextDecoration.lineThrough)),
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
                          ),
                        ),
                      );
                    },
                  ),
                )
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

  Widget recommendedProductWidget() {
    return Container(
      height: 206,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image(
              image: AssetImage("lib/asset/image/home/promotionDummy.png"),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              bottom: 60,
              left: 24,
              child: Container(
                width: 209,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Recommended",
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'PoppinsBold',
                      ),
                    ),
                    Text(
                      "Product",
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'PoppinsBold',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 32),
                      child: Text(
                        "We recommend the best for you",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'PoppinsRegular'),
                      ),
                    )
                  ],
                ),
              )),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => {print("recommended")},
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget productGridWidget() {
    return StreamBuilder(
      stream: Repository().getRecommendedProduct().asStream(),
      builder: (context, AsyncSnapshot<List<ProductData>> snapshoot) {
        if (snapshoot.hasData) {
          return Container(
            child: GridView.builder(
                shrinkWrap: true,
                primary: false,
                physics: new NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.65),
                itemCount: snapshoot.data.length,
                itemBuilder: (item, index) {
                  var data = snapshoot.data[index];

                  return Container(
                    height: 405,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorConfig.borderColor, width: 1),
                        borderRadius: BorderRadius.circular(8)),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => {gotoDetailProduct(data)},
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image(
                                      image: AssetImage(data.image.thumbnail),
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
                                      fontFamily: 'PoppinsBold',)),
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
                                      fontFamily: 'PoppinsBold',)),
                                padding: EdgeInsets.only(top: 10),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Text(data.price.normal,
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontFamily: 'Poppinsregular',
                                            decoration: TextDecoration.lineThrough)),
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
                      ),
                    ),
                  );
                }),
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    promoBanner(),
                    categoryWidget(),
                    flashSaleWidget(),
                    megaSaleWidget(),
                    recommendedProductWidget(),
                    productGridWidget()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
