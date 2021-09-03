import 'package:aressa_commerce/feature/account/view/profileView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountView extends StatefulWidget {

  @override
  _AccountViewState createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {

  void gotoProfileView() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileView()));
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
                    Text("Account", style: TextStyle(
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
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.only(left: 16, right: 16),
      child: ListView(
        children: [
          InkWell(
            onTap: () => {this.gotoProfileView()},
            child: Container(
              child: Row(
                children: [
                  Icon(Icons.person_outline,
                    color: Colors.lightBlue,
                  size: 24,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Text("Profile",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              children: [
                Icon(Icons.inbox_rounded,
                  color: Colors.lightBlue,
                  size: 24,
                ),
                Container(
                  margin: EdgeInsets.only(left: 8),
                  child: Text("Order",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              children: [
                Icon(Icons.location_on,
                  color: Colors.lightBlue,
                  size: 24,
                ),
                Container(
                  margin: EdgeInsets.only(left: 8),
                  child: Text("Address",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              children: [
                Icon(Icons.payment,
                  color: Colors.lightBlue,
                  size: 24,
                ),
                Container(
                  margin: EdgeInsets.only(left: 8),
                  child: Text("Payment",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
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
