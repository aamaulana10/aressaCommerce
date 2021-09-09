import 'package:aressa_commerce/feature/login/view/registerView.dart';
import 'package:aressa_commerce/feature/mainTabbar.dart';
import 'package:aressa_commerce/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  void gotoMainTabbar() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainTabbar()));
  }

  void gotoRegisterView() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterView()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.only(left: 16, right: 16),
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
                  "Welcome to lafyuu",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "poppinsBold"),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text("Sign in to continue",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: "poppinsRegular"))),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.grey,
                    )),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      labelText: S.of(context).yourEmail,
                      labelStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontFamily: 'Poppinsregular'),
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
                      color: Colors.grey,
                    )),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Your password",
                      labelStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontFamily: 'Poppinsregular'),
                      border: InputBorder.none),
                ),
              ),
              Container(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => {this.gotoMainTabbar()},
                    child: Container(
                      margin: EdgeInsets.only(top: 16),
                      alignment: Alignment.center,
                      height: 57,
                      decoration: BoxDecoration(
                          color: Color(0xFF41BFFF),
                          borderRadius: BorderRadius.circular(5)),
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
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                        width: 32,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 8, right: 8),
                        child: Text(S.of(context).or,
                        style: TextStyle(
                          color: Color(0xFF8F98B1),
                          fontSize: 14,
                          fontFamily: 'PoppinsBold'
                        ),
                        ),
                      ),
                    Expanded(
                      child: Container(
                        height: .5,
                        color: Colors.grey,
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
                      color: Colors.grey,
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
                        color: Color(0xFF8F98B1),
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
                      color: Colors.grey,
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
                      child: Text("Login With Google",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF8F98B1),
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
                    color: Colors.lightBlue,
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
                      color: Colors.grey,
                      fontSize: 12,
                      fontFamily: 'PoppinsRegular'
                    )),
                    TextButton(
                      onPressed: () => {this.gotoRegisterView()},
                        child: Text("Register",
                        style: TextStyle(
                          color: Colors.lightBlue,
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
    ));
  }
}
