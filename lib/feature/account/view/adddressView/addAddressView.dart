import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddAddressView extends StatefulWidget {

  @override
  _AddAddressViewState createState() => _AddAddressViewState();
}

class _AddAddressViewState extends State<AddAddressView> {

  String dropDownValue = "Indonesia";

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
                      child: Text("Add Address", style: TextStyle(
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
      margin: EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Country or region",
            style: TextStyle(
              color: ColorConfig.colorBlack,
              fontSize: 14,
              fontFamily: 'PoppinsBold'
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
                color: ColorConfig.colorGrey,
              ),
              onChanged: (String newValue) {
                setState(() {
                  dropDownValue = newValue;
                });
              },
              items: <String>['Indonesia', 'Turkey', 'Amerika Serikat']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Text("First Name",
                style: TextStyle(
                  color: ColorConfig.colorBlack,
                  fontSize: 14,
                  fontFamily: 'PoppinsBold',
                )),
          ),
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
            child: Text("Last Name",
                style: TextStyle(
                  color: ColorConfig.colorBlack,
                  fontSize: 14,
                  fontFamily: 'PoppinsBold',
                )),
          ),
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
            child: Text("Street Address",
                style: TextStyle(
                  color: ColorConfig.colorBlack,
                  fontSize: 14,
                  fontFamily: 'PoppinsBold',
                )),
          ),
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
            child: Text("Street Address 2 (Optional)",
                style: TextStyle(
                  color: ColorConfig.colorBlack,
                  fontSize: 14,
                  fontFamily: 'PoppinsBold',
                )),
          ),
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
            child: Text("City",
                style: TextStyle(
                  color: ColorConfig.colorBlack,
                  fontSize: 14,
                  fontFamily: 'PoppinsBold',
                )),
          ),
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
            child: Text("State/Province/Region",
                style: TextStyle(
                  color: ColorConfig.colorBlack,
                  fontSize: 14,
                  fontFamily: 'PoppinsBold',
                )),
          ),
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
            child: Text("Zip Code",
                style: TextStyle(
                  color: ColorConfig.colorBlack,
                  fontSize: 14,
                  fontFamily: 'PoppinsBold',
                )),
          ),
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
            child: Text("Phone Number",
                style: TextStyle(
                  color: ColorConfig.colorBlack,
                  fontSize: 14,
                  fontFamily: 'PoppinsBold',
                )),
          ),
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

  Widget saveButton() {
    return Container(
        margin: EdgeInsets.all(16),
        child: InkWell(
                  onTap: () => {},
                  child: Container(
                    height: 57,
                    decoration: BoxDecoration(
                        color: ColorConfig.bluePrimary,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Center(
                      child: Text("Add Address",
                        style: TextStyle(
                          color: ColorConfig.colorWhite,
                          fontSize: 14,
                          fontFamily: 'PoppinsBold',
                        ),
                      ),
                    ),
                  ),
                ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 32),
          child: SingleChildScrollView(
            child: Column(
              children: [
                appBar(),
                content(),
                saveButton()
              ],
            ),
          ),
        ));
  }
}
