import 'package:yourspecially/src/features/authentication/domain/sign_in/sign_in_api_response.dart';

class SignInData {
  late String authToken;
  late num userId;
  late String userName;
  late String userEmail;
  late num status;

  SignInData(SignInApiResponse signInApiResponse) {
    authToken = signInApiResponse.signInApiData.authToken;
    userId = signInApiResponse.signInApiData.signInUserData.userId;
    userName = signInApiResponse.signInApiData.signInUserData.name;
    userEmail = signInApiResponse.signInApiData.signInUserData.emailAddress;
    status = signInApiResponse.signInApiData.signInUserData.statusCode;
  }
}
