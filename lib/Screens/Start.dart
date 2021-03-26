import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.lightGreen[300],
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('Assets/Images/logo.png',
              height: size.height *0.5,
            ),
            SizedBox(height:40.0),
            Text(
              'Welcome to Greener !',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold),
            ),

            SizedBox(height:15.0),
            Text(
              'We are Greener Who love forest and you can be our family',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height:40.0),
            MaterialButton(
              elevation: 0,
              height: 50,
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Text('Get Started  ',
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              textColor: Colors.white,
            )
          ],
    ),
      ));
  }
}
