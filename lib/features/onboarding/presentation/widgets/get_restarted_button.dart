import 'package:flutter/material.dart';
import 'package:doctor_appointment/core/routes/extentions.dart';
import 'package:doctor_appointment/core/routes/routes.dart';
import 'package:doctor_appointment/core/theme/colors.dart';

import '../../../../core/theme/app_styles.dart';

class GetRestartedButton extends StatelessWidget {
  const GetRestartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.navigateToReplacement(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        minimumSize: WidgetStateProperty.all(const Size(311, 52)),
      ),
      child: Text(
        'Get Started',
        style: TextStyles.font16mainBlueBold,
      ),
    );
  }
}
