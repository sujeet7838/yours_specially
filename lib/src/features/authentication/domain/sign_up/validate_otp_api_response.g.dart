// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_otp_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ValidateOtpApiResponse _$$_ValidateOtpApiResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ValidateOtpApiResponse(
      success: json['status'] as bool,
      message: json['message'] as String,
      validateOtpApiData:
          ValidateOtpApiData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ValidateOtpApiResponseToJson(
        _$_ValidateOtpApiResponse instance) =>
    <String, dynamic>{
      'status': instance.success,
      'message': instance.message,
      'data': instance.validateOtpApiData,
    };

_$_ValidateOtpApiData _$$_ValidateOtpApiDataFromJson(
        Map<String, dynamic> json) =>
    _$_ValidateOtpApiData(
      authToken: json['auth_token'] as String,
      validatedUserData:
          ValidatedUserData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ValidateOtpApiDataToJson(
        _$_ValidateOtpApiData instance) =>
    <String, dynamic>{
      'auth_token': instance.authToken,
      'user': instance.validatedUserData,
    };

_$_ValidatedUserData _$$_ValidatedUserDataFromJson(Map<String, dynamic> json) =>
    _$_ValidatedUserData(
      userId: json['id'] as num,
      name: json['name'] as String,
      emailAddress: json['email'] as String,
      statusCode: json['status'] as num,
    );

Map<String, dynamic> _$$_ValidatedUserDataToJson(
        _$_ValidatedUserData instance) =>
    <String, dynamic>{
      'id': instance.userId,
      'name': instance.name,
      'email': instance.emailAddress,
      'status': instance.statusCode,
    };
