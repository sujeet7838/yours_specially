// ignore_for_file: always_specify_types

import 'package:flutter/material.dart';
import 'package:yourspecially/src/features/authentication/presentation/forgot_password/forgot_password.dart';
import 'package:yourspecially/src/features/authentication/presentation/otp_screen/otp_screen.dart';
import 'package:yourspecially/src/features/authentication/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:yourspecially/src/features/authentication/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:yourspecially/src/features/cart/cart_screen.dart';
import 'package:yourspecially/src/features/contacts/contact_details_screen.dart';
import 'package:yourspecially/src/features/onboarding/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:yourspecially/src/features/onboarding/presentation/splash_screen/splash_screen.dart';
import 'package:yourspecially/src/features/privacy_settings/change_password.dart';
import 'package:yourspecially/src/features/privacy_settings/update_password.dart';
import 'package:yourspecially/src/features/questions/question_one.dart';
import 'package:yourspecially/src/features/questions/question_one.five.dart';
import 'package:yourspecially/src/features/questions/question_three.dart';
import 'package:yourspecially/src/features/questions/question_two.dart';
import 'package:yourspecially/src/features/questions/questions.dart';
import 'package:yourspecially/src/features/social_login/social_login.dart';
import 'package:yourspecially/src/routing/routing_config.dart';
import 'package:yourspecially/src/widgets/bottom_navigation_bar.dart';

import '../features/choose_frnds/choose_frnds.dart';
import '../features/profile_screens/edit_personal_details.dart';
import '../features/profile_screens/personal_details.dart';

Route<dynamic> generateRoutes(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case splashScreen:
      return MaterialPageRoute(
        // builder: (context) => const SplashScreen(),
         builder: (context) => const SplashScreen(),
      );

    case onboardingScreen:
      return MaterialPageRoute(
        builder: (context) => OnboardingScreen(),
      );

    case signInScreen:
      return MaterialPageRoute(
        builder: (context) => SignInScreen(),
      );

    case signUpScreen:
      return MaterialPageRoute(
        builder: (context) => SignUpScreen(),
      );

    case forgotPassword:
      return MaterialPageRoute(
        builder: (context) => const ForgotPassword(),
      );

    case otpScreen:
      return MaterialPageRoute(
        builder: (context) => OtpScreen(),
      );

    // case questions:
    //   return MaterialPageRoute(
    //     builder: (context) => const Questions(),
    //   );p

    case questionOne:
      return MaterialPageRoute(
        builder: (context) => QuestionOne(),
      );

    case questionOnePointFive:
      return MaterialPageRoute(
        builder: (context) => QuestionOnePointFive(),
      );

    case questionTwo:
      return MaterialPageRoute(
        builder: (context) => QuestionTwo(),
      );

    case questionThree:
      return MaterialPageRoute(
        builder: (context) => QuestionThree(),
      );

    case socialLogin:
      return MaterialPageRoute(
        builder: (context) => const SocialLogin(),
      );

    case chooseFriends:
      return MaterialPageRoute(
        builder: (context) => const ChooseFriends(),
      );

    case personalDetailsScreen:
      return MaterialPageRoute(
        builder: (context) => PersonalDetailsScreen(),
      );

    case editpersonalDetailsScreen:
      return MaterialPageRoute(
        builder: (context) => const EditPersonalDetailsScreen(),
      );

    case changePasswordScreen:
      return MaterialPageRoute(
        builder: (context) => const ChangePasswordScreen(),
      );

    case updatePasswordScreen:
      return MaterialPageRoute(
        builder: (context) => const UpdatePasswordScreen(),
      );

    case cartScreen:
      return MaterialPageRoute(
        builder: (context) => CartScreen(),
      );

    // case contactDetailsScreen:
    //   return MaterialPageRoute(
    //     builder: (context) => ContactDetailsScreen(),
    //   );

    case bottomNavigationBar:
      return MaterialPageRoute(
        builder: (context) => BottomNavigation(),
      );

    default:
      return MaterialPageRoute(
        builder: (BuildContext context) => Scaffold(
          body: Center(
            child: Text(
              'No route defined for ${routeSettings.name}',
            ),
          ),
        ),
      );
  }
}
