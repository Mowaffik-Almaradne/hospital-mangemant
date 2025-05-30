import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hosptel_app/core/resources/color_manger.dart';
import 'package:hosptel_app/core/resources/word_manger.dart';
import 'package:hosptel_app/core/widget/text_utiles/text_utile_widget.dart';

class FiledDescriptionMedical extends StatelessWidget {
  const FiledDescriptionMedical({
    super.key,
    required this.nameMedicine,
    required this.periodOfUse,
    required this.timeOfUse,
    required this.showText,
  });
  final String nameMedicine;
  final String periodOfUse;
  final String timeOfUse;
  final bool showText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 5.h),
      height: 50.h,
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColorManger.secoundryColor,
          width: 1.2.w,
        ),
        borderRadius: BorderRadius.circular(3.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextUtiels(
            text: nameMedicine,
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: 14.sp,
                ),
          ),
          TextUtiels(
            text: periodOfUse,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 10.sp,
                ),
          ),
          Visibility(
            visible: showText,
            replacement: Container(
              alignment: Alignment.center,
              width: 30.w,
              height: 5.h,
              color: AppColorManger.secoundryColor,
            ),
            child: TextUtiels(
              paddingRight: 10.w,
              text: AppWordManger.afterFood,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontSize: 10.sp,
                  ),
            ),
          ),
          TextUtiels(
            text: timeOfUse,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 10.sp,
                ),
          ),
        ],
      ),
    );
  }
}
