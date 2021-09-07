import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfferView extends StatefulWidget {

  @override
  _OfferViewState createState() => _OfferViewState();
}

class _OfferViewState extends State<OfferView> {

  Widget appBar() {
    return Container(
        height: 60,
        margin: EdgeInsets.only(top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 16, right: 16, top: 18),
                child: Text("Offer", style: TextStyle(
                          fontSize: 16,
                  color: Colors.black,
                  fontFamily: 'PoppinsBold',
                      )),
              ),
              ),

            Container(
              height: 1,
              color: Colors.grey,
            )
          ],
        )
    );
  }

  Widget content() {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 16),
            padding: EdgeInsets.only(left: 16, right: 16),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Use “MEGSL” Cupon For Get 90%off",
                    maxLines: 2,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'PoppinsBold',
                      ),
                    ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Stack(
              children: [
                Positioned(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image(
                        image: AssetImage("lib/asset/image/home/promotionDummy.png"),
                        height: 206,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    )),
                Positioned(
                  top: 32,
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
                            fontFamily: 'PoppinsBold',
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
                                      fontFamily: 'PoppinsBold',
                                    ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 8, right: 8),
                                  child: Text(":",
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
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                    child: Text("34",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        fontFamily: 'PoppinsBold',
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 8, right: 8),
                                  child: Text(":",
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
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                    child: Text("52",
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
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Stack(
              children: [
                Positioned(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image(
                        image: AssetImage("lib/asset/image/home/PromotionImage2.png"),
                        height: 206,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    )),
                Positioned(
                    top: 32,
                    left: 24,
                    child: Container(
                      width: 209,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("90% Off Super Mega Sale",
                            maxLines: 2,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              fontFamily: 'PoppinsBold',
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 32),
                            child: Text("Special birthday Lafyuu",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'PoppinsRegular'
                            ),
                            ),
                          )
                        ],
                      ),
                    )),
              ],
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              appBar(),
              content(),
            ],
          ),
        ),
      ),
    );
  }
}
