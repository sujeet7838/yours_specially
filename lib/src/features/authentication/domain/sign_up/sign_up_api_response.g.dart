// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpApiResponse _$$_SignUpApiResponseFromJson(Map<String, dynamic> json) =>
    _$_SignUpApiResponse(
      success: json['status'] as bool,
      message: json['message'] as String,
      signUpApiData:
          SignUpApiData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SignUpApiResponseToJson(
        _$_SignUpApiResponse instance) =>
    <String, dynamic>{
      'status': instance.success,
      'message': instance.message,
      'data': instance.signUpApiData,
    };

_$_SignUpApiData _$$_SignUpApiDataFromJson(Map<String, dynamic> json) =>
    _$_SignUpApiData(
      userName: json['name'] as String,
      userEmail: json['email'] as String,
      otp: json['otp'] as num,
      status: json['status'] as bool,
      userId: json['id'] as num,
    );

Map<String, dynamic> _$$_SignUpApiDataToJson(_$_SignUpApiData instance) =>
    <String, dynamic>{
      'name': instance.userName,
      'email': instance.userEmail,
      'otp': instance.otp,
      'status': instance.status,
      'id': instance.userId,
    };
