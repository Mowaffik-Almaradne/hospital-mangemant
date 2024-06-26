import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hosptel_app/core/resources/svg_manger.dart';
import 'package:hosptel_app/core/resources/word_manger.dart';
import 'package:hosptel_app/core/widget/text_utiles/text_utile_widget.dart';

class NotFoundMyVisit extends StatelessWidget {
  const NotFoundMyVisit({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 60.h),
      child: Column(
        children: [
          SvgPicture.asset(
            width: 127,
            height: 127.h,
            AppSvgManger.notFoundMyVisit,
          ),
          TextUtiels(
            paddingTop: 50.h,
            text: AppWordManger.dontAnyVisitInThisYet,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontSize: 24.sp,
                ),
          )
        ],
      ),
    );
  }
}
