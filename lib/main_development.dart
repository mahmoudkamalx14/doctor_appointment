import 'package:doctor_appointment/core/cache/cache_helper.dart';
import 'package:doctor_appointment/core/cache/constants.dart';
import 'package:doctor_appointment/core/routes/extentions.dart';
import 'package:flutter/material.dart';
import 'package:doctor_appointment/core/di/dependency_injection.dart';
import 'package:doctor_appointment/core/routes/app_router.dart';
import 'package:doctor_appointment/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();

  runApp(
    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) => DocApp(appRouter: AppRouter()),
    // ),

    DocApp(appRouter: AppRouter()),
  );
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}

//! dart run build_runner build --delete-conflicting-outputs

//? dart run flutter_native_splash:create --path=flutter_native_splash.yaml
