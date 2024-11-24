import 'package:doctor_appointment/core/routes/extentions.dart';
import 'package:doctor_appointment/core/routes/routes.dart';
import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileCategoryInfo extends StatelessWidget {
  const ProfileCategoryInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileCategoryInfoItem(
          image: 'assets/icons/personalinfo.svg',
          title: 'Personal Information',
          onTap: () {
            context.navigateTo(Routes.personalInfoScreen);
          },
        ),
        ProfileCategoryInfoItem(
          image: 'assets/icons/testDiagnostic.svg',
          title: 'My Test & Diagnostic',
          onTap: () {},
        ),
        ProfileCategoryInfoItem(
          image: 'assets/icons/payment.svg',
          title: 'Payment',
          onTap: () {},
        ),
      ],
    );
  }
}

class ProfileCategoryInfoItem extends StatelessWidget {
  const ProfileCategoryInfoItem({
    super.key,
    required this.image,
    required this.title,
    required this.onTap,
  });
  final String image;
  final String title;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(
            height: 60,
            child: ListTile(
              leading: SvgPicture.asset(image),
              title: Text(
                title,
                style: TextStyles.style14Regluar.copyWith(
                  color: const Color(0xFF242424),
                ),
              ),
            ),
          ),
          const Divider(height: 32, color: Color(0xFFEDEDED)),
        ],
      ),
    );
  }
}
