import 'package:aressa_commerce/feature/login/view/registerView.dart';
import 'package:aressa_commerce/feature/mainTabbar.dart';
import 'package:aressa_commerce/generated/l10n.dart';
import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  void gotoMainTabbar() {

    Future.delayed(Duration(milliseconds: 500)).then((value){

      Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainTabbar()));
    });

  }

  void gotoRegisterView() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterView()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorConfig.bluePrimary,
          statusBarIconBrightness: Brightness.light
        ),
        elevation: 0,
      ),
        body: Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 16),
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("lib/asset/image/home/logo.png"),
                height: 72,
                width: 72,
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Text(
                  "Welcome to Flying",
                  style: TextStyle(
                      color: ColorConfig.textColorBold1,
                      fontSize: 16,
                      fontFamily: "PoppinsBold"),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text("Sign in to continue",
                      style: TextStyle(
                          color: ColorConfig.textColor1,
                          fontSize: 12,
                          fontFamily: "PoppinsRegular"))),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                    border: Border.all(
                      color: ColorConfig.borderColor,
                    )),
                child: TextFormField(
                  style: TextStyle(
                      fontSize: 12,
                      color: ColorConfig.textColor1,
                      fontFamily: 'PoppinsBold'),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      labelText: S.of(context).yourEmail,
                      labelStyle: TextStyle(
                          color: ColorConfig.textColor1,
                          fontFamily: 'PoppinsRegular'),
                      border: InputBorder.none),
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                    border: Border.all(
                      color: ColorConfig.borderColor,
                    )),
                child: TextFormField(
                  obscureText: true,
                  style: TextStyle(
                      fontSize: 12,
                      color: ColorConfig.textColor1,
                      fontFamily: 'PoppinsBold'),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Your password",
                      labelStyle: TextStyle(
                          color: ColorConfig.textColor1,
                          fontFamily: 'PoppinsRegular'),
                      border: InputBorder.none),
                ),
              ),
              // ini login
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Material(
                  color: Colors.transparent,
                  shadowColor: ColorConfig.bluePrimary,
                  elevation: 8,
                  child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: ColorConfig.bluePrimary,
                            borderRadius: BorderRadius.circular(5)),
                        child: FlatButton(
                          height: 57,
                          minWidth: MediaQuery.of(context).size.width,
                          onPressed: ()=> {gotoMainTabbar()},
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: 'PoppinsBold',
                            ),
                          ),
                        ),
                      ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: .5,
                        color: ColorConfig.borderColor,
                      ),
                    ),
                    Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 8, right: 8),
                        child: Text(S.of(context).or,
                        style: TextStyle(
                          color: ColorConfig.textColor1,
                          fontSize: 14,
                          fontFamily: 'PoppinsBold'
                        ),
                        ),
                      ),
                    Expanded(
                      child: Container(
                        height: .5,
                        color: ColorConfig.borderColor,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 57,
                margin: EdgeInsets.only(top: 16),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                    border: Border.all(
                      color: ColorConfig.borderColor
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(image: AssetImage("lib/asset/image/home/Google.png"),
                    height: 24,
                      width: 24,
                    ),
                    Expanded(
                      child: Text("Login With Google",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorConfig.textColor1,
                        fontSize: 14,
                        fontFamily: 'PoppinsBold'
                      ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 57,
                margin: EdgeInsets.only(top: 16),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                    border: Border.all(
                      color: ColorConfig.borderColor
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(image: AssetImage("lib/asset/image/home/Facebook.png"),
                      height: 24,
                      width: 24,
                    ),
                    Expanded(
                      child: Text("Login With Facebook",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: ColorConfig.textColor1,
                            fontSize: 14,
                            fontFamily: 'PoppinsBold'
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: TextButton(
                  onPressed: () => {},
                  child: Text("Forgot Password?",
                  style: TextStyle(
                      color: ColorConfig.bluePrimary,
                    fontSize: 12,
                    fontFamily: 'PoppinsBold'
                  ),
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Don't have a account? ",
                    style: TextStyle(
                      color: ColorConfig.textColor1,
                      fontSize: 12,
                      fontFamily: 'PoppinsRegular'
                    )),
                    TextButton(
                      onPressed: () => {this.gotoRegisterView()},
                        child: Text("Register",
                        style: TextStyle(
                            color: ColorConfig.bluePrimary,
                          fontSize: 12,
                          fontFamily: 'PoppinsBold'
                        ),
                        ),
                      ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
