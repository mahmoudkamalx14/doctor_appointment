import 'package:doctor_appointment/core/networking/api_error_handler.dart';
import 'package:doctor_appointment/core/networking/api_result.dart';
import 'package:doctor_appointment/features/authentication/data/apis/auth_service.dart';
import 'package:doctor_appointment/features/authentication/data/models/login_request_body.dart';
import 'package:doctor_appointment/features/authentication/data/models/auth_respone.dart';

class LoginRepo {
  final AuthService _authService;

  LoginRepo(this._authService);

  Future<ApiResult<AuthResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _authService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
