import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InputBirthdayView extends StatefulWidget {

  @override
  _InputBirthdayViewState createState() => _InputBirthdayViewState();
}

class _InputBirthdayViewState extends State<InputBirthdayView> {

  var _selectedDate;
  TextEditingController birthDateEditingController = TextEditingController();

  void showBirthDateBottomSheet() async{

    DateTime newSelectedDate = await showDatePicker(
        context: context,
        initialDate: _selectedDate != null ? _selectedDate : DateTime.now(),
        firstDate: DateTime(1800),
        lastDate: DateTime(2040),
        builder: (BuildContext context, Widget child) {
          return child;
        });

    if (newSelectedDate != null) {

      _selectedDate = newSelectedDate;

      var date = DateFormat("yyyy-MM-dd").format(_selectedDate).toString();
      birthDateEditingController.text = date;

      print(birthDateEditingController.text);
      print(_selectedDate);
    }
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
                      child: Text("Birthday", style: TextStyle(
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
          Text("Your Birthday",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'PoppinsBold',
            fontSize: 14,
          )),
          TextFormField(
            onTap: () => {this.showBirthDateBottomSheet()},
            controller: birthDateEditingController,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.calendar_today_rounded),
                labelText: "Your Birthday",
                labelStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontFamily: 'PoppinsRegular'
                ),
                border: InputBorder.none),
          ),
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
              content(),
            ],
          ),
        ));
  }
}
