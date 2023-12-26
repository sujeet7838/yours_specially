import 'package:yourspecially/src/features/authentication/domain/sign_up/validate_otp_api_response.dart';

class SignUpData {
  late String authToken;
  late num userId;
  late String userName;
  late String userEmail;
  late num status;

  SignUpData(ValidateOtpApiResponse validateOtpApiResponse) {
    authToken = validateOtpApiResponse.validateOtpApiData.authToken;
    userId = validateOtpApiResponse.validateOtpApiData.validatedUserData.userId;
    userName = validateOtpApiResponse.validateOtpApiData.validatedUserData.name;
    userEmail = validateOtpApiResponse
        .validateOtpApiData.validatedUserData.emailAddress;
    status =
        validateOtpApiResponse.validateOtpApiData.validatedUserData.statusCode;
  }
}
