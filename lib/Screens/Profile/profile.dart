import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(

        title: Text('Profile'),
        centerTitle: true,
        elevation: 5.0,
      ),
      body: Column(
        children: <Widget>[
          Image.asset('Assets/Images/1.png',
            height: size.height *0.35,
          ),
          SizedBox(height: size.height * 0.03),

        ],
      ),
    );
  }
}