// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_api_response.freezed.dart';
part 'sign_up_api_response.g.dart';

@freezed
class SignUpApiResponse with _$SignUpApiResponse {
  const factory SignUpApiResponse({
    @JsonKey(name: 'status') required bool success,
    required String message,
    @JsonKey(name: 'data') required SignUpApiData signUpApiData,
  }) = _SignUpApiResponse;

  factory SignUpApiResponse.fromJson(Map<String, Object?> json) =>
      _$SignUpApiResponseFromJson(json);
}

@freezed
class SignUpApiData with _$SignUpApiData {
  const factory SignUpApiData({
    @JsonKey(name: 'name') required String userName,
    @JsonKey(name: 'email') required String userEmail,
    required num otp,
    required bool status,
    @JsonKey(name: 'id') required num userId,
  }) = _SignUpApiData;

  factory SignUpApiData.fromJson(Map<String, Object?> json) =>
      _$SignUpApiDataFromJson(json);
}
