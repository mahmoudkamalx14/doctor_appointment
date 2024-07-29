import 'package:dio/dio.dart';
import 'package:doctor_appointment/core/networking/api_constants.dart';
import 'package:doctor_appointment/features/authentication/data/models/auth_respone.dart';
import 'package:doctor_appointment/features/authentication/data/models/login_request_body.dart';
import 'package:doctor_appointment/features/authentication/data/models/signup_request_body.dart';
import 'package:retrofit/http.dart';

part 'auth_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class AuthService {
  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @POST(ApiConstants.login)
  Future<AuthResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstants.signup)
  Future<AuthResponse> signup(@Body() SignupRequestBody signupRequestBody);
}
