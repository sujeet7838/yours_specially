import 'package:flutter_command/flutter_command.dart';
import 'package:fpdart/fpdart.dart';
import 'package:get_it/get_it.dart';
import 'package:yourspecially/src/features/authentication/data/authentication_service.dart';
import 'package:yourspecially/src/features/authentication/domain/sign_in/sign_in_data.dart';
import 'package:yourspecially/src/features/authentication/domain/sign_in/sign_in_request_body.dart';
import 'package:yourspecially/src/features/authentication/domain/sign_up/sign_up_api_response.dart';
import 'package:yourspecially/src/features/authentication/domain/sign_up/sign_up_data.dart';
import 'package:yourspecially/src/features/authentication/domain/sign_up/sign_up_request_body.dart';
import 'package:yourspecially/src/features/authentication/domain/sign_up/validate_otp_request_body.dart';

class AuthenticationManager {
  late Command<bool, bool> setSignInErrorStateCmd;
  late Command<String, String> signInErrorChangedCmd;
  late Command<bool, bool> setSignInSuccessStateCmd;
  late Command<void, Either<String, SignInData>> signInCmd;
  late Command<String, String> signInEmailChangedCmd;
  late Command<String, String> signInPasswordChangedCmd;
  late Command<bool, bool> setSignInButtonStateCmd;

  late Command<bool, bool> setSignUpErrorStateCmd;
  late Command<String, String> signUpErrorChangedCmd;
  late Command<bool, bool> setSignUpSuccessStateCmd;
  late Command<void, Either<String, SignUpApiResponse>> signUpCmd;
  late Command<String, String> signUpFullNameChangedCmd;
  //late Command<String, String> signUpUserNameChangedCmd;
  late Command<String, String> signUpEmailChangedCmd;
  late Command<String, String> signUpPhoneNumberChangedCmd;
  late Command<String, String> signUpPasswordChangedCmd;
  late Command<bool, bool> setSignUpButtonStateCmd;

  late Command<bool, bool> setValidateOtpErrorStateCmd;
  late Command<String, String> validateOtpErrorChangedCmd;
  late Command<bool, bool> setValidateOtpSuccessStateCmd;
  late Command<void, Either<String, SignUpData>> validateOtpCmd;
  // late Command<String, String> otpFirstDigitChangedCmd;
  // late Command<String, String> otpSecondDigitChangedCmd;
  // late Command<String, String> otpThirdDigitChangedCmd;
  // late Command<String, String> otpFourthDigitChangedCmd;
  // late Command<String, String> otpFifthDigitChangedCmd;
  late Command<String, String> otpChangedCmd;
  late Command<bool, bool> setValidateOtpButtonStateCmd;

  AuthenticationManager() {
    setSignInErrorStateCmd = Command.createSync(
      (bool errorState) => errorState,
      false,
    );

    signInErrorChangedCmd = Command.createSync(
      (String error) => error,
      '',
    );

    setSignInSuccessStateCmd = Command.createSync(
      (bool successState) => successState,
      false,
    );

    signInEmailChangedCmd = Command.createSync(
      (String value) => value,
      '',
    );

    signInPasswordChangedCmd = Command.createSync(
      (String value) => value,
      '',
    );

    setSignInButtonStateCmd =
        Command.createSync((bool buttonState) => buttonState, true);

    signInEmailChangedCmd
        .debounce(const Duration(milliseconds: 10))
        .listen((String emailValue, _) {
      if (emailValue.isEmpty || signInPasswordChangedCmd.value.isEmpty) {
        setSignInButtonStateCmd.execute(true);
      } else {
        setSignInButtonStateCmd.execute(false);
      }
    });

    signInPasswordChangedCmd
        .debounce(const Duration(milliseconds: 10))
        .listen((String passwordValue, _) {
      if (signInEmailChangedCmd.value.isEmpty || passwordValue.isEmpty) {
        setSignInButtonStateCmd.execute(true);
      } else {
        setSignInButtonStateCmd.execute(false);
      }
    });

    signInCmd = Command.createAsyncNoParam(
      () => GetIt.I<AuthenticationService>().signIn(
        SignInRequestBody(
          userEmail: signInEmailChangedCmd.value,
          password: signInPasswordChangedCmd.value,
        ),
      ),
      Either<String, SignInData>.left(''),
    );

    setSignUpErrorStateCmd = Command.createSync(
      (bool errorState) => errorState,
      false,
    );

    signUpErrorChangedCmd = Command.createSync(
      (String error) => error,
      '',
    );

    setSignUpSuccessStateCmd = Command.createSync(
      (bool successState) => successState,
      false,
    );

    signUpFullNameChangedCmd = Command.createSync(
      (String value) => value,
      '',
    );

    signUpEmailChangedCmd = Command.createSync(
      (String value) => value,
      '',
    );

    signUpPhoneNumberChangedCmd = Command.createSync(
      (String value) => value,
      '',
    );

    signUpPasswordChangedCmd = Command.createSync(
      (String value) => value,
      '',
    );

    setSignUpButtonStateCmd =
        Command.createSync((bool buttonState) => buttonState, true);

    signUpFullNameChangedCmd
        .debounce(const Duration(milliseconds: 10))
        .listen((String fullNameValue, _) {
      if (fullNameValue.isEmpty ||
          signUpEmailChangedCmd.value.isEmpty ||
          signUpPhoneNumberChangedCmd.value.isEmpty ||
          signUpPasswordChangedCmd.value.isEmpty) {
        setSignUpButtonStateCmd.execute(true);
      } else {
        setSignUpButtonStateCmd.execute(false);
      }
    });

    signUpEmailChangedCmd
        .debounce(const Duration(milliseconds: 10))
        .listen((String emailValue, _) {
      if (emailValue.isEmpty ||
          signUpFullNameChangedCmd.value.isEmpty ||
          signUpPhoneNumberChangedCmd.value.isEmpty ||
          signUpPasswordChangedCmd.value.isEmpty) {
        setSignUpButtonStateCmd.execute(true);
      } else {
        setSignUpButtonStateCmd.execute(false);
      }
    });

    signUpPhoneNumberChangedCmd
        .debounce(const Duration(milliseconds: 10))
        .listen((String phoneNumberValue, _) {
      if (phoneNumberValue.isEmpty ||
          signUpFullNameChangedCmd.value.isEmpty ||
          signUpEmailChangedCmd.value.isEmpty ||
          signUpPasswordChangedCmd.value.isEmpty) {
        setSignUpButtonStateCmd.execute(true);
      } else {
        setSignUpButtonStateCmd.execute(false);
      } 
    });

    signUpPasswordChangedCmd
        .debounce(const Duration(milliseconds: 10))
        .listen((String passwordValue, _) {
      if (passwordValue.isEmpty ||
          signUpFullNameChangedCmd.value.isEmpty ||
          signUpEmailChangedCmd.value.isEmpty ||
          signUpPhoneNumberChangedCmd.value.isEmpty) {
        setSignUpButtonStateCmd.execute(true);
      } else {
        setSignUpButtonStateCmd.execute(false);
      }
    });


    signUpCmd = Command.createAsyncNoParam(
      () => GetIt.I<AuthenticationService>().signUp(
        SignUpRequestBody(
       // fname: signUpUserNameChangedCmd.value,
          userName: signUpFullNameChangedCmd.value,
          userEmail: signUpEmailChangedCmd.value,
          password: signUpPasswordChangedCmd.value,
          phoneNumber: signUpPhoneNumberChangedCmd.value,
        ),
      ),
      Either<String, SignUpApiResponse>.left(''),
    );

    setValidateOtpErrorStateCmd = Command.createSync(
      (bool errorState) => errorState,
      false,
    );

    validateOtpErrorChangedCmd = Command.createSync(
      (String error) => error,
      '',
    );

    setValidateOtpSuccessStateCmd = Command.createSync(
      (bool successState) => successState,
      false,
    );

    // otpFirstDigitChangedCmd = Command.createSync(
    //   (String value) => value,
    //   '',
    // );

    // otpSecondDigitChangedCmd = Command.createSync(
    //   (String value) => value,
    //   '',
    // );

    // otpThirdDigitChangedCmd = Command.createSync(
    //   (String value) => value,
    //   '',
    // );

    // otpFourthDigitChangedCmd = Command.createSync(
    //   (String value) => value,
    //   '',
    // );

    // otpFifthDigitChangedCmd = Command.createSync(
    //   (String value) => value,
    //   '',
    // );

    otpChangedCmd = Command.createSync(
      (String value) => value,
      '',
    );

    setValidateOtpButtonStateCmd =
        Command.createSync((bool buttonState) => buttonState, true);

    otpChangedCmd
        .debounce(const Duration(milliseconds: 10))
        .listen((String otpValue, _) {
      if (otpValue.isEmpty || otpValue.length != 6) {
        setValidateOtpButtonStateCmd.execute(true);
      } else {
        setValidateOtpButtonStateCmd.execute(false);
      }
    });

    // otpSecondDigitChangedCmd
    //     .debounce(const Duration(milliseconds: 10))
    //     .listen((String secondDigitValue, _) {
    //   if (secondDigitValue.isEmpty ||
    //       otpFirstDigitChangedCmd.value.isEmpty ||
    //       otpThirdDigitChangedCmd.value.isEmpty ||
    //       otpFourthDigitChangedCmd.value.isEmpty ||
    //       otpFifthDigitChangedCmd.value.isEmpty) {
    //     setValidateOtpButtonStateCmd.execute(true);
    //   } else {
    //     setValidateOtpButtonStateCmd.execute(false);
    //   }
    // });

    // otpThirdDigitChangedCmd
    //     .debounce(const Duration(milliseconds: 10))
    //     .listen((String thirdDigitValue, _) {
    //   if (thirdDigitValue.isEmpty ||
    //       otpFirstDigitChangedCmd.value.isEmpty ||
    //       otpSecondDigitChangedCmd.value.isEmpty ||
    //       otpFourthDigitChangedCmd.value.isEmpty ||
    //       otpFifthDigitChangedCmd.value.isEmpty) {
    //     setValidateOtpButtonStateCmd.execute(true);
    //   } else {
    //     setValidateOtpButtonStateCmd.execute(false);
    //   }
    // });

    // otpFourthDigitChangedCmd
    //     .debounce(const Duration(milliseconds: 10))
    //     .listen((String fourthDigitValue, _) {
    //   if (fourthDigitValue.isEmpty ||
    //       otpFirstDigitChangedCmd.value.isEmpty ||
    //       otpSecondDigitChangedCmd.value.isEmpty ||
    //       otpThirdDigitChangedCmd.value.isEmpty ||
    //       otpFifthDigitChangedCmd.value.isEmpty) {
    //     setValidateOtpButtonStateCmd.execute(true);
    //   } else {
    //     setValidateOtpButtonStateCmd.execute(false);
    //   }
    // });

    // otpFifthDigitChangedCmd
    //     .debounce(const Duration(milliseconds: 10))
    //     .listen((String fifthDigitValue, _) {
    //   if (fifthDigitValue.isEmpty ||
    //       otpFirstDigitChangedCmd.value.isEmpty ||
    //       otpSecondDigitChangedCmd.value.isEmpty ||
    //       otpThirdDigitChangedCmd.value.isEmpty ||
    //       otpFourthDigitChangedCmd.value.isEmpty) {
    //     setValidateOtpButtonStateCmd.execute(true);
    //   } else {
    //     setValidateOtpButtonStateCmd.execute(false);
    //   }
    // });

    validateOtpCmd = Command.createAsyncNoParam(
      () => GetIt.I<AuthenticationService>().validateUser(
        ValidateOtpRequestBody(
          userEmail: signUpEmailChangedCmd.value,
          otp: otpChangedCmd.value,
        ),
      ),
      Either<String, SignUpData>.left(''),
    );
  }
}
