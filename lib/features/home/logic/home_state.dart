import 'package:doctor_appointment/core/networking/api_error_handler.dart';
import 'package:doctor_appointment/features/home/data/models/specialization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.getDataSpecializationloading() =
      GetDataSpecializationloading;

  const factory HomeState.getDataSpecializationError(
      {required ErrorHandler error}) = GetDataSpecializationError;

  const factory HomeState.getDataSpecializationSuccess(
          SpecializationResponseModel specializationResponseModel) =
      GetDataSpecializationSuccess;
}
