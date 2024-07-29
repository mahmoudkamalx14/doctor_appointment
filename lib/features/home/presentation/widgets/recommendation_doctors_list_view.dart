import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/routes/extentions.dart';
import 'package:doctor_appointment/core/routes/routes.dart';
import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

import '../../data/models/specialization_response_model.dart';
import 'item_recommendation_doctor.dart';

class RecommendationDoctorsListView extends StatelessWidget {
  const RecommendationDoctorsListView({super.key, required this.doctorList});

  final List<Doctor> doctorList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recommendation Doctor',
              style: TextStyles.style18SemiBold,
            ),
            GestureDetector(
              onTap: () {
                context.navigateTo(Routes.recommendationDocdorScreen);
              },
              child: Text(
                'See All',
                textAlign: TextAlign.right,
                style: TextStyles.style12Regular,
              ),
            ),
          ],
        ),
        verticalSpace(16),
        Expanded(
          child: ListView.builder(
            itemCount: doctorList.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => ItemRecommendationDoctor(
              doctor: doctorList[index],
            ),
          ),
        ),
      ],
    );
  }
}
