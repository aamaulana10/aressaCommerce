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
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'PoppinsBold',
          )),
          Container(
            height: 50,
            margin: EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.transparent,
                border: Border.all(
                  color: Colors.grey,
                )
              ),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  labelText: "@gmail.com",
                  labelStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
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
                  color: Colors.lightBlue,
                  fontSize: 12,
                  fontFamily: 'PoppinsRegular'
                ),
                )),
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
                onTap: () => {},
                child: Container(
                  height: 57,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(
                    child: Text("Save",
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
          padding: EdgeInsets.only(top: 32),
          child: Column(
              children: [
                appBar(),
                content(),
                Expanded(child: saveButton())
              ],
            ),
        ));
  }
}
