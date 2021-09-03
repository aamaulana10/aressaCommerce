import 'package:aressa_commerce/feature/account/view/inputChangePasswordView.dart';
import 'package:aressa_commerce/feature/account/view/inputEmailView.dart';
import 'package:aressa_commerce/feature/account/view/inputNameView.dart';
import 'package:aressa_commerce/feature/account/view/inputPhoneNumber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {

  void gotoInputNameView() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => InputNameView()));
  }

  void gotoInputEmailView() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => InputEmailView()));
  }

  void gotoInputPhoneNumber() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => InputPhoneNumber()));
  }

  void gotoChangePasswordNumber() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => InputChangePasswordView()));
  }

  Widget appBar() {
    return Container(
        height: 60,
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
                    Text("Category", style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
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
      height: 553,
      margin: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              children: [
                Container(
                  height: 72,
                  width: 72,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("lib/asset/image/home/promotionDummy.png"),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Column(
                    children: [
                      TextButton(onPressed: () => {this.gotoInputNameView()},
                          child: Text("Aressa Labs",
                          style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                ))),
                      Container(
                        child: Text("@aressaLabs",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 35),
            child: Row(
              children: [
                Icon(Icons.male,
                  color: Colors.lightBlue,
                  size: 24,
                ),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Text("Gender",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Male",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12
                      )),
                      IconButton(
                          onPressed: () => {},
                          icon: Icon(Icons.navigate_next,
                          color: Colors.grey,
                            size: 24,
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Icon(Icons.calendar_today_rounded,
                  color: Colors.lightBlue,
                  size: 24,
                ),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Text("Birthday",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("12-12-2000",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12
                          )),
                      IconButton(
                          onPressed: () => {},
                          icon: Icon(Icons.navigate_next,
                            color: Colors.grey,
                            size: 24,
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () => {this.gotoInputEmailView()},
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Icon(Icons.email_outlined,
                    color: Colors.lightBlue,
                    size: 24,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Text("Email",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("aressaLabs@gmail.com",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12
                            )),
                        IconButton(
                            onPressed: () => {this.gotoInputEmailView()},
                            icon: Icon(Icons.navigate_next,
                              color: Colors.grey,
                              size: 24,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => {this.gotoInputPhoneNumber()},
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Icon(Icons.phone_android_sharp,
                    color: Colors.lightBlue,
                    size: 24,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Text("Phone Number",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("(307) 555-0133",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12
                            )),
                        IconButton(
                            onPressed: () => {this.gotoInputPhoneNumber()},
                            icon: Icon(Icons.navigate_next,
                              color: Colors.grey,
                              size: 24,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => {this.gotoChangePasswordNumber()},
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Icon(Icons.lock,
                    color: Colors.lightBlue,
                    size: 24,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Text("Change Password",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("**********",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12
                            )),
                        IconButton(
                            onPressed: () => {this.gotoChangePasswordNumber()},
                            icon: Icon(Icons.navigate_next,
                              color: Colors.grey,
                              size: 24,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                appBar(),
                content(),
              ],
            ),
          ),
        ));
  }
}
