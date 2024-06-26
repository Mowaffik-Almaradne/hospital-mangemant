import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hosptel_app/core/resources/color_manger.dart';
import 'package:hosptel_app/core/resources/font_manger.dart';
import 'package:hosptel_app/core/widget/text_utiles/text_utile_widget.dart';

class SnackBarUtil {
  //! function snack bar
  static void showSnackBar({
    required String message,
    required BuildContext context,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColorManger.white,
        content: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.sp,
            vertical: 10.sp,
          ),
          //! Text Snack Bar
          child: Align(
            alignment: Alignment.center,
            child: TextUtiels(
              text: message,
              fontFamily: AppFontFamily.tajawalBold,
              fontSize: 13.sp,
              color: AppColorManger.redColor,
            ),
          ), //!
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: AppColorManger.redColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
