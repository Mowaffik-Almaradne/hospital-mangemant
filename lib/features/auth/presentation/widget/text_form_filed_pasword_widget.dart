import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hosptel_app/core/function/outline_input_border_function.dart';
import 'package:hosptel_app/core/resources/color_manger.dart';

class TextFormFiledPassword extends StatefulWidget {
  const TextFormFiledPassword({
    Key? key,
    required this.hintText,
    required this.onChange,
    required this.textInputType,
    this.validator,
    this.onTap,
    this.onFieldSubmitted,
    this.inputFormatter,
    this.onPressed,
    required this.filedWidth,
    required this.filedHeight,
    this.onPressedSuffixIcon,
  }) : super(key: key);

  final String hintText;
  final TextInputType textInputType;
  final Function(String) onChange;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatter;
  final void Function()? onTap;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onPressed;
  final double filedWidth;
  final double filedHeight;
  final void Function()? onPressedSuffixIcon;

  @override
  State<TextFormFiledPassword> createState() => _TextFormFiledPasswordState();
}

class _TextFormFiledPasswordState extends State<TextFormFiledPassword> {
  bool showPassword = false;
  bool showIconFiled = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.filedWidth.w,
      height: widget.filedHeight.h,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          obscureText: !showPassword,
          textDirection: TextDirection.rtl,
          textInputAction: TextInputAction.next,
          inputFormatters: widget.inputFormatter,
          keyboardType: widget.textInputType,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  showPassword = !showPassword;
                });
              },
              icon: Icon(
                showPassword ? Icons.visibility_off : Icons.visibility,
                color: AppColorManger.primaryColor,
              ),
            ),
            filled: true,
            fillColor: AppColorManger.fillColor,
            hintText: widget.hintText,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 14.w,
              vertical: 19.h,
            ),
            hintStyle: Theme.of(context).textTheme.labelSmall,
            enabledBorder: outlineInputBorder(circular: 13),
            focusedBorder: outlineInputBorder(circular: 13),
            errorBorder: outlineInputBorder(circular: 13),
          ),
          onChanged: widget.onChange,
          validator: widget.validator,
          onFieldSubmitted: widget.onFieldSubmitted,
          onTap: widget.onTap,
        ),
      ),
    );
  }
}