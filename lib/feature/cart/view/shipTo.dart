import 'package:aressa_commerce/feature/account/view/paymentView/paymentView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShipTo extends StatefulWidget {

  @override
  _ShipToState createState() => _ShipToState();
}

class _ShipToState extends State<ShipTo> {

  gotoPayment() {
    Future.delayed(Duration(milliseconds: 500), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => PaymentView()));
    });
  }

  Widget appBar() {
    return Container(
        height: 60,
        margin: EdgeInsets.only(top: 16),
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
                      child: Text("Ship To", style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: 'PoppinsBold',
                      )),
                    ),
                    IconButton(
                      onPressed: () => {},
                      icon: Icon(Icons.add),
                      iconSize: 24,
                      color: Colors.lightBlue,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
          ],
        )
    );
  }

  Widget content () {
    return Container(
      margin: EdgeInsets.only(left: 16, top: 16, right: 16),
      child: Column(
        children: [
          Container(
            height: 240,
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.grey,
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("PrisceKilla",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'PoppinsBold'
                  )),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Text("3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States",
                  maxLines: 3,
                    style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontFamily: 'PoppinsRegular'
                  ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Text("+99 234567890",
                    style: TextStyle(
                        color: Colors.grey,
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
                            color: Colors.lightBlue,
                            ),
                        child: Center(
                          child: Text("Edit",
                          style: TextStyle(
                            color: Colors.white,
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
                          color: Colors.grey,
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
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.grey,
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ahmad Khaidir",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'PoppinsBold'
                    )),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Text("3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States",
                    maxLines: 3,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontFamily: 'PoppinsRegular'
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Text("+99 234567890",
                    style: TextStyle(
                        color: Colors.grey,
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
                          color: Colors.lightBlue,
                        ),
                        child: Center(
                          child: Text("Edit",
                            style: TextStyle(
                                color: Colors.white,
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
                          color: Colors.grey,
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

  Widget saveButton() {
    return Container(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => {gotoPayment()},
          child: Container(
            margin: EdgeInsets.all(16),
            alignment: Alignment.center,
            height: 57,
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(5)
            ),
            child: Text("Next", style: TextStyle(
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
              saveButton()
            ],
          ),
        ));
  }
}
