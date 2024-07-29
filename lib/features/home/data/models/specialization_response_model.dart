import 'package:json_annotation/json_annotation.dart';

part 'specialization_response_model.g.dart';

@JsonSerializable()
class SpecializationResponseModel {
  SpecializationResponseModel({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });

  final String? message;
  final List<SpecializationData>? data;
  final bool? status;
  final int? code;

  factory SpecializationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$SpecializationResponseModelToJson(this);
}

@JsonSerializable()
class SpecializationData {
  SpecializationData({
    required this.id,
    required this.name,
    required this.doctors,
  });

  final int? id;
  final String? name;
  final List<Doctor>? doctors;

  factory SpecializationData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationDataFromJson(json);

  Map<String, dynamic> toJson() => _$SpecializationDataToJson(this);
}

@JsonSerializable()
class Doctor {
  Doctor({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.photo,
    required this.gender,
    required this.address,
    required this.description,
    required this.degree,
    required this.specialization,
    required this.city,
    required this.appointPrice,
    required this.startTime,
    required this.endTime,
  });

  final int? id;
  final String? name;
  final String? email;
  final String? phone;
  final String? photo;
  final String? gender;
  final String? address;
  final String? description;
  final String? degree;
  final Specialization? specialization;
  final City? city;

  @JsonKey(name: 'appoint_price')
  final int? appointPrice;

  @JsonKey(name: 'start_time')
  final String? startTime;

  @JsonKey(name: 'end_time')
  final String? endTime;

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorToJson(this);
}

@JsonSerializable()
class City {
  City({
    required this.id,
    required this.name,
    required this.governrate,
  });

  final int? id;
  final String? name;
  final Specialization? governrate;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  Map<String, dynamic> toJson() => _$CityToJson(this);
}

@JsonSerializable()
class Specialization {
  Specialization({
    required this.id,
    required this.name,
  });

  final int? id;
  final String? name;

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);

  Map<String, dynamic> toJson() => _$SpecializationToJson(this);
}
