import 'package:flutter/material.dart';

class SignupField extends StatelessWidget {
  final String _hint;
  final String _label;
  final Icon _icon;
  final TextInputType _type;
  final bool _check;

  SignupField(this._hint, this._label, this._icon, this._type, this._check);
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.lightGreen,
      decoration: InputDecoration(
        hintText: _hint,
        labelText: _label,
        labelStyle: TextStyle(color: Colors.lightGreen),
        icon: _icon,
        iconColor: Colors.lightGreen,
      ),
      keyboardType: _type,
      obscureText: _check,
    );
  }
}
