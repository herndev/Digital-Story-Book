import 'package:flutter/material.dart';

import 'colors.dart';

var hc = Hcolor();

class PasswordField extends StatefulWidget {
  final controller;
  final validator;
  final hint;

  PasswordField(
      {@required this.controller,
      @required this.validator,
      this.hint: 'Password'});

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  var pwd = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: !pwd,
      controller: widget.controller,
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(Icons.lock, color: hc.brown),
        suffixIcon: GestureDetector(
          child: Icon(pwd ? Icons.visibility_off : Icons.visibility,
              color: hc.brown),
          onTap: () {
            setState(() {
              pwd = !pwd;
            });
          },
        ),
        hintText: widget.hint,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: hc.lightBrown, width: 2.0),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: hc.brown, width: 2.0),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

Widget emailField({@required controller, @required validator, hint: ''}) {
  return TextFormField(
    controller: controller,
    validator: validator,
    keyboardType: TextInputType.emailAddress,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      prefixIcon: Icon(
        Icons.email,
        color: hc.brown,
      ),
      hintText: hint == '' ? "Email" : hint,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: hc.lightBrown, width: 2.0),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: hc.brown, width: 2.0),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
}

Widget inputField(
    {@required controller,
    @required validator,
    @required icon,
    @required hint,
    type: TextInputType.text,
    onChange: ""}) {
  return TextFormField(
    onChanged: onChange == "" ? (text) {} : onChange,
    controller: controller,
    validator: validator,
    keyboardType: type,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      prefixIcon: icon,
      hintText: hint,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: hc.lightBrown, width: 2.0),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: hc.brown, width: 2.0),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
}

Widget inputFieldSingle(
    {@required controller,
    @required validator,
    @required hint,
    type: TextInputType.text}) {
  return TextFormField(
    controller: controller,
    validator: validator,
    keyboardType: type,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      hintText: hint,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: hc.lightBrown, width: 2.0),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: hc.brown, width: 2.0),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
}

Widget disabledField(
    {@required controller,
    @required validator,
    @required icon,
    @required hint,
    type: TextInputType.text}) {
  return TextFormField(
    controller: controller,
    validator: validator,
    keyboardType: type,
    enabled: false,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.grey.shade200,
      prefixIcon: icon,
      hintStyle: TextStyle(color: hc.lightBrown),
      hintText: hint,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: hc.lightBrown, width: 2.0),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
}

Widget textAreaField(
    {@required controller,
    @required hint,
    @required max,
    @required validator,
    type: TextInputType.text}) {
  return TextFormField(
    controller: controller,
    validator: validator,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    keyboardType: type,
    maxLines: max,
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      hintText: hint,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: hc.lightBrown, width: 2.0),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: hc.brown, width: 2.0),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
}
