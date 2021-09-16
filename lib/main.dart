import 'package:aressa_commerce/feature/home/view/homeView.dart';
import 'package:aressa_commerce/feature/login/view/loginView.dart';
import 'package:aressa_commerce/feature/login/view/registerView.dart';
import 'package:aressa_commerce/feature/mainTabbar.dart';
import 'package:aressa_commerce/penangkapDataView.dart';
import 'package:aressa_commerce/tesView.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  static void setLocale(BuildContext context, Locale newLocale) async {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
    state.changeLanguage(newLocale);
  }

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

  Locale _locale;

  @override
  void initState() {
    super.initState();

    chekIsLogin();
  }

  changeLanguage(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainTabbar(),
      locale: _locale,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}