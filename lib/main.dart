import 'package:aressa_commerce/feature/home/view/homeView.dart';
import 'package:aressa_commerce/feature/mainTabbar.dart';
import 'package:aressa_commerce/penangkapDataView.dart';
import 'package:aressa_commerce/tesView.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Widget initialHome = TesView();

  void chekIsLogin() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();

    print("data login nih");
    print(preferences.getBool('isLogin'));

    if(preferences.getBool("isLogin") == null) {

      setState(() {
        initialHome = TesView();
      });
    }else {

      setState(() {
        initialHome = PenangkapDataView();
      });
    }
  }

  @override
  void initState() {
    super.initState();

    chekIsLogin();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainTabbar()
    );
  }
}