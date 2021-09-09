import 'package:aressa_commerce/feature/account/model/userAccountModel.dart';
import 'package:aressa_commerce/feature/account/view/profileView/profileView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputNameView extends StatefulWidget {

  @override
  _InputNameViewState createState() => _InputNameViewState();
}

class _InputNameViewState extends State<InputNameView> {

  String FirstName = "";
  String LastName = "";

  var user = UserAccountModel();

  void save() {
    print("First Name: " + FirstName);
    print("Last Name: " + LastName);

    if (FirstName.length == 0){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Nama tidak boleh kosong"),
      ));
    }

    else if(LastName.length == 0){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Nama tidak boleh kosong"),
      ));
    }

    else{

      user.userFirstName = FirstName;
      user.userLastName = LastName;

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Nama Berhasil Dirubah"),
      ));

      Future.delayed(Duration(milliseconds: 500)).then((value) {

        lemparData(context);
      });
    }
  }

  void lemparData(user) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ProfileView(userAccountModel: user)));
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
                    Text("Name", style: TextStyle(
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
          Text("First Name",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'PoppinsBold',
          )),
          Container(
            height: 48,
            margin: EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.transparent,
              border: Border.all(
                  color: Colors.grey,
              )),
            child: TextFormField(
              onChanged: (e) {
                setState(() {
                  FirstName = e;
                });
              },
              decoration: InputDecoration(
                  labelText: "First Name",
                  labelStyle: TextStyle(
                      fontSize: 14,
                      fontFamily: 'PoppinsRegular',
                      color: Colors.grey,
                  ),
                  border: InputBorder.none),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Text("Last Name",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'PoppinsBold',
                )),
          ),
          Container(
            height: 48,
            margin: EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.grey,
                )),
            child: TextFormField(
              onChanged: (e) {
                setState(() {
                  LastName = e;
                });
              },
              decoration: InputDecoration(
                  labelText: "Last Name",
                  labelStyle: TextStyle(
                    fontSize: 14,
                    fontFamily: 'PoppinsRegular',
                    color: Colors.grey,
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
          child: Column(
              children: [
                appBar(),
                content(),
                Expanded(child: saveButton()),
              ],
            ),
        ));
  }
}
