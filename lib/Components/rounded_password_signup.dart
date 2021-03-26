import 'package:flutter/material.dart';
import 'package:final_project/components/text_field_container.dart';
import 'package:final_project/constants.dart';

class RoundedPasswordsignup extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordsignup({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Create your Password",
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
    );
  }
}
