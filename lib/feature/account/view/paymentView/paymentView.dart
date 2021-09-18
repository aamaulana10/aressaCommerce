import 'package:aressa_commerce/feature/account/view/paymentView/creditCardView.dart';
import 'package:aressa_commerce/generated/l10n.dart';
import 'package:aressa_commerce/util/config/color/colorConfig.dart';
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
                      child: Text(S.of(context).payment, style: TextStyle(
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
          InkWell(
            onTap: () => {this.gotoCreditCardView()},
            child: Container(
              child: Row(
                children: [
                  Icon(Icons.payment,
                    color: ColorConfig.bluePrimary,
                    size: 24,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Text(S.of(context).creditCardAndDebit,
                      style: TextStyle(
                        color: ColorConfig.colorBlack,
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
          padding: EdgeInsets.only(top: 32),
          child: Column(
            children: [
              appBar(),
              content()
            ],
          ),
        ));
  }
}
