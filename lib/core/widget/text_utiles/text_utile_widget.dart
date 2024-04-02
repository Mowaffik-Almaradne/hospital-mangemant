import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextUtiels extends StatelessWidget {
  const TextUtiels({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
    required this.fontFamily,
    this.textAlign,
    this.shadows,
    this.height,
    this.fontWeight,
    this.paddingRight,
    this.paddingBottome,
    this.paddingTop,
  
  });
  final String text;
  final String fontFamily;
  final Color color;
  final double fontSize;
  final TextAlign? textAlign;
  final List<Shadow>? shadows;
  final FontWeight? fontWeight;
  final double? height;
  final double? paddingRight;
  final double? paddingTop;
  final double? paddingBottome;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: paddingRight ?? 0,
        bottom: paddingBottome ?? 0,
        top: paddingTop ?? 0,
      ),
      child: Text(
        textAlign: textAlign ?? TextAlign.end,
        text,
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          color: color,
          shadows: shadows,
          height: height,
          fontWeight: fontWeight,
        ),
        overflow: TextOverflow.visible,
      ),
    );
  }
}
