import 'package:doctor_appointment/core/routes/extentions.dart';
import 'package:doctor_appointment/core/routes/routes.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class AlreadyHaveAnAccountYet extends StatelessWidget {
  const AlreadyHaveAnAccountYet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account yet? ',
          style: TextStyles.font13textBlackMedium,
        ),
        GestureDetector(
            onTap: () {
              context.navigateToReplacement(Routes.signupScreen);
            },
            child: Text('Sign Up', style: TextStyles.font13mainBlueRegular)),
      ],
    );
  }
}
