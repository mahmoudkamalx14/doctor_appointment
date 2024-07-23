import 'package:flutter/material.dart';
import 'package:doctor_appointment/core/theme/styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our ',
            style: TextStyles.font15GrayRegluar,
          ),
          TextSpan(
            text: 'Terms & Conditions ',
            style: TextStyles.font13textBlackMedium.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: 'and ',
            style: TextStyles.font15GrayRegluar,
          ),
          TextSpan(
            text: 'PrivacyPolicy',
            style: TextStyles.font13textBlackMedium.copyWith(
              height: 1.8,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
