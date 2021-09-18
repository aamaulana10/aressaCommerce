import 'package:aressa_commerce/feature/review/view/writeReview.dart';
import 'package:aressa_commerce/generated/l10n.dart';
import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({Key key}) : super(key: key);

  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {

  void gotoWriteReview() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => WriteReview()));
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
                      child: Text("5 " + S.of(context).review, style: TextStyle(
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

  Widget filterList() {

    return Container(
      height: 50,
      margin: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 16),
            child: Material(
              child: InkWell(
                onTap: () => {print("show all review")},
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: ColorConfig.bluePrimary.withOpacity(.4),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  height: 50,
                  width: 100,
                  child: Text(S.of(context).allReview, style: TextStyle(
                    color: ColorConfig.bluePrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 12
                  ),),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 8),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (ctx, idx){

                  return Container(
                    margin: EdgeInsets.only(left: 8, right: 8),
                    child: Material(
                      child: InkWell(
                        onTap: () => {print("show all review")},
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: ColorConfig.borderColor, width: 1),
                          ),
                          height: 50,
                          width: 65,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, color: Colors.yellow, size: 16,),
                              Container(
                                padding: EdgeInsets.only(left: 8),
                                child: Text((idx + 1).toString(), style: TextStyle(
                                    color: ColorConfig.textColor1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                ),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget reviewList() {

    return Container(
      height: 500,
      margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
      child: ListView(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Image(
                          height: 48,
                          width: 48,
                          image: AssetImage("lib/asset/image/home/james.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("James Lawson", style: TextStyle(
                                  fontSize: 14,
                                  color: ColorConfig.textColorBold1,
                                  fontWeight: FontWeight.bold)),
                              padding: EdgeInsets.only(left: 6, bottom: 4),
                            ),
                            RatingBarIndicator(
                              rating: 5,
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
                  child: ListView(
                    padding: EdgeInsets.only(left: 0),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 8, top: 8, bottom: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image(
                            width: 80,
                            image: AssetImage("lib/asset/image/home/sepatuKuning01.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8, top: 8, bottom: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image(
                            width: 80,
                            image: AssetImage("lib/asset/image/home/sepatuKuning02.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8, top: 8, bottom: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image(
                            width: 80,
                            image: AssetImage("lib/asset/image/home/sepatuKuning03.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
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
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Image(
                          height: 48,
                          width: 48,
                          image: AssetImage("lib/asset/image/home/laura.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Laura Oktavian", style: TextStyle(
                                  fontSize: 14,
                                  color: ColorConfig.textColorBold1,
                                  fontWeight: FontWeight.bold)),
                              padding: EdgeInsets.only(left: 6, bottom: 4),
                            ),
                            RatingBarIndicator(
                              rating: 4,
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
                    child: Text("This is really amazing product, i like the design of product, I hope can buy it again!",
                      style: TextStyle(
                          fontSize: 12,
                          color: ColorConfig.textColor1
                      ),)),
                Container(
                  margin: EdgeInsets.only(bottom: 8, top: 8),
                  child: Text("December 10, 2016", style: TextStyle(
                      fontSize: 12,
                      color: ColorConfig.textColor1
                  )),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Image(
                          height: 48,
                          width: 48,
                          image: AssetImage("lib/asset/image/home/jhonson.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Jhonson Bridge", style: TextStyle(
                                  fontSize: 14,
                                  color: ColorConfig.textColorBold1,
                                  fontWeight: FontWeight.bold)),
                              padding: EdgeInsets.only(left: 6, bottom: 4),
                            ),
                            RatingBarIndicator(
                              rating: 5,
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
                    child: Text("air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit",
                      style: TextStyle(
                          fontSize: 12,
                          color: ColorConfig.textColor1
                      ),)),
                Container(
                  margin: EdgeInsets.only(bottom: 8, top: 8),
                  child: Text("December 10, 2016", style: TextStyle(
                      fontSize: 12,
                      color: ColorConfig.textColor1
                  )),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Image(
                          height: 48,
                          width: 48,
                          image: AssetImage("lib/asset/image/home/griffin.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Griffin Rod", style: TextStyle(
                                  fontSize: 14,
                                  color: ColorConfig.textColorBold1,
                                  fontWeight: FontWeight.bold)),
                              padding: EdgeInsets.only(left: 6, bottom: 4),
                            ),
                            RatingBarIndicator(
                              rating: 5,
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
                    child: Text("air max are always very comfortable fit, clean and just perfect in every way. just the box was too small",
                      style: TextStyle(
                          fontSize: 12,
                          color: ColorConfig.textColor1
                      ),)),
                Container(
                  height: 80,
                  child: ListView(
                    padding: EdgeInsets.only(left: 0),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 8, top: 8, bottom: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image(
                            width: 80,
                            image: AssetImage("lib/asset/image/home/sepatuKuning01.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8, top: 8, bottom: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image(
                            width: 80,
                            image: AssetImage("lib/asset/image/home/sepatuKuning02.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
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
          )
        ],
      ),
    );
  }

  Widget saveButton() {
    return Container(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => {this.gotoWriteReview()},
          child: Container(
            margin: EdgeInsets.all(16),
            alignment: Alignment.center,
            height: 57,
            decoration: BoxDecoration(
                color: Color(0xFF41BFFF),
                borderRadius: BorderRadius.circular(5)
            ),
            child: Text(S.of(context).writeReview, style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontFamily: 'PoppinsBold',
            ),),
          ),
        ),
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    header(),
                    filterList(),
                    reviewList()
                  ],
                ),
              ),
            ),
            saveButton()
          ],
        ),
      ),
    );
  }
}
