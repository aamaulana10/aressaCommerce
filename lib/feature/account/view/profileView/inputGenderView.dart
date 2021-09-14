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
          color: Colors.black,
            fontFamily: 'PoppinsBold',
          fontSize: 14
        )),
      Container(
        margin: EdgeInsets.only(top: 16),
        width: MediaQuery.of(context).size.width,
          child: DropdownButton<String>(
              value: dropDownValue,
              icon: const Icon(Icons.keyboard_arrow_down),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.lightBlue),
              underline: Container(
                height: 2,
                color: Colors.lightBlue,
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
      // Container(
      //   height: 48,
      //   margin: EdgeInsets.only(top: 16),
      //   padding: EdgeInsets.all(13),
      //   decoration: BoxDecoration(
      //     color: Colors.transparent,
      //       borderRadius: BorderRadius.circular(8),
      //       border: Border.all(
      //         color: Colors.grey,
      //       )
      //   ),
      //   child: Row(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Expanded(
      //         child: Text("Male",
      //         style: TextStyle(
      //           color: Colors.grey,
      //           fontSize: 14,
      //           fontWeight: FontWeight.bold
      //         )),
      //       ),
      //       Icon(Icons.keyboard_arrow_down,
      //       color: Colors.grey,
      //       )
      //     ],
      //   ),
      // )
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
