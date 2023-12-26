// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'validate_otp_api_response.freezed.dart';
part 'validate_otp_api_response.g.dart';

@freezed
class ValidateOtpApiResponse with _$ValidateOtpApiResponse {
  const factory ValidateOtpApiResponse({
    @JsonKey(name: 'status') required bool success,
    required String message,
    @JsonKey(name: 'data') required ValidateOtpApiData validateOtpApiData,
  }) = _ValidateOtpApiResponse;

  factory ValidateOtpApiResponse.fromJson(Map<String, Object?> json) =>
      _$ValidateOtpApiResponseFromJson(json);
}

@freezed
class ValidateOtpApiData with _$ValidateOtpApiData {
  const factory ValidateOtpApiData({
    @JsonKey(name: 'auth_token') required String authToken,
    @JsonKey(name: 'user') required ValidatedUserData validatedUserData,
  }) = _ValidateOtpApiData;

  factory ValidateOtpApiData.fromJson(Map<String, Object?> json) =>
      _$ValidateOtpApiDataFromJson(json);
}

@freezed
class ValidatedUserData with _$ValidatedUserData {
  const factory ValidatedUserData({
    @JsonKey(name: 'id') required num userId,
    required String name,
    @JsonKey(name: 'email') required String emailAddress,
    @JsonKey(name: 'status') required num statusCode,
  }) = _ValidatedUserData;

  factory ValidatedUserData.fromJson(Map<String, Object?> json) =>
      _$ValidatedUserDataFromJson(json);
}
