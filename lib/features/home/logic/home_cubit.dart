import 'package:doctor_appointment/core/networking/api_error_handler.dart';
import 'package:doctor_appointment/core/routes/extentions.dart';
import 'package:doctor_appointment/features/home/data/repos/home_repo.dart';
import 'package:doctor_appointment/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/specialization_response_model.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  HomeCubit get(context) => BlocProvider.of(context);

  List<SpecializationData?>? specializationList = [];

  void getDataSpecialization() async {
    final response = await _homeRepo.getDataSpecialization();

    response.when(
      success: (specializationResponseModel) {
        specializationList = specializationResponseModel.data ?? [];

        getDoctorList(specializationId: specializationList?.first?.id);

        emit(SpecializationSuccess(specializationList));
      },
      failure: (errorHandler) {
        emit(SpecializationError(error: errorHandler));
      },
    );
  }

  void getDoctorList({required int? specializationId}) {
    List<Doctor?>? doctorsList =
        filterDoctorBySpecializationId(specializationId);

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(
          error: ErrorHandler.handle('No Doctors Found')));
    }
  }

  /// return the list of doctor based on specialization id
  filterDoctorBySpecializationId(specializationId) {
    return specializationList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctors;
  }
}
