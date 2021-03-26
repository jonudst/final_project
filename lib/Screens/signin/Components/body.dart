import 'package:final_project/Screens/login/Login.dart';
import 'package:final_project/notice.dart';
import 'package:final_project/notice_pw.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:final_project/Screens/signin/Components/background.dart';
import 'package:final_project/Screens/signin/Components/or_divider.dart';
import 'package:final_project/Screens/signin/Components/social_icon.dart';
import 'package:final_project/Components/already_have_an_account_acheck.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:final_project/Screens/Home.dart';
import 'package:final_project/constants.dart';

class Body extends StatefulWidget {
  @override
  _Body createState() => _Body();
}

class _Body extends State<Body> {
  String _email, _password,name ,password;
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset('Assets/Images/greener.png',
              height: size.height *0.16,
              scale: 8,
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: size.width * 0.8,
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.circular(29),
              ),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    name = value.trim();
                  });
                },
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  hintText: "User name",
                  icon: Icon(
                    Icons.person,
                    color: kPrimaryColor,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: size.width * 0.8,
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.circular(29),
              ),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _email= value.trim();
                  });
                },
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  hintText: "Enter your e-mail",
                  icon: Icon(
                    Icons.person,
                    color: kPrimaryColor,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: size.width * 0.8,
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.circular(29),
              ),
              child: TextField(
                obscureText: true,
                onChanged: (value) {
                  setState(() {
                    _password = value.trim();
                  });
                },
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  hintText: "Create your password",
                  icon: Icon(
                    Icons.lock,
                    color: kPrimaryColor,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: kPrimaryColor,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width * 0.8,
            decoration: BoxDecoration(
              color: kPrimaryLightColor,
              borderRadius: BorderRadius.circular(29),
            ),
            child: TextField(
              obscureText: true,
              onChanged: (value) {
                setState(() {
                  password = value.trim();
                });
              },
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                hintText: "Repeat Your Password",
                icon: Icon(
                  Icons.lock,
                  color: kPrimaryColor,
                ),
                suffixIcon: Icon(
                  Icons.visibility,
                  color: kPrimaryColor,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: size.width * 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  color: Colors.green,
                      onPressed: () {

                        if ((name?.isEmpty ?? true) ||
                            (_email?.isEmpty ?? true) ||
                            (_password?.isEmpty ?? true)) {
                          notice     (context, 'Please Fill Empty Box');
                        } else {
                          if (( _password != password )) {
                            notice_pw(context, 'Please Check your password');
                          } else {
                            auth.createUserWithEmailAndPassword(email: _email, password: _password).then((_){
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Home()));
                            });
                          }
                        }
                  },
                  child: Text('Sign Up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return login();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "Assets/Images/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "Assets/Images/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "Assets/Images/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
