import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it_mixin/get_it_mixin.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:yourspecially/src/constants/app_colors.dart';
import 'package:yourspecially/src/features/authentication/application/authentication_manager.dart';
import 'package:yourspecially/src/features/authentication/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:yourspecially/src/routing/routing_config.dart';
import 'package:yourspecially/src/utils/device_size_config.dart';

class SignUpScreen extends StatelessWidget with GetItMixin {
  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, [bool mounted = true]) {
    DeviceSizeConfig deviceSizeConfig = DeviceSizeConfig(context);

    bool isExecutingSignUp =
        watchX((AuthenticationManager x) => x.signUpCmd.isExecuting);

    // bool isExecutingGetProfile =
    //     watchX((UserProfileManager x) => x.getUserProfileCmd.isExecuting);

    bool signUpButtonState =
        watchX((AuthenticationManager x) => x.setSignUpButtonStateCmd);

    bool isFailure =
        watchX((AuthenticationManager x) => x.setSignUpErrorStateCmd);

    String errorMessage =
        watchX((AuthenticationManager x) => x.signUpErrorChangedCmd);

    bool isSuccessful =
        watchX((AuthenticationManager x) => x.setSignUpSuccessStateCmd);

    registerHandler(
      (AuthenticationManager x) => x.setSignUpSuccessStateCmd,
      (
        BuildContext context,
        bool successState,
        void Function() cancel,
      ) {
        if (successState == true) {
          Future<void>.delayed(
            const Duration(
              seconds: 10,
            ),
            () {
              // get<AuthenticationManager>().signUpFullNameChangedCmd.execute('');
              // get<AuthenticationManager>().signUpEmailChangedCmd.execute('');
              // get<AuthenticationManager>().signUpPasswordChangedCmd.execute('');

              // get<AuthenticationManager>()
              //     .setSignUpSuccessStateCmd
              //     .execute(false);

              // get<AuthenticationManager>()
              //     .setSignUpErrorStateCmd
              //     .execute(false);
              // get<AuthenticationManager>().signUpErrorChangedCmd.execute('');

              Navigator.of(context).pushNamedAndRemoveUntil(
                otpScreen,
                (Route<dynamic> route) => false,
              );
            },
          );
        }
      },
    );

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 24.0,
              top: 16.0,
              bottom: 16.0,
            ),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: <double>[
                  0.25,
                  0.65,
                  0.75,
                ],
                colors: <Color>[
                  colorBackgroundGradientStart,
                  colorBackgroundGradientEnd,
                  Colors.white,
                ],
                tileMode: TileMode.clamp,
              ),
            ),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 75.0,
                ),
                Image.asset(
                  'assets/images/auth_graphic.png',
                  height: deviceSizeConfig.blockSizeVertical * 40,
                ),
              ],
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.5,
            minChildSize: 0.5,
            maxChildSize: 0.8,
            snap: true,
            builder: (
              BuildContext context,
              ScrollController scrollController,
            ) {
              return Container(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  right: 24.0,
                  bottom: 16.0,
                  top: 10.0,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32.0),
                    topRight: Radius.circular(32.0),
                  ),
                ),
                child: ListView(
                  controller: scrollController,
                  children: <Widget>[
                    Text(
                      'Sign Up To \nExplore Exciting Things',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                            fontSize: 22.0,
                            color: const Color(0XFF1E1E1E),
                          ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    isFailure == true
                        ? Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 12.0,
                            ),
                            margin: const EdgeInsets.only(
                              bottom: 20.0,
                            ),
                            decoration: BoxDecoration(
                                color: const Color(0XFFFFF3CD),
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color:
                                      const Color(0XFF856404).withOpacity(0.5),
                                  width: 1.5,
                                )),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    errorMessage,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        ?.copyWith(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 0.25,
                                          color: const Color(0XFF856404),
                                        ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20.0,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    get<AuthenticationManager>()
                                        .setSignUpErrorStateCmd
                                        .execute(false);
                                    get<AuthenticationManager>()
                                        .signUpErrorChangedCmd
                                        .execute('');
                                  },
                                  child: const Icon(
                                    CupertinoIcons.xmark_square_fill,
                                    color: Color(0XFFC2AC68),
                                    size: 24.0,
                                  ),
                                )
                              ],
                            ),
                          )
                        : Container(),
                    isSuccessful == true
                        ? Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 12.0,
                            ),
                            margin: const EdgeInsets.only(
                              bottom: 20.0,
                            ),
                            decoration: BoxDecoration(
                                color: const Color(0XFFDAECDB),
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color:
                                      const Color(0XFF2A562A).withOpacity(0.5),
                                  width: 1.5,
                                )),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    "You're almost there. We have sent a 5 digit code to your email ${get<AuthenticationManager>().signUpEmailChangedCmd.value}. Open the email and enter the code in the next step to complete your sign up. If you don't see it, please check your spam folder.",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        ?.copyWith(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 0.25,
                                          color: const Color(0XFF2A562A),
                                        ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20.0,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    get<AuthenticationManager>()
                                        .setSignUpSuccessStateCmd
                                        .execute(false);
                                  },
                                  child: const Icon(
                                    CupertinoIcons.xmark_square_fill,
                                    color: Color(0XFF81A182),
                                    size: 24.0,
                                  ),
                                )
                              ],
                            ),
                          )
                        : Container(),
                    YourSpeciallyTextField(
                      hintText: 'Full Name',
                      keyboardType: TextInputType.text,
                      onChanged:
                          get<AuthenticationManager>().signUpFullNameChangedCmd,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    YourSpeciallyTextField(
                      hintText: 'Email Address',
                      keyboardType: TextInputType.emailAddress,
                      onChanged:
                          get<AuthenticationManager>().signUpEmailChangedCmd,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    YourSpeciallyTextField(
                      hintText: 'Phone Number',
                      keyboardType: TextInputType.text,
                      onChanged: get<AuthenticationManager>()
                          .signUpPhoneNumberChangedCmd,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    YourSpeciallyPasswordField(
                      keyboardType: TextInputType.text,
                      onChanged:
                          get<AuthenticationManager>().signUpPasswordChangedCmd,
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    ElevatedButton(
                      onPressed: signUpButtonState == true
                          ? null
                          : () async {
                              // await getPermission();
                              get<AuthenticationManager>().signUpCmd.execute();
                            },
                            // foregroundColor: const Color(0xffFFFFFF),
                        //backgroundColor: const Color(0xffFFB93E),
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                         onPrimary: const Color(0xffFFFFFF),
                        primary: const Color(0xffFFB93E),
                        minimumSize: const Size(double.infinity, 55.0),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        textStyle: Theme.of(context).textTheme.button?.copyWith(
                              fontSize: 15.0,
                            ),
                      ),
                      child: isExecutingSignUp == true
                          ? const CupertinoActivityIndicator(
                              color: Colors.white,
                            )
                          : const Text(
                              'SIGN UP',
                            ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Already have an account?',
                          style:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontSize: 14,
                                  ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, signInScreen),
                          child: Text(
                            'SIGN IN',
                            style:
                                Theme.of(context).textTheme.bodyText1?.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xffFFB93E),
                                    ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Center(
                      child: Text(
                        'or Sign Up with',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              fontSize: 14,
                            ),
                      ),
                    ),
                    Image.asset(
                      'assets/images/social_logos.png',
                      height: deviceSizeConfig.blockSizeVertical * 15,
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

// class SignUpScreen2 extends StatelessWidget {
//   const SignUpScreen2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     DeviceSizeConfig deviceSizeConfig = DeviceSizeConfig(context);

//     return Material(
//       color: Colors.white,
//       child: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             stops: <double>[
//               0.25,
//               0.65,
//               0.75,
//             ],
//             colors: <Color>[
//               colorBackgroundGradientStart,
//               colorBackgroundGradientEnd,
//               Colors.white,
//             ],
//             tileMode: TileMode.clamp,
//           ),
//         ),
//         child: ListView(
//           // ignore: always_specify_types
//           children: [
//             SizedBox(
//               height: deviceSizeConfig.blockSizeVertical * 40,
//               width: double.infinity,
//               child: Image.asset(
//                 'assets/images/auth_graphic.png',
//                 height: deviceSizeConfig.blockSizeVertical * 40,
//               ),
//             ),
//             const SizedBox(
//               height: 25.0,
//             ),
//             Container(
//               width: double.infinity,
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(30.0),
//                   topRight: Radius.circular(30.0),
//                 ),
//               ),
//               child: Padding(
//                 padding:
//                     EdgeInsets.symmetric(horizontal: 35.0.w, vertical: 10.w),
//                 child: Column(
//                   children: <Widget>[
//                     const Padding(
//                       padding: EdgeInsets.only(
//                         top: 10.0,
//                         bottom: 10.0,
//                         left: 40,
//                         right: 40.0,
//                       ),
//                       child: Text(
//                         'Sign Up To Explore Exciting Things',
//                         maxLines: 2,
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 22.0,
//                           color: Color(0xff1E1E1E),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 15.0,
//                     ),
//                     const YourSpeciallyTextField(
//                       hintText: 'Username',
//                     ),
//                     const SizedBox(
//                       height: 10.0,
//                     ),
//                     const YourSpeciallyTextField(
//                       hintText: 'Email Address',
//                     ),
//                     const SizedBox(
//                       height: 10.0,
//                     ),
//                     const YourSpeciallyPasswordField(),
//                     const SizedBox(
//                       height: 50.0,
//                     ),
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         elevation: 0.0,
//                         onPrimary: const Color(0xffFFFFFF),
//                         primary: const Color(0xffFFB93E),
//                         minimumSize: const Size(double.infinity, 55.0),
//                         padding: const EdgeInsets.symmetric(horizontal: 16),
//                         shape: const RoundedRectangleBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(40.0)),
//                         ),
//                         textStyle: const TextStyle(
//                           fontSize: 14.0,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       child: const Text(
//                         'SIGN UP',
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 10.0,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         const Text(
//                           'Already have an account?',
//                         ),
//                         const SizedBox(
//                           width: 5.0,
//                         ),
//                         GestureDetector(
//                           onTap: () =>
//                               Navigator.pushNamed(context, signInScreen),
//                           child: const Text(
//                             'SIGN IN INSTEAD',
//                             style: TextStyle(
//                               color: Color(0xffFFB93E),
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 20.h,
//                     ),
//                     const Text(
//                       'Or Sign Up with',
//                     ),
//                     // const SizedBox(
//                     //   height: 5.0,
//                     // ),
//                     Image.asset(
//                       'assets/images/social_logos.png',
//                       height: deviceSizeConfig.blockSizeVertical * 15,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
