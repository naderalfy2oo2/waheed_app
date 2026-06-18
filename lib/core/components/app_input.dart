import 'package:flutter/material.dart';

class AppInput extends StatefulWidget {
  final String labelText;
  final Widget? suffixIcon;
  final Widget? preifixIcon;
  final Color? fillColor;
  final bool? filled;

  const AppInput({
    super.key,
    required this.labelText,
    this.preifixIcon,
    this.suffixIcon,
    this.fillColor,
    this.filled,
  });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: widget.fillColor,
        filled: true,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(0xffEAEAEA)),
        ),
        labelText: widget.labelText,

        labelStyle: TextStyle(
          color: Color(0xff9E9E9E),
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),

        prefixIcon: widget.preifixIcon,
        prefixIconColor: Color(0xff9E9E9E),
        suffixIcon: widget.suffixIcon,
      ),
    );
  }
}
