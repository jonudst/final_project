import 'package:final_project/constants.dart';
import 'package:flutter/material.dart';

Future<Null> notice(
    BuildContext context, String title) async {
  showDialog(
    context: context,
    builder: (context) => SimpleDialog(
      backgroundColor: Colors.lightGreen[300],
      title: ListTile(
        title: Center(child: Text(title, style: TextStyle(color: kPrimaryColor, fontSize: 20, fontWeight: FontWeight.bold),)),
      ),
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                color: Colors.green,
                onPressed: () => Navigator.pop(context), child: Text('Understood' ,style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold))),
          ),
        ),
      ],
    ),
  );
}
