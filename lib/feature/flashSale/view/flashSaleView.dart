import 'package:aressa_commerce/feature/detailProduct/view/detailProductView.dart';
import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FlashSaleView extends StatefulWidget {
  const FlashSaleView({Key key}) : super(key: key);

  @override
  _FlashSaleViewState createState() => _FlashSaleViewState();
}

class _FlashSaleViewState extends State<FlashSaleView> {

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
                      child: Text("Super Flash Sale", style: TextStyle(
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
                    Text("Super Flash Sale 50% Off",
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),
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
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Center(
                              child: Text("08",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8, right: 8),
                            child: Text(":",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Container(
                            height: 41,
                            width: 42,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Center(
                              child: Text("34",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8, right: 8),
                            child: Text(":",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Container(
                            height: 41,
                            width: 42,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Center(
                              child: Text("52",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
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
                onTap: () => {gotoDetailProduct()},
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget listProduct() {

    return Container(
      child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.65),
          itemCount: 20,
          itemBuilder: (item, index) {
            return Container(
              height: 400,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: ColorConfig.borderColor, width: 1),
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
                        Expanded(
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image(
                                image: AssetImage(
                                    "lib/asset/image/home/promotionDummy.png"),
                                fit: BoxFit.fill,
                              ),
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
                          child: RatingBarIndicator(
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
          }),
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
