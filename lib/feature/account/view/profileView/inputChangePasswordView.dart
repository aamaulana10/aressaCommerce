import 'package:aressa_commerce/generated/l10n.dart';
import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputChangePasswordView extends StatefulWidget {

  @override
  _InputChangePasswordViewState createState() => _InputChangePasswordViewState();
}

class _InputChangePasswordViewState extends State<InputChangePasswordView> {

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
                      child: Text("Change Password", style: TextStyle(
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
          Text("Old Password",
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
                  prefixIcon: Icon(Icons.lock),
                  labelText: "Old Password",
                  labelStyle: TextStyle(
                    fontSize: 14,
                    color: ColorConfig.colorGrey,
                    fontFamily: 'PoppinsRegular'
                  ),
                  border: InputBorder.none),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Text("New Password",
                style: TextStyle(
                    color: ColorConfig.colorBlack,
                    fontSize: 14,
                  fontFamily: 'PoppinsBold',
                )),
          ),
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
                  prefixIcon: Icon(Icons.lock),
                  labelText: "New Password",
                  labelStyle: TextStyle(
                    fontSize: 14,
                    color: ColorConfig.colorGrey,
                    fontFamily: 'PoppinsRegular'
                  ),
                  border: InputBorder.none),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Text("New Password Again",
                style: TextStyle(
                    color: ColorConfig.colorBlack,
                    fontSize: 14,
                  fontFamily: 'PoppinsBold',
                )),
          ),
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
                  prefixIcon: Icon(Icons.lock),
                  labelText: "New Password Again",
                  labelStyle: TextStyle(
                    fontSize: 14,
                    color: ColorConfig.colorGrey,
                    fontFamily: 'PoppinsRegular'
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
