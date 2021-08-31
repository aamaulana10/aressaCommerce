import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:aressa_commerce/util/view/indicatorView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  Widget header() {

    return Container(
      height: 50,
      margin: EdgeInsets.only(left: 16, right: 16),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: ColorConfig.borderColor, width: 1),
                borderRadius: BorderRadius.circular(8)
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Search Product",
                  labelStyle: TextStyle(
                    color: ColorConfig.textColor1,
                    fontSize: 12
                  ),
                  prefixIcon: Icon(Icons.search, color: ColorConfig.bluePrimary,),
                  border: InputBorder.none
                ),
              ),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
            ),
            child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () => { print("whishlist") },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Image(
                    image: AssetImage("lib/asset/image/home/love.png"),
                  ),
                )
            ),

          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
            ),
            child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () => { print("whishlist") },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Image(
                    image: AssetImage("lib/asset/image/home/notification.png"),
                  ),
                )
            ),

          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
            ),
            child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () => { print("whishlist") },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Image(
                    image: AssetImage("lib/asset/image/home/love.png"),
                  ),
                )
            ),

          ),
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
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Image(
                    image: AssetImage("lib/asset/image/home/promotionDummy.png"),
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
                  itemBuilder: (ctx, idx){
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

    return Container(
      height: 140,
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20,right: 4),
              child: Row(
                children: [
                  Expanded(child: Text("Category", style: TextStyle(
                    color: ColorConfig.textColorBold1,
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ))),
                  FlatButton(
                      onPressed: () => {print("see all")},
                      child: Text("More Category", style: TextStyle(
                       fontSize: 14,
                       fontWeight: FontWeight.bold,
                       color: ColorConfig.bluePrimary
                      )))
                ],
              ),
            ),
          ),
        Container(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                padding: EdgeInsets.only(left: 8, right: 8),
                itemBuilder: (ctx, idx){
                  return Container(
                    width: 70,
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: ColorConfig.borderColor, width: 1),
                              shape: BoxShape.circle
                            ),
                            height: 70,
                            width: 70,
                          child: Padding(
                            child: Image(
                              image: AssetImage("lib/asset/image/home/shirt.png")
                            ),
                            padding: EdgeInsets.all(20),
                          ),

                        ),
                        Expanded(
                          child: Container(
                            child: Text("Man Shirt", style: TextStyle(
                              fontSize: 10,
                            )),
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
  }

  Widget flashSaleWidget() {

    return Container(
      height: 260,
      margin: EdgeInsets.only(top: 16),
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20,right: 4),
              child: Row(
                children: [
                  Expanded(child: Text("Flash Sale", style: TextStyle(
                      color: ColorConfig.textColorBold1,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                  ))),
                  FlatButton(
                      onPressed: () => {print("see all")},
                      child: Text("See More", style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: ColorConfig.bluePrimary
                      )))
                ],
              ),
            ),
          ),
    Container(
              height: 240,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                padding: EdgeInsets.only(left: 8, right: 8),
                itemBuilder: (ctx, idx){
                  return Container(
                    width: 140,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorConfig.borderColor, width: 1),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 110,
                          child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                            child: Image(
                              image: AssetImage("lib/asset/image/home/promotionDummy.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                         Container(
                            child: Text("FS - Nike Air Max 270 React", maxLines: 2, style: TextStyle(
                              fontSize: 12,
                              color: ColorConfig.textColorBold1,
                              fontWeight: FontWeight.bold
                            )),
                            padding: EdgeInsets.only(top: 10),
                          ),
                        Container(
                          child: Text("288,43", style: TextStyle(
                              fontSize: 12,
                              color: ColorConfig.bluePrimary,
                              fontWeight: FontWeight.bold
                          )),
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text("534,33", style: TextStyle(
                                fontSize: 10,
                                decoration: TextDecoration.lineThrough
                              )),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text("24% off", style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0XFFFB7181)
                                )),
                              ),
                            ],
                          ),
                          padding: EdgeInsets.only(top: 10),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
        ],
      ),
    );
  }

  Widget megaSaleWidget() {

    return Container(
      margin: EdgeInsets.only(top: 16),
      height: 260,
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20,right: 4),
              child: Row(
                children: [
                  Expanded(child: Text("Mega Sale", style: TextStyle(
                      color: ColorConfig.textColorBold1,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                  ))),
                  FlatButton(
                      onPressed: () => {print("see all")},
                      child: Text("See More", style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: ColorConfig.bluePrimary
                      )))
                ],
              ),
            ),
          ),
         Container(
           height: 240,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                padding: EdgeInsets.only(left: 8, right: 8),
                itemBuilder: (ctx, idx){
                  return Container(
                    width: 140,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorConfig.borderColor, width: 1),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 110,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image(
                              image: AssetImage("lib/asset/image/home/promotionDummy.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          child: Text("FS - Nike Air Max 270 React", maxLines: 2, style: TextStyle(
                              fontSize: 12,
                              color: ColorConfig.textColorBold1,
                              fontWeight: FontWeight.bold
                          )),
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Container(
                          child: Text("288,43", style: TextStyle(
                              fontSize: 12,
                              color: ColorConfig.bluePrimary,
                              fontWeight: FontWeight.bold
                          )),
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text("534,33", style: TextStyle(
                                  fontSize: 10,
                                  decoration: TextDecoration.lineThrough
                              )),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text("24% off", style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0XFFFB7181)
                                )),
                              ),
                            ],
                          ),
                          padding: EdgeInsets.only(top: 10),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }

  Widget recommendedProductWidget() {

    return Container(
      height: 206,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image(
          image: AssetImage("lib/asset/image/home/promotionDummy.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget productGridWidget() {

    return Container(
      child: GridView.builder(
          shrinkWrap: true,
          primary: false,
          physics: new NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.65
          ),
          itemCount: 4,
          itemBuilder: (item, index) {
            return Container(
              height: 400,
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: ColorConfig.borderColor, width: 1),
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image(
                          image: AssetImage("lib/asset/image/home/promotionDummy.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Text("FS - Nike Air Max 270 React", maxLines: 2, style: TextStyle(
                        fontSize: 12,
                        color: ColorConfig.textColorBold1,
                        fontWeight: FontWeight.bold
                    )),
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
                    child: Text("288,43", style: TextStyle(
                        fontSize: 12,
                        color: ColorConfig.bluePrimary,
                        fontWeight: FontWeight.bold
                    )),
                    padding: EdgeInsets.only(top: 10),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text("534,33", style: TextStyle(
                            fontSize: 10,
                            decoration: TextDecoration.lineThrough
                        )),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text("24% off", style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color(0XFFFB7181)
                          )),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.only(top: 10),
                  ),
                ],
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              header(),
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
    );
  }
}
