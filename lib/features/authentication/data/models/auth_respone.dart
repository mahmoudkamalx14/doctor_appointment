import 'package:json_annotation/json_annotation.dart';

part 'auth_respone.g.dart';

@JsonSerializable()
class AuthResponse {
  String message;
  @JsonKey(name: 'data')
  UserData? userData;
  bool status;
  int code;

  AuthResponse({
    required this.message,
    this.userData,
    required this.status,
    required this.code,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: 'username')
  String? userName;

  UserData({
    this.token,
    this.userName,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
