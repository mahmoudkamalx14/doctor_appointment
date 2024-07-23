import 'package:doctor_appointment/features/authentication/data/apis/auth_service.dart';
import 'package:doctor_appointment/features/authentication/data/models/auth_respone.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../models/signup_request_body.dart';

class SignupRepo {
  final AuthService _authService;

  SignupRepo(this._authService);

  Future<ApiResult<AuthResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _authService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
