import 'package:aressa_commerce/feature/account/view/paymentView/creditCardView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentView extends StatefulWidget {

  @override
  _PaymentViewState createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {

  void gotoCreditCardView() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreditCardView()));
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
                    Text("Payment", style: TextStyle(
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
          InkWell(
            onTap: () => {this.gotoCreditCardView()},
            child: Container(
              child: Row(
                children: [
                  Icon(Icons.payment,
                    color: Colors.lightBlue,
                    size: 24,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Text("Credit Card Or Debit",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'PoppinsBold',
                      ),
                    ),
                  )
                ],
              ),
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
          child: Column(
            children: [
              appBar(),
              content()
            ],
          ),
        ));
  }
}
