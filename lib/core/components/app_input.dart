import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppInput extends StatefulWidget {
  final String? labelText;
  final String? suffixText;
  final Widget? suffixIcon;
  final Widget? preifixIcon;
  final Color? fillColor;
  final bool? filled;
  final bool obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const AppInput({
    super.key,
    this.labelText,
    this.preifixIcon,
    this.suffixIcon,
    this.fillColor,
    this.filled,
    this.obscureText = false,
    this.suffixText,
    this.controller,
    this.validator,
  });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText,
      controller: widget.controller,
      validator: widget.validator,
      decoration: InputDecoration(
        fillColor: widget.fillColor,
        filled: widget.filled ?? true,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10).r,
          borderSide: BorderSide(color: Color(0xffEAEAEA)),
        ),
        labelText: widget.labelText,

        labelStyle: TextStyle(
          color: Color(0xff9E9E9E),
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
        ),

        prefixIcon: widget.suffixText != null
            ? SizedBox(
                width: 65.w,
                child: Row(
                  children: [
                    SizedBox(width: 12.w),

                    Text(
                      widget.suffixText!,
                      style: TextStyle(
                        color: Color(0xff9E9E9E),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    SizedBox(width: 10.w),

                    Container(
                      width: 1.w,
                      height: 24.h,
                      color: Color(0xffEAEAEA),
                    ),
                  ],
                ),
              )
            : widget.preifixIcon,
        suffixIcon: widget.suffixIcon,
      ),
    );
  }
}
