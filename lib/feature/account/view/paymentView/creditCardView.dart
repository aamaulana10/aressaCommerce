import 'package:aressa_commerce/feature/account/view/paymentView/addCardView.dart';
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
                    Text("Credit Card And Debit", style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontFamily: 'PoppinsBold',
                    )),
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
              color: Color(0xFF40BFFF),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Credit Card",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'PoppinsBold'
                )),
                Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Row(
                    children: [
                      Text("6326 9124 8124 9875",
                          style: TextStyle(
                              color: Colors.white,
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
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'PoppinsRegular'
                            )),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text("Laylifa Febrina",
                              style: TextStyle(
                                color: Colors.white,
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
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'PoppinsRegular'
                                )),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text("19/2042",
                                style: TextStyle(
                                    color: Colors.white,
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
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Credit Card",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'PoppinsBold'
                    )),
                Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Row(
                    children: [
                      Text("6326 9124 8124 9875",
                          style: TextStyle(
                              color: Colors.white,
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
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'PoppinsRegular'
                                )),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text("Laylifa Febrina",
                                style: TextStyle(
                                    color: Colors.white,
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
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'PoppinsRegular'
                                )),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text("19/2042",
                                style: TextStyle(
                                    color: Colors.white,
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

  Widget addCardButton() {
    return Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        child: Stack(
          children: [
            Positioned(
                bottom: 16,
                left: 16,
                right: 16,
                child: InkWell(
                  onTap: () => {this.gotoAddCardView()},
                  child: Container(
                    height: 57,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Center(
                      child: Text("Add Card",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'PoppinsBold',
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(
              children: [
                appBar(),
                content(),
                Expanded(child: addCardButton())
              ],
            ),
        ));
  }
}