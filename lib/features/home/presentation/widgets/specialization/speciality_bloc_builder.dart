import 'package:doctor_appointment/features/home/data/models/specialization_response_model.dart';
import 'package:doctor_appointment/features/home/logic/home_cubit.dart';
import 'package:doctor_appointment/features/home/logic/home_state.dart';
import 'package:doctor_appointment/features/home/presentation/widgets/specialization/speciality_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../doctors/doctors_shimmer_loading.dart';
import 'specialization_shimmer_loading.dart';

class SpecialityBlocBuilder extends StatelessWidget {
  const SpecialityBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is Loading ||
          current is SpecializationSuccess ||
          current is SpecializationError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          specializationSuccess: (specializationList) {
            return setupSuccess(specializationList);
          },
          specializationError: (error) => setupError(),
          orElse: () {
            if (HomeCubit.get(context).specializationList!.isNotEmpty) {
              return setupSuccess(HomeCubit.get(context).specializationList);
            }
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Column setupLoading() {
    return const Column(
      children: [
        SpecializationShimmerLoading(),
        DoctorsShimmerLoading(),
      ],
    );
  }

  SpecialityListView setupSuccess(
      List<SpecializationData?>? specializationList) {
    return SpecialityListView(
      specializationDataList: specializationList!,
    );
  }

  setupError() {
    return const SizedBox.shrink();
  }
}
