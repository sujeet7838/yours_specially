import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it_mixin/get_it_mixin.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:yourspecially/src/constants/app_colors.dart';
import 'package:yourspecially/src/features/authentication/application/authentication_manager.dart';
import 'package:yourspecially/src/routing/routing_config.dart';
import 'package:yourspecially/src/utils/device_size_config.dart';

class SignInScreen extends StatelessWidget with GetItMixin {
  SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, [bool mounted = true]) {
    DeviceSizeConfig deviceSizeConfig = DeviceSizeConfig(context);

    bool isExecutingLogin =
        watchX((AuthenticationManager x) => x.signInCmd.isExecuting);

    // bool isExecutingGetProfile =
    //     watchX((UserProfileManager x) => x.getUserProfileCmd.isExecuting);

    bool signInButtonState =
        watchX((AuthenticationManager x) => x.setSignInButtonStateCmd);

    bool isFailure =
        watchX((AuthenticationManager x) => x.setSignInErrorStateCmd);

    String errorMessage =
        watchX((AuthenticationManager x) => x.signInErrorChangedCmd);

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
                    left: 24.0, right: 24.0, bottom: 16.0, top: 10.0),
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
                      'A Happier World \nThrough Gift-Giving',
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
                    YourSpeciallyTextField(
                      hintText: 'Email Address',
                      keyboardType: TextInputType.emailAddress,
                      onChanged:
                          get<AuthenticationManager>().signInEmailChangedCmd,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    YourSpeciallyPasswordField(
                      keyboardType: TextInputType.text,
                      onChanged:
                          get<AuthenticationManager>().signInPasswordChangedCmd,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, forgotPassword),
                          child: Text(
                            'Forgot Your Password?',
                            style:
                                Theme.of(context).textTheme.bodyText1?.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xffFFB93E),
                                    ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    ElevatedButton(
                      onPressed: signInButtonState == true
                          ? null
                          : () async {
                              // await getPermission();
                              get<AuthenticationManager>()
                                  .signInCmd
                                  .executeWithFuture()
                                  .whenComplete(
                                () {
                                  if (mounted) {
                                    Box<dynamic> settingsBox =
                                        Hive.box('settings');

                                    bool answeredOnboardingQuestionnaire =
                                        settingsBox.get(
                                      'answeredOnboardingQuestionnaire',
                                      defaultValue: false,
                                    );

                                    if (answeredOnboardingQuestionnaire ==
                                        true) {
                                      Navigator.of(context)
                                          .pushNamedAndRemoveUntil(
                                        bottomNavigationBar,
                                        (Route<dynamic> route) => false,
                                      );
                                    } else {
                                      Navigator.of(context)
                                          .pushNamedAndRemoveUntil(
                                        questionOne,
                                        (Route<dynamic> route) => false,
                                      );
                                    }
                                  }
                                },
                              );
                            },
                      // foregroundColor: const Color(0xffFFFFFF),
                      // backgroundColor: const Color(0xffFFB93E),
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        onPrimary: const Color(0xffFFFFFF),
                        primary: const Color(0xffFFB93E),
                        shadowColor: Color.fromARGB(255, 62, 255, 126),
                        minimumSize: const Size(double.infinity, 55.0),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        textStyle: Theme.of(context).textTheme.button?.copyWith(
                              fontSize: 15.0,
                            ),
                      ),
                      child: isExecutingLogin == true
                          ? const CupertinoActivityIndicator(
                              color: Colors.white,
                            )
                          : const Text(
                              'SIGN IN',
                            ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Do not have an account?',
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
                              Navigator.pushNamed(context, signUpScreen),
                          child: Text(
                            'SIGN UP NOW',
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
                      height: 5.0,
                    ),
                    Center(
                      child: Text(
                        'or Sign In with',
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

// class SignInScreen2 extends StatelessWidget {
//   const SignInScreen2({Key? key}) : super(key: key);

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
//                     EdgeInsets.symmetric(horizontal: 35.0.w, vertical: 15.w),
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
//                         'A Happier World Through Gift-Giving',
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
//                       hintText: 'Email Address',
//                     ),
//                     const SizedBox(
//                       height: 10.0,
//                     ),
//                     const YourSpeciallyPasswordField(),
//                     const SizedBox(
//                       height: 10.0,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: <Widget>[
//                         GestureDetector(
//                           onTap: () =>
//                               Navigator.pushNamed(context, forgotPassword),
//                           child: const Text(
//                             'Forgot Your Password?',
//                             style: TextStyle(
//                               color: Color(0xffFFB93E),
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 50.0,
//                     ),
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         elevation: 0.0,
//                         foregroundColor: const Color(0xffFFFFFF),
//                         backgroundColor: const Color(0xffFFB93E),
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
//                         'SIGN IN',
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 10.0,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         const Text(
//                           'Do not have an account?',
//                         ),
//                         const SizedBox(
//                           width: 5.0,
//                         ),
//                         GestureDetector(
//                           onTap: () =>
//                               Navigator.pushNamed(context, signUpScreen),
//                           child: const Text(
//                             'SIGN UP NOW',
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
//                       'Or Sign In with',
//                     ),
//                     // SizedBox(
//                     //   height: 2.0.h,
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

class YourSpeciallyTextField extends StatelessWidget {
  const YourSpeciallyTextField({
    Key? key,
    required this.hintText,
    this.keyboardType,
    this.onChanged,
  }) : super(key: key);

  final String hintText;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
          top: 13.0,
          bottom: 13.0,
          left: 20.0,
          right: 20.0,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffAAAAAA),
            width: 1.5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              20.0,
            ),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: colorPrimarySeed,
            width: 1.5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              20.0,
            ),
          ),
        ),
        hintText: hintText,
      ),
    );
  }
}

class YourSpeciallyPasswordField extends StatefulWidget {
  const YourSpeciallyPasswordField({
    Key? key,
    this.keyboardType,
    this.onChanged,
  }) : super(key: key);

  final TextInputType? keyboardType;
  final void Function(String)? onChanged;

  @override
  State<YourSpeciallyPasswordField> createState() =>
      _YourSpeciallyPasswordFieldState();
}

class _YourSpeciallyPasswordFieldState
    extends State<YourSpeciallyPasswordField> {
  bool textIsObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: textIsObscure,
      keyboardType: widget.keyboardType,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
          top: 13.0,
          bottom: 13.0,
          left: 20.0,
          right: 20.0,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffAAAAAA),
            width: 1.5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              20.0,
            ),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: colorPrimarySeed,
            width: 1.5,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              20.0,
            ),
          ),
        ),
        hintText: 'Password',
        suffixIcon: IconButton(
          onPressed: () {
            setState(() => textIsObscure = !textIsObscure);
          },
          icon: textIsObscure == true
              ? const Icon(
                  Icons.visibility_off_outlined,
                  color: Color(0xffAAAAAA),
                )
              : const Icon(
                  Icons.visibility_outlined,
                  color: Color(0xffAAAAAA),
                ),
        ),
      ),
    );
  }
}
