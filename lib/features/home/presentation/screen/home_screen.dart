import 'package:doctor_appointment/core/functions/shimmer_loading.dart';
import 'package:doctor_appointment/core/helpers/spacing.dart';
import 'package:doctor_appointment/features/home/logic/home_cubit.dart';
import 'package:doctor_appointment/features/home/logic/home_state.dart';
import 'package:doctor_appointment/features/home/presentation/widgets/doctor_speciality_list_view.dart';
import 'package:doctor_appointment/features/home/presentation/widgets/home_appbar.dart';
import 'package:doctor_appointment/features/home/presentation/widgets/home_doctors_blue.dart';
import 'package:doctor_appointment/features/home/presentation/widgets/recommendation_doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 24.h, right: 24.w, left: 24.w),
        child: Column(
          children: [
            const HomeAppBar(),
            const HomeDoctorsBlue(),
            verticalSpace(24),
            BlocBuilder<HomeCubit, HomeState>(
              buildWhen: (previous, current) =>
                  current is GetDataSpecializationloading ||
                  current is GetDataSpecializationSuccess ||
                  current is GetDataSpecializationError,
              builder: (context, state) {
                return state.maybeWhen(
                  getDataSpecializationloading: () {
                    return const ShimmerLoadingScreen();
                  },
                  getDataSpecializationSuccess: (specializationResponseModel) {
                    return Expanded(
                      child: Column(
                        children: [
                          DoctorSpecialityListView(
                            specializationDataList:
                                specializationResponseModel.data ?? [],
                          ),
                          verticalSpace(24),
                          Expanded(
                            child: RecommendationDoctorsListView(
                              doctorList: specializationResponseModel
                                      .data![1].doctors ??
                                  [],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  getDataSpecializationError: (error) {
                    return const Center(child: CircularProgressIndicator());
                  },
                  orElse: () {
                    return const Center(child: CircularProgressIndicator());
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
