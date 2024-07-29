import 'package:dio/dio.dart';
import 'package:doctor_appointment/core/networking/api_constants.dart';
import 'package:doctor_appointment/features/home/data/models/specialization_response_model.dart';
import 'package:retrofit/http.dart';

part 'home_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeService {
  factory HomeService(Dio dio, {String baseUrl}) = _HomeService;

  @GET(ApiConstants.homeSpecialization)
  Future<SpecializationResponseModel> getDataSpecialization();
}
