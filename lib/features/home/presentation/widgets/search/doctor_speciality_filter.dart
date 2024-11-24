import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

import 'speciality_filter_list_view.dart';

class DoctorSpecialityFilter extends StatelessWidget {
  const DoctorSpecialityFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SpecialityFilterListView(),
        verticalSpace(24),
        Text('20 founds', style: TextStyles.style18SemiBold),
        verticalSpace(24),
        // const SpecialityBlocBuilder(),
        // const DoctorsBlocBuilder(),
      ],
    );
  }
}
