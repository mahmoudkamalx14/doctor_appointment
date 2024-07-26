import 'package:doctor_appointment/core/routes/extentions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/routes/routes.dart';
import '../../../../core/theme/app_styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: TextStyles.font13textBlackMedium,
          ),
          TextSpan(
            text: ' Login',
            style: TextStyles.font13mainBlueRegular,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.navigateToReplacement(Routes.loginScreen);
              },
          ),
        ],
      ),
    );
  }
}
