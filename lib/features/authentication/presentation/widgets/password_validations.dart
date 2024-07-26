import 'package:flutter/material.dart';
import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/theme/colors.dart';
import 'package:doctor_appointment/core/theme/app_styles.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowerCase),
        buildValidationRow('At least 1 uppercase letter', hasUpperCase),
        buildValidationRow(
            'At least 1 special character', hasSpecialCharacters),
        buildValidationRow('At least 1 number', hasNumber),
        buildValidationRow('At least 8 Characters long', hasMinLength),
      ],
    );
  }
}

Widget buildValidationRow(String text, bool hasValidated) {
  // ignore: prefer_const_constructors

  return Row(
    children: [
      const CircleAvatar(
        radius: 2.5,
        backgroundColor: ColorsManager.textGray,
      ),
      horizontalSpace(6),
      Text(
        text,
        style: TextStyles.font13textBlackMedium.copyWith(
          decoration: hasValidated ? TextDecoration.lineThrough : null,
          decorationColor: Colors.green,
          decorationThickness: 2,
          color:
              hasValidated ? ColorsManager.textGray : ColorsManager.textBlack,
        ),
      ),
    ],
  );
}
