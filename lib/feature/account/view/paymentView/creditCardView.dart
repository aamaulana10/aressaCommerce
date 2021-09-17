import 'package:aressa_commerce/feature/account/view/paymentView/addCardView.dart';
import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreditCardView extends StatefulWidget {

  @override
  _CreditCardViewState createState() => _CreditCardViewState();
}

class _CreditCardViewState extends State<CreditCardView> {

  void gotoAddCardView() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddCardView()));
  }

  Widget appBar() {

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
                      child: Text("Credit Card And Debit", style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'PoppinsBold',
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
        )
    );
  }

  Widget content() {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Column(
        children: [
          Container(
            height: 190,
            padding: EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: ColorConfig.bluePrimary,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Credit Card",
                style: TextStyle(
                  color: ColorConfig.colorWhite,
                  fontSize: 24,
                  fontFamily: 'PoppinsBold'
                )),
                Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Row(
                    children: [
                      Text("6326 9124 8124 9875",
                          style: TextStyle(
                              color: ColorConfig.colorWhite,
                              fontSize: 24,
                              fontFamily: 'PoppinsBold'
                          ))
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("CARD HOLDER",
                            style: TextStyle(
                              color: ColorConfig.colorWhite,
                              fontSize: 10,
                              fontFamily: 'PoppinsRegular'
                            )),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text("Laylifa Febrina",
                              style: TextStyle(
                                color: ColorConfig.colorWhite,
                                fontSize: 10,
                                fontFamily: 'PoppinsBold'
                              ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16, left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("CARD SAVE",
                                style: TextStyle(
                                    color: ColorConfig.colorWhite,
                                    fontSize: 10,
                                    fontFamily: 'PoppinsRegular'
                                )),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text("19/2042",
                                style: TextStyle(
                                    color: ColorConfig.colorWhite,
                                    fontSize: 10,
                                    fontFamily: 'PoppinsBold'
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 190,
            margin: EdgeInsets.only(top: 16),
            padding: EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: ColorConfig.purplePrimary,
                borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Credit Card",
                    style: TextStyle(
                        color: ColorConfig.colorWhite,
                        fontSize: 24,
                        fontFamily: 'PoppinsBold'
                    )),
                Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Row(
                    children: [
                      Text("6326 9124 8124 9875",
                          style: TextStyle(
                              color: ColorConfig.colorWhite,
                              fontSize: 24,
                              fontFamily: 'PoppinsBold'
                          ))
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("CARD HOLDER",
                                style: TextStyle(
                                    color: ColorConfig.colorWhite,
                                    fontSize: 10,
                                    fontFamily: 'PoppinsRegular'
                                )),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text("Laylifa Febrina",
                                style: TextStyle(
                                    color: ColorConfig.colorWhite,
                                    fontSize: 10,
                                    fontFamily: 'PoppinsBold'
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16, left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("CARD SAVE",
                                style: TextStyle(
                                    color: ColorConfig.colorWhite,
                                    fontSize: 10,
                                    fontFamily: 'PoppinsRegular'
                                )),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text("19/2042",
                                style: TextStyle(
                                    color: ColorConfig.colorWhite,
                                    fontSize: 10,
                                    fontFamily: 'PoppinsBold'
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget addAddressButton() {
    return Container(
      child: Material(
        color: Colors.transparent,
        shadowColor: ColorConfig.bluePrimary,
        elevation: 8,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: ColorConfig.bluePrimary,
              borderRadius: BorderRadius.circular(5)),
          child: FlatButton(
            height: 57,
            minWidth: MediaQuery.of(context).size.width,
            onPressed: ()=> {this.gotoAddCardView()},
            child: Text(
              "Add Address",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontFamily: 'PoppinsBold',
              ),
            ),
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
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  bottom: 80,
                  child: Column(
                    children: [
                      appBar(),
                      content()
                    ],
                  ),
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  right: 16,
                  child: addAddressButton(),
                )
              ],
            )
        ));
  }
}
