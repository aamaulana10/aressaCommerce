import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputGenderView extends StatefulWidget {

  @override
  _InputGenderViewState createState() => _InputGenderViewState();
}

class _InputGenderViewState extends State<InputGenderView> {

  String dropDownValue = "Male";

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
                      child: Text("Gender", style: TextStyle(
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
          Text("Choose gender",
          style: TextStyle(
            color: ColorConfig.colorBlack,
            fontFamily: 'PoppinsBold',
            fontSize: 14
          )),
        Container(
          margin: EdgeInsets.only(top: 16),
          padding: EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: ColorConfig.colorTransparent,
              border: Border.all(
                color: ColorConfig.borderColor,
              )
          ),
          child: DropdownButton<String>(
              value: dropDownValue,
              icon: const Icon(Icons.keyboard_arrow_down),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.lightBlue),
              underline: Container(
                height: 2,
                color: ColorConfig.bluePrimary,
              ),
              onChanged: (String newValue) {
                setState(() {
                  dropDownValue = newValue;
                });
              },
              items: <String>['Male', 'Female', 'Other']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
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
