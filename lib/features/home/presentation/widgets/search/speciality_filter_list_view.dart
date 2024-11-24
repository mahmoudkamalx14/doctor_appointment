import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'speciality_filter_list_view_item.dart';

class SpecialityFilterListView extends StatelessWidget {
  const SpecialityFilterListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54.h,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const SpecialityFilterListViewItem(),
      ),
    );
  }
}
