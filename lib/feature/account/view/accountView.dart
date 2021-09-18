import 'package:aressa_commerce/feature/account/view/adddressView/addressView.dart';
import 'package:aressa_commerce/feature/account/view/orderView/orderView.dart';
import 'package:aressa_commerce/feature/account/view/paymentView/paymentView.dart';
import 'package:aressa_commerce/feature/account/view/profileView/profileView.dart';
import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountView extends StatefulWidget {

  @override
  _AccountViewState createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {

  void gotoProfileView() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileView()));
  }

  void gotoAddressView() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddressView()));
  }

  void gotoPaymentView() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentView()));
  }

  void gotoOrderView() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderView()));
  }

  Widget appBar() {

    return Container(
        height: 70,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(right: 16, left: 16, top: 20),
                child: Text("Account",
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
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.only(left: 16, right: 16),
      child: ListView(
        padding: EdgeInsets.only(top: 0),
        children: [
          Container(
            height: 70,
            child: InkWell(
              onTap: () => {this.gotoProfileView()},
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.person_outline,
                      color: ColorConfig.bluePrimary,
                    size: 26,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      child: Text("Profile",
                      style: TextStyle(
                        color: ColorConfig.colorBlack,
                        fontSize: 14,
                        fontFamily: 'PoppinsBold',
                      ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 70,
            child: InkWell(
              onTap: ()=> {this.gotoOrderView()},
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.inbox_rounded,
                      color: ColorConfig.bluePrimary,
                      size: 26,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      child: Text("Order",
                        style: TextStyle(
                            color: ColorConfig.colorBlack,
                            fontSize: 14,
                          fontFamily: 'PoppinsBold',
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 70,
            child: InkWell(
              onTap: () => {this.gotoAddressView()},
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.location_on,
                      color: ColorConfig.bluePrimary,
                      size: 26,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      child: Text("Address",
                        style: TextStyle(
                            color: ColorConfig.colorBlack,
                            fontSize: 14,
                          fontFamily: 'PoppinsBold',
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 70,
            child: InkWell(
              onTap: () => {this.gotoPaymentView()},
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.payment,
                      color: ColorConfig.bluePrimary,
                      size: 26,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      child: Text("Payment",
                        style: TextStyle(
                            color: ColorConfig.colorBlack,
                            fontSize: 14,
                          fontFamily: 'PoppinsBold',
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
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
        ));
  }
}
