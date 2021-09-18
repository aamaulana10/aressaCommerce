import 'package:aressa_commerce/feature/account/view/adddressView/addAddressView.dart';
import 'package:aressa_commerce/generated/l10n.dart';
import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressView extends StatefulWidget {

  @override
  _AddressViewState createState() => _AddressViewState();
}

class _AddressViewState extends State<AddressView> {

  void gotoAddAddress() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddAddressView()));
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
                      child: Text(S.of(context).address, style: TextStyle(
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
      margin: EdgeInsets.only(left: 16, top: 16, right: 16),
      child: Column(
        children: [
          Container(
            height: 240,
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorConfig.colorTransparent,
                border: Border.all(
                  color: ColorConfig.borderColor,
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("PrisceKilla",
                    style: TextStyle(
                        color: ColorConfig.colorBlack,
                        fontSize: 14,
                        fontFamily: 'PoppinsBold'
                    )),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Text("3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States",
                    maxLines: 3,
                    style: TextStyle(
                        color: ColorConfig.colorGrey,
                        fontSize: 12,
                        fontFamily: 'PoppinsRegular'
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Text("+99 234567890",
                    style: TextStyle(
                        color: ColorConfig.colorGrey,
                        fontSize: 12,
                        fontFamily: 'PoppinsRegular'
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      Container(
                        height: 57,
                        width: 77,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: ColorConfig.bluePrimary,
                        ),
                        child: Center(
                          child: Text(S.of(context).edit,
                            style: TextStyle(
                                color: ColorConfig.colorWhite,
                                fontSize: 14,
                                fontFamily: 'PoppinsBold'
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 24),
                        child: Icon(Icons.delete_outline,
                          size: 32,
                          color: ColorConfig.colorGrey,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 240,
            margin: EdgeInsets.only(top: 16),
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorConfig.colorTransparent,
                border: Border.all(
                  color: ColorConfig.borderColor,
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ahmad Khaidir",
                    style: TextStyle(
                        color: ColorConfig.colorBlack,
                        fontSize: 14,
                        fontFamily: 'PoppinsBold'
                    )),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Text("3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States",
                    maxLines: 3,
                    style: TextStyle(
                        color: ColorConfig.colorGrey,
                        fontSize: 12,
                        fontFamily: 'PoppinsRegular'
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Text("+99 234567890",
                    style: TextStyle(
                        color: ColorConfig.colorGrey,
                        fontSize: 12,
                        fontFamily: 'PoppinsRegular'
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      Container(
                        height: 57,
                        width: 77,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: ColorConfig.bluePrimary,
                        ),
                        child: Center(
                          child: Text(S.of(context).edit,
                            style: TextStyle(
                                color: ColorConfig.colorWhite,
                                fontSize: 14,
                                fontFamily: 'PoppinsBold'
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 24),
                        child: Icon(Icons.delete_outline,
                          size: 32,
                          color: ColorConfig.colorGrey,
                        ),
                      )
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
            onPressed: ()=> {this.gotoAddAddress()},
            child: Text(
              S.of(context).addAddress,
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
                      content()
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
