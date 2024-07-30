import 'package:doctor_appointment/core/networking/api_error_handler.dart';
import 'package:doctor_appointment/features/home/data/models/specialization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.loading() = Loading;

  /// Specializations

  const factory HomeState.specializationSuccess(
      List<SpecializationData?>? specializationList) = SpecializationSuccess;

  const factory HomeState.specializationError({required ErrorHandler error}) =
      SpecializationError;

  /// Doctors

  const factory HomeState.doctorsSuccess(List<Doctor?>? doctorsList) =
      DoctorsSuccess;

  const factory HomeState.doctorsError({required ErrorHandler error}) =
      DoctorsError;
}
