import 'package:flutter/material.dart';
import 'package:doctor_appointment/core/di/dependency_injection.dart';
import 'package:doctor_appointment/core/routes/app_router.dart';
import 'package:doctor_appointment/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetIt();

  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}
