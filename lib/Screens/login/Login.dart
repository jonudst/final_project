import 'package:flutter/material.dart';
import 'package:final_project/Screens/Login/components/body.dart';

class login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[300],
      body: Body(),
    );
  }
}

























// class login extends StatelessWidget{
//   @override
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("login Screen"),
//         centerTitle: true,
//         elevation: 5.0,
//       ),
//       body: Center(
//         child: Text("login",
//           style: TextStyle(fontSize:40.0),),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             DrawerHeader(
//               child: Text('Drawer title'),
//               decoration: BoxDecoration(
//                 color: Colors.blue[500],
//               ),
//             ),
//             ListTile(
//               title: Text('Shop'),
//               onTap: (){
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: Text('log Out'),
//               onTap: (){
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }