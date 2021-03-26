import 'package:carousel_pro/carousel_pro.dart';
import 'package:final_project/Drawer.dart';
import 'package:final_project/constants.dart';
import 'package:final_project/gridview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Shop',
        style: TextStyle(fontSize: 25),),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_basket, color: Colors.white),
            onPressed: () {},
          ),
        ],
        elevation: 5.0,

      ),
      body:
          Products(),
          // ListView(
          //   children: [
          //     SizedBox(
          //       height: 200.0,
          //       width: double.infinity,
          //       child: Carousel(
          //         autoplay: true,
          //         autoplayDuration: Duration(seconds: 10),
          //         animationCurve: Curves.ease,
          //         dotSize: 5.0,
          //         dotColor: Colors.lightGreenAccent,
          //         indicatorBgPadding: 5.0,
          //         dotBgColor: Colors.transparent,
          //         dotIncreasedColor: Colors.green,
          //         images: [
          //           Image.asset(
          //             'Assets/Images/2.jpg',
          //             fit: BoxFit.cover,
          //           ),
          //           Image.asset(
          //             'Assets/Images/3.jpg',
          //             fit: BoxFit.cover,
          //           ),
          //           Image.asset(
          //             'Assets/Images/4.jpg',
          //             fit: BoxFit.cover,
          //           ),
          //         ],
          //       ),
          //     )
          //   ],
          // ),


      drawer: MainDrawer()
    );
  }
}