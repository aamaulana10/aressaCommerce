import 'package:aressa_commerce/feature/account/view/paymentView/paymentView.dart';
import 'package:aressa_commerce/feature/mainTabbar.dart';
import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddCardView extends StatefulWidget {

  @override
  _AddCardViewState createState() => _AddCardViewState();
}

class _AddCardViewState extends State<AddCardView> {

  String cardNumber = "";
  String expDate = "";
  String securityCode = "";
  String cardHolder = "";

  void gotoHome() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainTabbar()));
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
                      child: Text("Add Card", style: TextStyle(
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                      Text(cardNumber,
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
                              child: Text(cardHolder,
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
                              child: Text(expDate,
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
            margin: EdgeInsets.only(top: 16),
            child: Text("Card Number",
            style: TextStyle(
              color: ColorConfig.colorBlack,
              fontSize: 14,
              fontFamily: 'PoppinsBold'
            )),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.only(left: 8),
            margin: EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorConfig.colorTransparent,
                border: Border.all(
                  color: ColorConfig.borderColor,
                )
            ),
            child: TextFormField(
              onChanged: (e) {
                setState(() {
                  cardNumber = e;
                });
              },
              decoration: InputDecoration(
                  labelText: "Input Card Number",
                  labelStyle: TextStyle(
                      fontSize: 14,
                      color: ColorConfig.colorGrey,
                      fontFamily: 'Poppinsregular'
                  ),
                  border: InputBorder.none),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text("Expiration Date",
                            style: TextStyle(
                                color: ColorConfig.colorBlack,
                                fontSize: 14,
                                fontFamily: 'PoppinsBold'
                            )),
                      ),
                      Container(
                        width: 165,
                        height: 48,
                        padding: EdgeInsets.only(left: 8),
                        margin: EdgeInsets.only(top: 16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: ColorConfig.colorTransparent,
                            border: Border.all(
                              color: ColorConfig.borderColor,
                            )
                        ),
                        child: TextFormField(
                          onChanged: (e) {
                            setState(() {
                              expDate = e;
                            });
                          },
                          decoration: InputDecoration(
                              labelText: "Input Expiration Date",
                              labelStyle: TextStyle(
                                  fontSize: 14,
                                  color: ColorConfig.colorGrey,
                                  fontFamily: 'Poppinsregular'
                              ),
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text("Security Code",
                              style: TextStyle(
                                  color: ColorConfig.colorBlack,
                                  fontSize: 14,
                                  fontFamily: 'PoppinsBold'
                              )),
                        ),
                        Container(
                          height: 48,
                          width: 165,
                          padding: EdgeInsets.only(left: 8),
                          margin: EdgeInsets.only(top: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: ColorConfig.colorTransparent,
                              border: Border.all(
                                color: ColorConfig.borderColor,
                              )
                          ),
                          child: TextFormField(
                            onChanged: (e) {
                              setState(() {
                                securityCode = e;
                              });
                            },
                            decoration: InputDecoration(
                                labelText: "Input Code",
                                labelStyle: TextStyle(
                                    fontSize: 14,
                                    color: ColorConfig.colorGrey,
                                    fontFamily: 'Poppinsregular'
                                ),
                                border: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Text("Card Holder",
                style: TextStyle(
                    color: ColorConfig.colorBlack,
                    fontSize: 14,
                    fontFamily: 'PoppinsBold'
                )),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.only(left: 8),
            margin: EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorConfig.colorTransparent,
                border: Border.all(
                  color: ColorConfig.borderColor,
                )
            ),
            child: TextFormField(
              onChanged: (e) {
                setState(() {
                  cardHolder = e;
                });
              },
              decoration: InputDecoration(
                  labelText: "Input Card Holder",
                  labelStyle: TextStyle(
                      fontSize: 14,
                      color: ColorConfig.colorGrey,
                      fontFamily: 'Poppinsregular'
                  ),
                  border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }

  Widget addAddressButton() {
    return Container(
      margin: EdgeInsets.all(16),
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
            onPressed: ()=> {this.gotoHome()},
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
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      appBar(),
                      content(),
                    ],
                  ),
                ),
              ),
              addAddressButton()
            ],
          ),
        ));
  }
}
