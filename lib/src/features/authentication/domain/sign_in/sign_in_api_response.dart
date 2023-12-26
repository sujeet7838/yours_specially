// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_api_response.freezed.dart';
part 'sign_in_api_response.g.dart';

@freezed
class SignInApiResponse with _$SignInApiResponse {
  const factory SignInApiResponse({
    @JsonKey(name: 'status') required bool success,
    required String message,
    @JsonKey(name: 'data') required SignInApiData signInApiData,
  }) = _SignInApiResponse;

  factory SignInApiResponse.fromJson(Map<String, Object?> json) =>
      _$SignInApiResponseFromJson(json);
}

@freezed
class SignInApiData with _$SignInApiData {
  const factory SignInApiData({
    @JsonKey(name: 'auth_token') required String authToken,
    @JsonKey(name: 'user') required SignInUserData signInUserData,
  }) = _SignInApiData;

  factory SignInApiData.fromJson(Map<String, Object?> json) =>
      _$SignInApiDataFromJson(json);
}

@freezed
class SignInUserData with _$SignInUserData {
  const factory SignInUserData({
    @JsonKey(name: 'id') required num userId,
    required String name,
    @JsonKey(name: 'email') required String emailAddress,
    @JsonKey(name: 'status') required num statusCode,
  }) = _SignInUserData;

  factory SignInUserData.fromJson(Map<String, Object?> json) =>
      _$SignInUserDataFromJson(json);
}
