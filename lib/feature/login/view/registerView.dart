import 'package:aressa_commerce/feature/login/view/loginView.dart';
import 'package:aressa_commerce/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aressa_commerce/feature/mainTabbar.dart';

class RegisterView extends StatefulWidget {

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {

  void gotoMainTabbar() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainTabbar()));
  }

  void gotoLoginView() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginView()));
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
                      "Let's Get Started",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "poppinsBold"),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text("Create an new accout",
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
                          prefixIcon: Icon(Icons.person_outline),
                          labelText: "Full Name",
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
                          labelText: S.of(context).password,
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
                          labelText: "Password Again",
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
                            "Sign Up",
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("have a account? ",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontFamily: 'PoppinsRegular'
                            )),
                        TextButton(
                          onPressed: ()=> {this.gotoLoginView()},
                          child: Text("Sign Up",
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
