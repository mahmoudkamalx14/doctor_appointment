import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

import '../../../data/models/specialization_response_model.dart';
import 'doctor_list_view_item.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key, required this.doctorList});

  final List<Doctor?>? doctorList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recommendation Doctor', style: TextStyles.style18SemiBold),
          verticalSpace(16),
          Expanded(
            child: ListView.builder(
              itemCount: doctorList!.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => DoctorsListViewItem(
                doctor: doctorList![index]!,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
