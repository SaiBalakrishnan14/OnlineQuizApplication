import 'package:flutter/material.dart';

class SignUpLoginPageTextField extends StatelessWidget {
  SignUpLoginPageTextField(
      {@required this.icon,
      @required this.hintText,
      this.onChanged,
      this.obscureText});
  final Icon icon;
  final String hintText;
  final Function onChanged;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        icon: Padding(padding: EdgeInsets.only(left: 15.0), child: icon),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.black45,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onChanged: onChanged,
    );
  }
}
