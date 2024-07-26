import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeDoctorsBlue extends StatelessWidget {
  const HomeDoctorsBlue({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.antiAlias,
        children: [
          Container(
            height: 167.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/Background.png'),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Book and\nschedule with\nnearest doctor',
                      style: TextStyles.style18Medium,
                    ),
                    verticalSpace(15),
                    ElevatedButton(
                      onPressed: () {},
                      child:
                          Text('Find Nearby', style: TextStyles.style12Regular),
                    ),
                    verticalSpace(15),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/docdorHome.png',
              )
            ],
          ),
        ],
      ),
    );
  }
}
