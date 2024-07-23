import 'package:flutter/material.dart';
import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/theme/styles.dart';
import 'package:doctor_appointment/core/widgets/app_text_button.dart';
import 'package:doctor_appointment/features/authentication/logic/login/login_cubit.dart';
import 'package:doctor_appointment/features/authentication/presentation/widgets/already_have_an_account_yet.dart';
import 'package:doctor_appointment/features/authentication/presentation/widgets/email_and_password.dart';
import 'package:doctor_appointment/features/authentication/presentation/widgets/login_bloc_listener.dart';
import 'package:doctor_appointment/features/authentication/presentation/widgets/terms_and_conditions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24mainBlueBold),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font15GrayRegluar,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpace(10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13mainBlueRegular,
                        ),
                      ),
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      textButton: 'Login',
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                    ),
                    verticalSpace(48),
                    const TermsAndConditions(),
                    verticalSpace(24),
                    const AlreadyHaveAnAccountYet(),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
