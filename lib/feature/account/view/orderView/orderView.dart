import 'package:aressa_commerce/generated/l10n.dart';
import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderView extends StatefulWidget {

  @override
  _OrderViewState createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {

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
                      child: Text(S.of(context).order, style: TextStyle(
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
            height: 201,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorConfig.colorTransparent,
                border: Border.all(
                  color: ColorConfig.borderColor,
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("LQNSU346JK",
                style: TextStyle(
                  color: ColorConfig.colorBlack,
                  fontFamily: 'PoppinsBold',
                  fontSize: 14,
                )),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Text( S.of(context).orderAt +"August 1, 2017",
                  style: TextStyle(
                    color: ColorConfig.colorGrey,
                    fontSize: 12,
                    fontFamily: 'PoppinsRegular'
                  )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  height: 1,
                  color: ColorConfig.borderColor,
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(S.of(context).orderStatus,
                              style: TextStyle(
                                color: ColorConfig.colorGrey,
                                fontSize: 12,
                                fontFamily: 'PoppinsRegular'
                              )),
                              Container(
                                margin: EdgeInsets.only(top: 12),
                                child: Text(S.of(context).items,
                                style: TextStyle(
                                  color: ColorConfig.colorGrey,
                                  fontSize: 12,
                                  fontFamily: 'PoppinsRegular'
                                )),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 12),
                                child: Text(S.of(context).totalPrice,
                                style: TextStyle(
                                  color: ColorConfig.colorGrey,
                                  fontSize: 12,
                                  fontFamily: 'PoppinsRegular'
                                )),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(S.of(context).Shipping,
                                style: TextStyle(
                                    color: ColorConfig.colorBlack,
                                    fontSize: 12,
                                    fontFamily: 'PoppinsRegular'
                                )),
                            Container(
                              margin: EdgeInsets.only(top: 12),
                              child: Text("2 " + S.of(context).itemsPurchased,
                                  style: TextStyle(
                                      color: ColorConfig.colorBlack,
                                      fontSize: 12,
                                      fontFamily: 'PoppinsRegular'
                                  )),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 12),
                              child: Text("299.43",
                                  style: TextStyle(
                                      color: ColorConfig.bluePrimary,
                                      fontSize: 12,
                                      fontFamily: 'PoppinsBold'
                                  )),
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
            height: 201,
            margin: EdgeInsets.only(top: 16),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorConfig.colorTransparent,
                border: Border.all(
                  color: ColorConfig.borderColor,
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("SDG1345KJD",
                    style: TextStyle(
                      color: ColorConfig.colorBlack,
                      fontFamily: 'PoppinsBold',
                      fontSize: 14,
                    )),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Text( S.of(context).orderAt +"August 1, 2017",
                      style: TextStyle(
                          color: ColorConfig.colorGrey,
                          fontSize: 12,
                          fontFamily: 'PoppinsRegular'
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  height: 1,
                  color: ColorConfig.borderColor,
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(S.of(context).orderStatus,
                                  style: TextStyle(
                                      color: ColorConfig.colorGrey,
                                      fontSize: 12,
                                      fontFamily: 'PoppinsRegular'
                                  )),
                              Container(
                                margin: EdgeInsets.only(top: 12),
                                child: Text(S.of(context).items,
                                    style: TextStyle(
                                        color: ColorConfig.colorGrey,
                                        fontSize: 12,
                                        fontFamily: 'PoppinsRegular'
                                    )),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 12),
                                child: Text(S.of(context).totalPrice,
                                    style: TextStyle(
                                        color: ColorConfig.colorGrey,
                                        fontSize: 12,
                                        fontFamily: 'PoppinsRegular'
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(S.of(context).Shipping,
                                style: TextStyle(
                                    color: ColorConfig.colorBlack,
                                    fontSize: 12,
                                    fontFamily: 'PoppinsRegular'
                                )),
                            Container(
                              margin: EdgeInsets.only(top: 12),
                              child: Text("2 " + S.of(context).itemsPurchased,
                                  style: TextStyle(
                                      color: ColorConfig.colorBlack,
                                      fontSize: 12,
                                      fontFamily: 'PoppinsRegular'
                                  )),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 12),
                              child: Text("299.43",
                                  style: TextStyle(
                                      color: ColorConfig.bluePrimary,
                                      fontSize: 12,
                                      fontFamily: 'PoppinsBold'
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
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
                content()
              ],
            ),
          ),
        ));
  }
}
