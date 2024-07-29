import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/core/widgets/custom_appbar.dart';
import 'package:doctor_appointment/features/home/logic/home_cubit.dart';
import 'package:doctor_appointment/features/home/logic/home_state.dart';
import 'package:doctor_appointment/features/home/presentation/widgets/item_doctor_speciality.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityScreen extends StatelessWidget {
  const DoctorSpecialityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
          child: Column(
            children: [
              CustomAppBar(title: 'Doctor Speciality', onTap: () {}),
              verticalSpace(42),
              BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    getDataSpecializationSuccess:
                        (specializationResponseModel) {
                      return Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                          itemCount: specializationResponseModel.data!.length,
                          itemBuilder: (context, index) {
                            return ItemDoctorSpeciality(
                              specializationData:
                                  specializationResponseModel.data![index],
                              radius: 40,
                              fontSize: 14.sp,
                              itemIndex: index,
                            );
                          },
                        ),
                      );
                    },
                    orElse: () {
                      return const SizedBox.shrink();
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
