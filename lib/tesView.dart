import 'package:aressa_commerce/penangkapDataView.dart';
import 'package:aressa_commerce/userModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TesView extends StatefulWidget {

  @override
  _TesViewState createState() => _TesViewState();
}

class _TesViewState extends State<TesView> {

  String email = "";
  String password = "";
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();

  var user = UserModel();
  var isSecure = true;

  saveIsLogin() async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLogin', true);
  }

  void save() {
    print("email: " + email);
    print("Password: " + password);

    if (email.length == 0){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Email kosong"),
      ));
    }

    else if(password.length == 0){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("password kosong"),
      ));
    }

    else if(password.length < 8){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Password Kurang dari 8"),
      ));
    }

    else{
     // emailEditingController.text = "";
     // passwordEditingController.text = "";
     // setState(() {
     //   user.email = "";
     //   user.password = "";
     // });

      saveIsLogin();

      user.useremail = email;
      user.userpassword = password;

      print(user.useremail);

     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
       content: Text("Login Berhasil "),
     ));

     Future.delayed(Duration(milliseconds: 500)).then((value) {

       lemparData(user);
     });
    }
  }

  void lemparData(user) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PenangkapDataView(userModel: user)));
  }

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dafa"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 16),
                child: Text("Email")),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: TextFormField(
                onChanged: (e) {
                  setState(() {
                    email = e;
                  });
                },
                controller: emailEditingController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  labelText: "Masukan Email",
                  labelStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey
                  )
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 16),
                child: Text("Password")),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: TextFormField(
                onChanged: (e) {
                  setState(() {
                    password = e;
                  });
                },
                controller: passwordEditingController,
                obscureText: isSecure,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    labelText: "Masukan Password",
                    labelStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.grey
                    ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isSecure = !isSecure;
                      });
                    },
                    icon: Icon(isSecure == true ? Icons.remove_red_eye_outlined : Icons.remove_red_eye),
                  )
                ),
              ),
            ),
            InkWell(
              onTap: () => {save()},
              child: Container(
                height: 35,
                margin: EdgeInsets.only(left: 16, right: 16, top: 35),
                decoration: BoxDecoration(
                  color: Colors.lightBlue
                ),
                child: Center(
                  child: Text("Login",
                  style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
