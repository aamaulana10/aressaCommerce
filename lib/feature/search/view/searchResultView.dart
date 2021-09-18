import 'package:aressa_commerce/core/data/repository.dart';
import 'package:aressa_commerce/core/domain/model/productModel.dart';
import 'package:aressa_commerce/feature/category/view/allCategoryView.dart';
import 'package:aressa_commerce/feature/detailProduct/view/detailProductView.dart';
import 'package:aressa_commerce/feature/mainTabbar.dart';
import 'package:aressa_commerce/generated/l10n.dart';
import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SearchResultView extends StatefulWidget {

  String searchData;
  String category;

  SearchResultView({this.searchData, this.category});

  @override
  _SearchResultViewState createState() => _SearchResultViewState();
}

class _SearchResultViewState extends State<SearchResultView> {

  var searchData = "";
  var currentCategory = "All";
  bool isSearch = false;
  bool isShowList = false;
  TextEditingController searchCtrl = new TextEditingController();

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
        .push(MaterialPageRoute(builder: (ctx) => AllCategoryView(isFromSearch: true)));

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
        .pushReplacement(MaterialPageRoute(builder: (ctx) => MainTabbar()));
  }

  @override
  void initState() {
    super.initState();

    if(widget.searchData != "") {

      searchCtrl.text = widget.searchData;

      setState(() {
        searchData = widget.searchData;
      });
    } else {

      setState(() {
        searchData = "";
      });
    }

    if(widget.category != null) {

      setState(() {
        currentCategory = widget.category;
      });
    } else {

      setState(() {
        currentCategory = "All";
      });
    }

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
                controller: searchCtrl,
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
          )
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
                  child: StreamBuilder(
                    stream: Repository().getAllProduct().asStream(),
                    builder: (context, AsyncSnapshot<List<ProductData>> snapshoot) {
                      if (snapshoot.hasData) {

                        var data = snapshoot.data;

                      if(searchCtrl.text != ""){

                        print("ke sini ga yaa");

                        data = snapshoot.data
                            .where((element) =>
                            element.name
                                .toLowerCase()
                                .contains(searchData.toLowerCase()))
                            .toList();
                      }

                        else if(widget.category != null) {

                          data = snapshoot.data
                              .where((element) =>
                              element.category == widget.category)
                              .toList();
                        }
                        else {

                          print(" apa kesiniiii");

                          data = snapshoot.data;

                        }

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
                                          data.length.toString() + " Result",
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
                                child: data.length == 0
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

                                      // Container(
                                      //   margin: EdgeInsets.only(top: 16),
                                      //   width: 300,
                                      //   decoration: BoxDecoration(
                                      //       color: ColorConfig.bluePrimary,
                                      //       borderRadius: BorderRadius.circular(5)
                                      //   ),
                                      //   child: FlatButton(
                                      //       onPressed: () => {backToHome()},
                                      //       child: Text("Back to Home", style: TextStyle(
                                      //           color: Colors.white,
                                      //           fontFamily: "PoppinsBold",
                                      //           fontSize: 14
                                      //       ))
                                      //   ),
                                      // )
                                    ],
                                  ),
                                )
                                    : GridView.builder(
                                    shrinkWrap: true,
                                    padding: EdgeInsets.all(0),
                                    gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2, childAspectRatio: 0.65),
                                    itemCount: data.length,
                                    itemBuilder: (item, index) {
                                      var item = data[index];

                                      return Container(
                                        height: 400,
                                        margin: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: ColorConfig.borderColor, width: 1),
                                            borderRadius: BorderRadius.circular(8)),
                                        child: Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            onTap: () => {gotoDetailProduct(item)},
                                            child: Container(
                                              padding: EdgeInsets.all(8),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      child: ClipRRect(
                                                        borderRadius: BorderRadius.circular(5),
                                                        child: Image(
                                                          image:
                                                          AssetImage(item.image.thumbnail),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    alignment: Alignment.centerLeft,
                                                    child: Text(item.name,
                                                        maxLines: 2,
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: ColorConfig.textColorBold1,
                                                          fontFamily: 'PoppinsBold',
                                                        )),
                                                    padding: EdgeInsets.only(top: 10),
                                                  ),
                                                  Container(
                                                    alignment: Alignment.centerLeft,
                                                    child: RatingBarIndicator(
                                                      rating: item.rate,
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
                                                    alignment: Alignment.centerLeft,
                                                    margin: EdgeInsets.only(top: 8),
                                                    child: Text(item.price.special,
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
                                                        Text(item.price.normal,
                                                            style: TextStyle(
                                                                fontSize: 10,
                                                                fontFamily: 'Poppinsregular',
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
                  ),
                ),
              ],
            )
        ),
    );
  }
}
