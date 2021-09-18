import 'package:aressa_commerce/core/data/repository.dart';
import 'package:aressa_commerce/core/domain/model/productModel.dart';
import 'package:aressa_commerce/feature/detailProduct/view/detailProductView.dart';
import 'package:aressa_commerce/generated/l10n.dart';
import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MegaSaleView extends StatefulWidget {
  const MegaSaleView({Key key}) : super(key: key);

  @override
  _MegaSaleViewState createState() => _MegaSaleViewState();
}

class _MegaSaleViewState extends State<MegaSaleView> {

  gotoDetailProduct(ProductData productData) {
    Future.delayed(Duration(milliseconds: 500), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => DetailProductView(
        productData: productData,
      )));
    });
  }

  Widget header() {

    return Container(
        height: 80,
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(right: 16),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => {Navigator.of(context).pop()},
                      icon: Icon(Icons.chevron_left),
                      iconSize: 32,
                    ),
                    Expanded(
                      child: Text(S.of(context).megaSale, style: TextStyle(
                          fontSize: 16,
                        fontFamily: 'PoppinsBold',
                      )),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                          child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () => {print("whishlist")},
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Image(
                                  image: AssetImage("lib/asset/image/home/Search.png"),
                                ),
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 1,
              color: ColorConfig.borderColor,
            )
          ],
        )
    );
  }

  Widget highlightProduct() {

    return Container(
      height: 210,
      margin: EdgeInsets.only(left: 16, right: 16),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image(
              image: AssetImage(
                  "lib/asset/image/banner/bannerSuperPromo.png"),
              fit: BoxFit.fill,
            ),
          ),
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
  }

  Widget listProduct() {

    return StreamBuilder(
      stream: Repository().getMegaSaleProduct().asStream(),
      builder: (context, AsyncSnapshot<List<ProductData>> snapshoot) {
        if (snapshoot.hasData) {
          return Container(
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.65),
                itemCount: snapshoot.data.length,
                itemBuilder: (item, index) {

                  var data = snapshoot.data[index];
                  return Container(
                    height: 400,
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image(
                                      image:
                                      AssetImage(data.image.thumbnail),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
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
                                alignment: Alignment.centerLeft,
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
                                alignment: Alignment.centerLeft,
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
            highlightProduct(),
            Expanded(child: listProduct())
          ],
        ),
      ),
    );
  }
}
