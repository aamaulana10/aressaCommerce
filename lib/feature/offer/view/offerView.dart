import 'package:aressa_commerce/generated/l10n.dart';
import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfferView extends StatefulWidget {

  @override
  _OfferViewState createState() => _OfferViewState();
}

class _OfferViewState extends State<OfferView> {

  Widget appBar() {

    return Container(
        height: 70,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(right: 16, left: 16, top: 20),
                child: Text("Offer",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'PoppinsBold',
                    )),
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
              color: ColorConfig.bluePrimary,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Use “MEGSL” Cupon For Get 90%off",
                    maxLines: 2,
                      style: TextStyle(
                        color: ColorConfig.colorWhite,
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
                            color: ColorConfig.colorWhite,
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
                                    color: ColorConfig.colorWhite,
                                    borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                    child: Text("08",
                                    style: TextStyle(
                                      color: ColorConfig.colorBlack,
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
                                    color: ColorConfig.colorWhite,
                                    fontFamily: 'PoppinsBold',
                                    fontSize: 14,
                                  ),
                                  ),
                                ),
                                Container(
                                  height: 41,
                                  width: 42,
                                  decoration: BoxDecoration(
                                      color: ColorConfig.colorWhite,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                    child: Text("34",
                                      style: TextStyle(
                                          color: ColorConfig.colorBlack,
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
                                      color: ColorConfig.colorWhite,
                                      fontFamily: 'PoppinsBold',
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 41,
                                  width: 42,
                                  decoration: BoxDecoration(
                                      color: ColorConfig.colorWhite,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                    child: Text("52",
                                      style: TextStyle(
                                          color: ColorConfig.colorBlack,
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
                                color: ColorConfig.colorWhite,
                                fontSize: 24,
                              fontFamily: 'PoppinsBold',
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 32),
                            child: Text("Special birthday Lafyuu",
                            style: TextStyle(
                              color: ColorConfig.colorWhite,
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
        padding: EdgeInsets.only(top: 32),
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
