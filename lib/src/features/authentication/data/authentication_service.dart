import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logging/logging.dart';
import 'package:yourspecially/src/constants/api_config.dart';
import 'package:yourspecially/src/features/authentication/application/authentication_manager.dart';
import 'package:yourspecially/src/features/authentication/domain/sign_in/sign_in_api_response.dart';
import 'package:yourspecially/src/features/authentication/domain/sign_in/sign_in_data.dart';
import 'package:yourspecially/src/features/authentication/domain/sign_in/sign_in_request_body.dart';
import 'package:yourspecially/src/features/authentication/domain/sign_up/sign_up_api_response.dart';
import 'package:yourspecially/src/features/authentication/domain/sign_up/sign_up_data.dart';
import 'package:yourspecially/src/features/authentication/domain/sign_up/sign_up_request_body.dart';
import 'package:yourspecially/src/features/authentication/domain/sign_up/validate_otp_api_response.dart';
import 'package:yourspecially/src/features/authentication/domain/sign_up/validate_otp_request_body.dart';

class AuthenticationService {
  final Logger logger = Logger('AuthenticationService');
  Dio dio = Dio();

  Future<Either<String, SignInData>> signIn(
    SignInRequestBody signInRequestBody,
  ) async {
    logger.fine('hitting SignIn...');

    logger.fine('email: ${signInRequestBody.userEmail}');
    logger.fine('password: ${signInRequestBody.password}');

    Box<dynamic> settingsBox = Hive.box('settings');

    Response<dynamic> rawApiResponse = await dio.post(
      loginUserApi,
      data: <String, Object>{
        'email': signInRequestBody.userEmail,
        'password': signInRequestBody.password,
        'user_type': 'USER',
      },
    );

    if (rawApiResponse.statusCode == HttpStatus.ok) {
      SignInApiResponse signInApiResponse = await compute(
        (dynamic data) => SignInApiResponse.fromJson(
          Map<String, dynamic>.from(data),
        ),
        rawApiResponse.data,
      );

      logger.fine('success response: $signInApiResponse');

      await settingsBox.put('userEmail', signInRequestBody.userEmail);
      await settingsBox.put('userPassword', signInRequestBody.password);
      await settingsBox.put(
          'userAuthToken', signInApiResponse.signInApiData.authToken);

      GetIt.I<AuthenticationManager>().setSignInSuccessStateCmd.execute(true);
      return Either<String, SignInData>.right(SignInData(signInApiResponse));
    } else {
      GetIt.I<AuthenticationManager>().signInErrorChangedCmd.execute(
            'Your account is not verified or the login credentials are invalid.',
          );
      GetIt.I<AuthenticationManager>().setSignInErrorStateCmd.execute(true);
      return Either<String, SignInData>.left(
        'Your account is not verified or the login credentials are invalid.',
      );
    }
  }

  Future<Either<String, SignUpApiResponse>> signUp(
    SignUpRequestBody signUpRequestBody,
  ) async {
    logger.fine('hitting SignUp...');

    Box<dynamic> settingsBox = Hive.box('settings');

    Response<dynamic> rawApiResponse = await dio.post(
      registerUserApi,
      data: <String, Object>{
        'name': signUpRequestBody.userName,
        'email': signUpRequestBody.userEmail,
        'password': signUpRequestBody.password,
        'user_type': 'USER',

        // 'username':'sujeet86',
        // 'password':signUpRequestBody.password,
        // 'name':signUpRequestBody.fname,
        // 'email':signUpRequestBody.userEmail,
        // 'phone':signUpRequestBody.phoneNumber,
        
      },
    );

    logger.fine('Status code: ${rawApiResponse.statusCode}');

    if (rawApiResponse.statusCode == HttpStatus.ok) {
      SignUpApiResponse signUpApiResponse = await compute(
        (dynamic data) => SignUpApiResponse.fromJson(
          Map<String, dynamic>.from(data),
        ),
        rawApiResponse.data,
      );

      logger.fine('success response: $signUpApiResponse');
      logger.fine('success response: ${signUpApiResponse.signUpApiData.otp}');

      await settingsBox.put('userPhoneNumber', signUpRequestBody.phoneNumber);

      GetIt.I<AuthenticationManager>().setSignUpSuccessStateCmd.execute(true);
      return Either<String, SignUpApiResponse>.right(signUpApiResponse);
    } else {
      GetIt.I<AuthenticationManager>().signUpErrorChangedCmd.execute(
            'This email has already been taken. Please use a different email address.',
          );
      GetIt.I<AuthenticationManager>().setSignUpErrorStateCmd.execute(true);
      return Either<String, SignUpApiResponse>.left(
        'This email has already been taken. Please use a different email address.',
      );
    }
  }

  Future<Either<String, SignUpData>> validateUser(
    ValidateOtpRequestBody validateOtpRequestBody,
  ) async {
    logger.fine('hitting ValidateUser...');

    Box<dynamic> settingsBox = Hive.box('settings');

    Response<dynamic> rawApiResponse = await dio.post(
      validateUserApi,
      data: <String, Object>{
        'email': validateOtpRequestBody.userEmail,
        'otp': validateOtpRequestBody.otp,
        'type': 'REGISTER',
      },
    );

    if (rawApiResponse.statusCode == HttpStatus.ok) {
      ValidateOtpApiResponse validateOtpApiResponse = await compute(
        (dynamic data) => ValidateOtpApiResponse.fromJson(
          Map<String, dynamic>.from(data),
        ),
        rawApiResponse.data,
      );

      logger.fine('success response: $validateOtpApiResponse');

      await settingsBox.put(
          'userEmail',
          validateOtpApiResponse
              .validateOtpApiData.validatedUserData.emailAddress);
      await settingsBox.put('userPassword',
          GetIt.I<AuthenticationManager>().signUpPasswordChangedCmd.value);
      await settingsBox.put(
          'userAuthToken', validateOtpApiResponse.validateOtpApiData.authToken);

      GetIt.I<AuthenticationManager>().setSignInSuccessStateCmd.execute(true);
      return Either<String, SignUpData>.right(
          SignUpData(validateOtpApiResponse));
    } else {
      GetIt.I<AuthenticationManager>().signInErrorChangedCmd.execute(
            'Your account is not verified or the login credentials are invalid.',
          );
      GetIt.I<AuthenticationManager>().setSignInErrorStateCmd.execute(true);
      return Either<String, SignUpData>.left(
        'Your account is not verified or the login credentials are invalid.',
      );
    }
  }
}
