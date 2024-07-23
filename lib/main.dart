import 'package:flutter/material.dart';
import 'package:doctor_appointment/core/di/dependency_injection.dart';
import 'package:doctor_appointment/core/routes/app_router.dart';
import 'package:doctor_appointment/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetIt();

  // Add this line
  await ScreenUtil.ensureScreenSize();
  runApp(
      // DevicePreview(
      //   enabled: !kReleaseMode,
      //   builder: (context) => DocApp(appRouter: AppRouter()),
      // ),

      DocApp(appRouter: AppRouter()));
}



//! dart run build_runner build --delete-conflicting-outputs


//? dart run flutter_native_splash:create --path=flutter_native_splash.yaml