import 'package:aressa_commerce/generated/l10n.dart';
import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputEmailView extends StatefulWidget {

  @override
  _InputEmailViewState createState() => _InputEmailViewState();
}

class _InputEmailViewState extends State<InputEmailView> {

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
                      child: Text("Email", style: TextStyle(
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
          Text("Change Email",
          style: TextStyle(
            color: ColorConfig.colorBlack,
            fontSize: 14,
            fontFamily: 'PoppinsBold',
          )),
          Container(
            height: 50,
            margin: EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: ColorConfig.colorTransparent,
                border: Border.all(
                  color: ColorConfig.borderColor,
                )
              ),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  labelText: "@gmail.com",
                  labelStyle: TextStyle(
                      fontSize: 14,
                      color: ColorConfig.colorGrey,
                    fontFamily: 'Poppinsregular'
                  ),
                  border: InputBorder.none),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: TextButton(
                onPressed: () => {},
                child: Text("We Will Send verification to your New Email",
                style: TextStyle(
                  color: ColorConfig.bluePrimary,
                  fontSize: 12,
                  fontFamily: 'PoppinsRegular'
                ),
                )),
          ),
        ],
      ),
    );
  }

  Widget addAddressButton() {
    return Container(
      margin: EdgeInsets.only(top: 16),
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
            onPressed: ()=> {},
              child: Text(
              "Sign in",
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
