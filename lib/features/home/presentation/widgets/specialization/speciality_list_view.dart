import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/features/home/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/specialization_response_model.dart';
import 'doctor_speciality_see_all.dart';
import 'speciality_list_view_item.dart';

class SpecialityListView extends StatefulWidget {
  const SpecialityListView({
    super.key,
    required this.specializationDataList,
  });

  final List<SpecializationData?> specializationDataList;

  @override
  State<SpecialityListView> createState() => _SpecialityListViewState();
}

class _SpecialityListViewState extends State<SpecialityListView> {
  var selectedSpecializationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DoctorSpecialitySeeAll(),
        verticalSpace(16),
        SizedBox(
          height: 115.h,
          child: ListView.builder(
            itemCount: widget.specializationDataList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: 8.w, left: 8.w),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSpecializationIndex = index;
                    });

                    context.read<HomeCubit>().getDoctorList(
                          specializationId:
                              widget.specializationDataList[index]?.id,
                        );
                  },
                  child: ItemDoctorSpeciality(
                    specializationData: widget.specializationDataList[index],
                    itemIndex: index,
                    selectedIndex: selectedSpecializationIndex,
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
