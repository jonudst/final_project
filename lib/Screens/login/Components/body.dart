import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:final_project/Screens/Login/components/background.dart';
import 'package:final_project/Screens/signin/Register.dart';
import 'package:final_project/components/already_have_an_account_acheck.dart';
import 'package:final_project/components/rounded_input_field.dart';
import 'package:final_project/components/rounded_password_field.dart';
import 'package:final_project/Screens/Home.dart';

class Body extends StatefulWidget {
  @override
  _Body createState() => _Body();
}

class _Body extends State<Body> {
  String _email, _password;
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
            Image.asset(
              "Assets/Images/logo.png",
              height: size.height * 0.5,
            ),
            SizedBox(height: size.height * 0.02),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                setState(() {
                  _email = value.trim();
                });
              }
            ),
            RoundedPasswordField(
              onChanged: (value) {
                setState(() {
                  _password = value.trim();
                });
              },
            ),

          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: size.width * 0.8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(29),
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  color: Colors.green,
                onPressed: (){
                  auth.signInWithEmailAndPassword(email: _email, password: _password).then((_){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Home()));
                  });
                },
                child: Text('LOGIN',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),

            SizedBox(height: size.height * 0.02),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return register();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
