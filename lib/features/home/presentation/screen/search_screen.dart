import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/widgets/custom_appbar.dart';
import 'package:doctor_appointment/features/home/presentation/widgets/search/doctor_speciality_filter.dart';
import 'package:doctor_appointment/features/home/presentation/widgets/search/search_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 24.h, right: 24.w, left: 24.w),
          child: Column(
            children: [
              const CustomAppBar(title: 'Search'),
              verticalSpace(32),
              const SearchFormWidget(),
              verticalSpace(32),
              const DoctorSpecialityFilter(),
            ],
          ),
        ),
      ),
    );
  }
}
