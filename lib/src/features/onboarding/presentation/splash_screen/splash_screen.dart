import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:yourspecially/src/constants/app_colors.dart';
import 'package:yourspecially/src/features/authentication/application/authentication_manager.dart';
import 'package:yourspecially/src/features/authentication/domain/sign_in/sign_in_data.dart';
import 'package:yourspecially/src/routing/routing_config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Box<dynamic> settingsBox = Hive.box('settings');

    bool returningUser = settingsBox.get(
      'returningUser',
      defaultValue: false,
    );

    bool answeredOnboardingQuestionnaire = settingsBox.get(
      'answeredOnboardingQuestionnaire',
      defaultValue: false,
    );

    String userEmail = settingsBox.get(
      'userEmail',
      defaultValue: '',
    );

    String userPassword = settingsBox.get(
      'userPassword',
      defaultValue: '',
    );

    GetIt.I<AuthenticationManager>().signInEmailChangedCmd.execute(userEmail);

    GetIt.I<AuthenticationManager>()
        .signInPasswordChangedCmd
        .execute(userPassword);
//signInScreen
    Future<void>.delayed(
      const Duration(seconds: 5),
      () {
        // Navigator.popAndPushNamed(context, onboardingScreen);
        if (returningUser == true) {
          if (userEmail.isEmpty || userPassword.isEmpty) {
            Navigator.of(context).pushNamedAndRemoveUntil(
              signInScreen,
              (Route<dynamic> route) => false,
            );
          } else {
            GetIt.I<AuthenticationManager>()
                .signInCmd
                .executeWithFuture()
                .whenComplete(
              () {
                GetIt.I<AuthenticationManager>().signInCmd.value.fold(
                  (String left) => left,
                  (SignInData right) {
                    GetIt.I<AuthenticationManager>()
                        .signUpFullNameChangedCmd
                        .execute(right.userName);
                  },
                );
                // await GetIt.I<UserProfileManager>()
                //     .getUserProfileCmd
                //     .executeWithFuture()
                //     .then(
                //   (Either<String, UserProfileData> userData) {
                //     if (userData.isRight() == true) {
                //       userData.fold(
                //         (String l) => l,
                //         (UserProfileData r) {
                //           GetIt.I<QuestionnaireManager>()
                //               .questionnaireFirstNameChangedCmd
                //               .execute(r.name.split(' ')[0]);
                //           GetIt.I<QuestionnaireManager>()
                //               .questionnaireLastNameChangedCmd
                //               .execute(
                //                   (r.name.split(' ')..removeAt(0)).join(' '));
                //           GetIt.I<QuestionnaireManager>()
                //               .questionnairePhoneNumberChangedCmd
                //               .execute(r.phoneNumber ?? '');
                //           GetIt.I<QuestionnaireManager>()
                //               .questionnairePostCodeChangedCmd
                //               .execute(r.postCode ?? '');
                //           return r;
                //         },
                //       );
                //     }
                //   },
                // );

                if (answeredOnboardingQuestionnaire == true) {
                  // GetIt.I<DashboardDetailsManager>()
                  //     .getDashboardDetailsCmd
                  //     .execute();

                  if (mounted) {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      bottomNavigationBar,
                      (Route<dynamic> route) => false,
                    );
                  }
                } else {
                  if (mounted) {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      questionOne,
                      (Route<dynamic> route) => false,
                    );
                  }
                }
              },
            );
          }
        } else {
          Navigator.of(context).pushNamedAndRemoveUntil(
            onboardingScreen,
            (Route<dynamic> route) => false,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              colorBackgroundGradientStart,
              colorBackgroundGradientEnd,
            ],
            tileMode: TileMode.mirror,
          ),
        ),
        child: Image.asset(
          'assets/images/your_specially_v4.gif',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
