import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:aressa_commerce/util/view/indicatorView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailProductView extends StatefulWidget {
  const DetailProductView({Key key}) : super(key: key);

  @override
  _DetailProductViewState createState() => _DetailProductViewState();
}

class _DetailProductViewState extends State<DetailProductView> {

  gotoDetailProduct() {
    Future.delayed(Duration(milliseconds: 500), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => DetailProductView()));
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
                      child: Text("Nike air Max 270", style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
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
                                  image: AssetImage("lib/asset/image/home/more.png"),
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

  Widget bannerProduct() {

    return Container(
      height: 280,
      margin: EdgeInsets.only(top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: 3,
              itemBuilder: (ctx, idx) {
                return Container(
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      ClipRRect(
                        child: Image(
                          image: AssetImage(
                              "lib/asset/image/home/promotionDummy.png"),
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
                  width: 8,
                  height: 8,
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget detailProductWidget() {

    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text("Nike Air Zoom Pegasus 36 Miami", style: TextStyle(
                 fontSize: 20, fontWeight: FontWeight.bold, color: ColorConfig.textColorBold1
                )),
              ),
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
                        image: AssetImage("lib/asset/image/home/love.png"),
                      ),
                    )),
              ),
            ],
          ),
          Container(
            child: RatingBarIndicator(
              itemPadding: EdgeInsets.only(left: 0),
              rating: 3,
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
            child: Text("288,43",
                style: TextStyle(
                    fontSize: 20,
                    color: ColorConfig.bluePrimary,
                    fontWeight: FontWeight.bold)),
            padding: EdgeInsets.only(top: 10),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text("Specification",
                style: TextStyle(
                    fontSize: 14,
                    color: ColorConfig.textColorBold1,
                    fontWeight: FontWeight.bold)),
            padding: EdgeInsets.only(top: 10),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Row(
              children: [
                Text("Category",
                    style: TextStyle(
                        fontSize: 12,
                        color: ColorConfig.textColorBold1,)),
                Expanded(
                  child: Text("Man Shoes",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 12,
                          color: ColorConfig.textColor1),
                ),
                )
              ],
            ),
            padding: EdgeInsets.only(top: 10),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text("The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.",
                style: TextStyle(
                    fontSize: 12,
                    color: ColorConfig.textColor1)),
            padding: EdgeInsets.only(top: 10),
          ),
          reviewWidget()
        ],
      ),
    );
  }

  Widget reviewWidget() {

    return Container(
        margin: EdgeInsets.only(top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                children: [
                    Expanded(child: Text("Review Product", style: TextStyle(
                        fontSize: 14,
                        color: ColorConfig.textColorBold1,
                        fontWeight: FontWeight.bold))),
                    TextButton(onPressed: () => {print("see all")}, child: Text("Lihat semua"))
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  RatingBarIndicator(
                    itemPadding: EdgeInsets.only(top: 0),
                    rating: 3,
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 24.0,
                    unratedColor: ColorConfig.borderColor,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 8, right: 4),
                      child: Text("4.5", style: TextStyle(
                       fontSize: 10,
                       color: ColorConfig.textColor1,
                       fontWeight: FontWeight.bold
                      ))),
                  Text("(5 Reviews)", style: TextStyle(
                      fontSize: 10,
                      color: ColorConfig.textColor1,
                  ),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image(
                      height: 48,
                      width: 48,
                      image: AssetImage("lib/asset/image/home/promotionDummy.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text("James Lawsoon", style: TextStyle(
                          fontSize: 14,
                          color: ColorConfig.textColorBold1,
                          fontWeight: FontWeight.bold)),
                          padding: EdgeInsets.only(left: 6, bottom: 4),
                        ),
                        RatingBarIndicator(
                          rating: 3,
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 24.0,
                          unratedColor: ColorConfig.borderColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Text("air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
                style: TextStyle(
                  fontSize: 12,
                  color: ColorConfig.textColor1
                ),)),
            Container(
              height: 80,
              child: ListView.builder(
                itemCount: 3,
                padding: EdgeInsets.only(left: 0),
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, idx){
                  return Container(
                    margin: EdgeInsets.only(right: 8, top: 8, bottom: 8),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                      child: Image(
                          width: 80,
                        image: AssetImage("lib/asset/image/home/promotionDummy.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 8, top: 8),
              child: Text("December 10, 2016", style: TextStyle(
                  fontSize: 12,
                  color: ColorConfig.textColor1
              )),
            )
          ],
        ),
    );
  }

  Widget recommendedProduct() {

    return Container(
      height: 260,
      margin: EdgeInsets.only(top: 16, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
              child: Text("You Might Also Like", style: TextStyle(
                  fontSize: 14,
                  color: ColorConfig.textColorBold1,
                  fontWeight: FontWeight.bold)),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 8),
                itemBuilder: (ctx, idx){
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
                        onTap: () => {gotoDetailProduct()},
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
                                        "lib/asset/image/home/promotionDummy.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text("FS - Nike Air Max 270 React",
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: ColorConfig.textColorBold1,
                                        fontWeight: FontWeight.bold)),
                                padding: EdgeInsets.only(top: 10),
                              ),
                              Container(
                                child: Text("288,43",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: ColorConfig.bluePrimary,
                                        fontWeight: FontWeight.bold)),
                                padding: EdgeInsets.only(top: 10),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Text("534,33",
                                        style: TextStyle(
                                            fontSize: 10,
                                            decoration: TextDecoration.lineThrough)),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8),
                                      child: Text("24% off",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
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
  }

  Widget addToCartButton() {

    return Container(

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
                    bannerProduct(),
                    detailProductWidget(),
                    recommendedProduct(),

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
