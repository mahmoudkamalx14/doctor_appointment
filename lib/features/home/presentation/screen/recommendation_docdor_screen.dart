import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/widgets/app_text_form_field.dart';
import 'package:doctor_appointment/core/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationDocdorScreen extends StatelessWidget {
  const RecommendationDocdorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
          child: Column(
            children: [
              CustomAppBar(title: 'Recommendation Doctor', onTap: () {}),
              verticalSpace(32),
              Row(
                children: [
                  Expanded(
                    child: AppTextFormField(
                      prefixIcon: const Icon(Icons.search_sharp, size: 28),
                      hintText: 'Search',
                      textInputType: TextInputType.text,
                      validator: (val) {},
                    ),
                  ),
                  horizontalSpace(12),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.filter_list_outlined, size: 28),
                  )
                ],
              ),
              verticalSpace(24),
              // Expanded(
              //   child: ListView.builder(
              //     itemCount: 10,
              //     scrollDirection: Axis.vertical,
              //     itemBuilder: (context, index) => const Card(
              //       elevation: 1,
              //       color: Colors.white,
              //       child: ItemRecommendationDoctor(),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
