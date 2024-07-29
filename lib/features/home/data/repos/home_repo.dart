import 'package:doctor_appointment/core/networking/api_error_handler.dart';
import 'package:doctor_appointment/core/networking/api_result.dart';
import 'package:doctor_appointment/features/home/data/models/specialization_response_model.dart';
import 'package:doctor_appointment/features/home/data/services/home_service.dart';

class HomeRepo {
  final HomeService _homeService;

  HomeRepo(this._homeService);

  Future<ApiResult<SpecializationResponseModel>> getDataSpecialization() async {
    final response = await _homeService.getDataSpecialization();

    try {
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
