import 'package:flutter/material.dart';
import 'package:doctor_appointment/core/theme/colors.dart';
import 'package:doctor_appointment/core/theme/font_weight_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: const Color(0xFF242424),
    height: 0,
  );

  static TextStyle font32mainBlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.mainBlue,
    height: 0,
  );

  static TextStyle font24mainBlueBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.mainBlue,
    height: 0,
  );

  static TextStyle font13mainBlueRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.mainBlue,
    height: 0,
  );

  static TextStyle style11Regular = TextStyle(
    color: const Color(0xFF616161),
    fontSize: 11.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    height: 0,
  );

  static TextStyle style12Regular = TextStyle(
    color: const Color(0xFF247CFF),
    fontSize: 12.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    height: 0,
  );

  static TextStyle font13textBlackMedium = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.textBlack,
    height: 0,
  );

  static TextStyle style12Medium = TextStyle(
    color: const Color(0xFF757575),
    fontSize: 12.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    height: 0,
    letterSpacing: 0.20,
  );

  static TextStyle style18Medium = TextStyle(
    color: Colors.white,
    fontSize: 18.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    height: 0.sp,
  );

  static TextStyle font13GrayRegluar = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.textGray,
    height: 0,
  );

  static TextStyle font15GrayRegluar = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.textGray,
    height: 0,
  );

  static TextStyle font15LighterGrayRegluar = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.lighterGray,
    height: 0,
  );

  static TextStyle font16mainBlueBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    height: 0,
  );

  static TextStyle style16Bold = TextStyle(
    color: const Color(0xFF242424),
    fontSize: 16.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
  );

  static TextStyle style18SemiBold = TextStyle(
    color: const Color(0xFF242424),
    fontSize: 18.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    height: 0,
  );

  static TextStyle font18Bold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: const Color(0xFF242424),
    height: 0,
  );
}
