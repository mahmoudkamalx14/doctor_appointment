import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppbarIcon extends StatelessWidget {
  const AppbarIcon({
    super.key,
    required this.icon,
  });

  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      height: 40.h,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFECECEC)),
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      child: Icon(icon ?? Icons.arrow_back_ios_new_sharp),
    );
  }
}
