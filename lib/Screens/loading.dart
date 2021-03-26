import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'file:///C:/Users/jonud/AndroidStudioProjects/final_project/lib/Screens/login/Login.dart';

class loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('press for next'),
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
    );
  }
}


// class loading extends StatefulWidget{
//   @override
//   _loading createState() => _loading();
// }
// class _loading extends State<loading>{
// @override
//
// void iniState(){
//   super.initState();
//
//   Timer(
//     Duration(seconds: 3),
//           () => Navigator.push(
//               context, MaterialPageRoute(builder: (context) => login())));
//
// }
//
// Widget build(BuildContext context) {
//   return Container(
//     color: Colors.green,
//     child: SpinKitCircle(
//       color: Colors.white,
//       size: 40.0,
//     ),
//   );
// }
// }