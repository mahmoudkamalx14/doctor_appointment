import 'package:doctor_appointment/core/functions/validators.dart';
import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/routes/extentions.dart';
import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:doctor_appointment/core/widgets/app_text_button.dart';
import 'package:doctor_appointment/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

import 'profile_image_widget.dart';

class PersonalInfoDetails extends StatelessWidget {
  const PersonalInfoDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileImageWidget(),
        verticalSpace(50),
        AppTextFormField(
          hintText: 'Mahmoud Kamal',
          textInputType: TextInputType.name,
          hintTextStyle: TextStyles.style18SemiBold,
          validator: (value) {
            notEmptyValidator(value);
          },
        ),
        verticalSpace(18),
        AppTextFormField(
          hintText: 'mkelsafty1838@gmail.com',
          textInputType: TextInputType.emailAddress,
          hintTextStyle: TextStyles.style18SemiBold,
          validator: (value) {
            emailValidator(value);
          },
        ),
        verticalSpace(18),
        AppTextFormField(
          hintText: 'Password',
          textInputType: TextInputType.text,
          hintTextStyle: TextStyles.style18SemiBold,
          validator: (value) {
            notEmptyValidator(value);
          },
        ),
        verticalSpace(18),
        AppTextFormField(
          hintText: '+20 1151066097',
          textInputType: TextInputType.phone,
          hintTextStyle: TextStyles.style18SemiBold,
          validator: (value) {
            phoneNumberValidator(value);
          },
        ),
        verticalSpace(24),
        Text(
          textAlign: TextAlign.center,
          'When you set up your personal information settings, you should take care to provide accurate information.',
          style: TextStyles.style18Medium.copyWith(
            color: const Color(0xFF757575),
          ),
        ),
        verticalSpace(90),
        AppTextButton(
          textButton: 'Save',
          onPressed: () {
            context.pop();
          },
        ),
      ],
    );
  }
}
