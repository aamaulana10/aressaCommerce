import 'package:aressa_commerce/userModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PenangkapDataView extends StatefulWidget {

  final UserModel userModel;

  const PenangkapDataView({this.userModel});

  @override
  _PenangkapDataViewState createState() => _PenangkapDataViewState();
}

class _PenangkapDataViewState extends State<PenangkapDataView> {

  void chekIsLogin() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();

    print(preferences.getBool('isLogin'));
  }

  @override
  void initState() {

    chekIsLogin();

    super.initState();
  }

  void logOut() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();

    preferences.remove('isLogin');

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(child: Column(
            children: [
              Text(widget.userModel == null ? "data kosong" : widget.userModel.useremail),
              FlatButton(onPressed: () => {logOut()}, child: Text("Log Out"))
            ],
          )),
        ));
  }
}
