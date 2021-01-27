import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final TextInputType keyboadrtype;
  final bool obscureText;
  final bool borderEnable;
  final double fontSize;
  final void Function(String text) onChanged;
  final String Function(String text) validator;

  const InputText({
    Key key,
    this.label,
    this.keyboadrtype = TextInputType.text,
    this.obscureText = false,
    this.borderEnable = true,
    this.fontSize = 15,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: this.keyboadrtype,
      obscureText: this.obscureText,
      onChanged: this.onChanged,
      style: TextStyle(
        fontSize: this.fontSize,
      ),
      validator: this.validator,
      decoration: InputDecoration(
          labelText: this.label,
          contentPadding: EdgeInsets.symmetric(vertical: 5),
          enabledBorder: this.borderEnable
              ? UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12))
              : InputBorder.none,
          labelStyle:
              TextStyle(color: Colors.black45, fontWeight: FontWeight.w400)),
    );
  }
}
