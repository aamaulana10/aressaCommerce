import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPhoneNumberView extends StatefulWidget {

  @override
  _InputPhoneNumberViewState createState() => _InputPhoneNumberViewState();
}

class _InputPhoneNumberViewState extends State<InputPhoneNumberView> {

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
                      child: Text("Phone Number", style: TextStyle(
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
          Text("Phone Number",
              style: TextStyle(
                  color: ColorConfig.colorBlack,
                  fontSize: 14,
                fontFamily: 'PoppinsBold',
              )),
          Container(
            height: 50,
            margin: EdgeInsets.only(top: 16),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorConfig.colorTransparent,
                border: Border.all(
                  color: ColorConfig.borderColor,
                )
            ),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone_android_sharp),
                  labelText: "+63",
                  labelStyle: TextStyle(
                    fontSize: 14,
                    fontFamily: 'PoppinsRegular',
                    color: ColorConfig.colorGrey,
                  ),
                  border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }

  Widget saveButton() {
    return Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        child: Stack(
          children: [
            Positioned(
                bottom: 16,
                left: 16,
                right: 16,
                child: InkWell(
                  onTap: () => {Navigator.pop(context)},
                  child: Container(
                    height: 57,
                    decoration: BoxDecoration(
                        color: ColorConfig.bluePrimary,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Center(
                      child: Text("Save",
                        style: TextStyle(
                            color: ColorConfig.colorWhite,
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
          padding: EdgeInsets.only(top: 32),
          child: Column(
                children: [
                  appBar(),
                  content(),
                  Expanded(child: saveButton()),
                ],
              ),
        ),
        );
  }
}
