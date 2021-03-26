import 'package:final_project/Screens/Home.dart';
import 'package:final_project/Screens/Start.dart';
import 'package:final_project/Screens/login/Login.dart';
import 'package:final_project/Screens/loading.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/start',

      routes: {
        '/loading' :(context) => loading(),
        '/start'   :(context) => Start(),
        '/home'    :(context) => Home(),
        '/login'   :(context) => login(),
      },
    );
  }
}