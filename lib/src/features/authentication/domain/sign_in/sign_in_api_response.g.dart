// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignInApiResponse _$$_SignInApiResponseFromJson(Map<String, dynamic> json) =>
    _$_SignInApiResponse(
      success: json['status'] as bool,
      message: json['message'] as String,
      signInApiData:
          SignInApiData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SignInApiResponseToJson(
        _$_SignInApiResponse instance) =>
    <String, dynamic>{
      'status': instance.success,
      'message': instance.message,
      'data': instance.signInApiData,
    };

_$_SignInApiData _$$_SignInApiDataFromJson(Map<String, dynamic> json) =>
    _$_SignInApiData(
      authToken: json['auth_token'] as String,
      signInUserData:
          SignInUserData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SignInApiDataToJson(_$_SignInApiData instance) =>
    <String, dynamic>{
      'auth_token': instance.authToken,
      'user': instance.signInUserData,
    };

_$_SignInUserData _$$_SignInUserDataFromJson(Map<String, dynamic> json) =>
    _$_SignInUserData(
      userId: json['id'] as num,
      name: json['name'] as String,
      emailAddress: json['email'] as String,
      statusCode: json['status'] as num,
    );

Map<String, dynamic> _$$_SignInUserDataToJson(_$_SignInUserData instance) =>
    <String, dynamic>{
      'id': instance.userId,
      'name': instance.name,
      'email': instance.emailAddress,
      'status': instance.statusCode,
    };
