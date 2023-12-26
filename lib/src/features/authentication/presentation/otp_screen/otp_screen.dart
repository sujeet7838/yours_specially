//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it_mixin/get_it_mixin.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:yourspecially/src/constants/app_colors.dart';
import 'package:yourspecially/src/features/authentication/application/authentication_manager.dart';
import 'package:yourspecially/src/features/authentication/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:yourspecially/src/routing/routing_config.dart';
import 'package:yourspecially/src/utils/device_size_config.dart';
import '../../../../constants/app_colors.dart';

class OtpScreen extends StatelessWidget with GetItMixin {
  OtpScreen({super.key});

  @override
  Widget build(BuildContext context, [bool mounted = true]) {
    DeviceSizeConfig deviceSizeConfig = DeviceSizeConfig(context);

    bool isExecutingValidateOtp =
        watchX((AuthenticationManager x) => x.validateOtpCmd.isExecuting);

    bool validateOtpButtonState =
        watchX((AuthenticationManager x) => x.setValidateOtpButtonStateCmd);

    bool isFailure =
        watchX((AuthenticationManager x) => x.setValidateOtpErrorStateCmd);

    String errorMessage =
        watchX((AuthenticationManager x) => x.validateOtpErrorChangedCmd);

    bool isSuccessful =
        watchX((AuthenticationManager x) => x.setValidateOtpSuccessStateCmd);

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
                  'assets/images/otp.png',
                  height: deviceSizeConfig.blockSizeVertical * 40,
                ),
              ],
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.5,
            minChildSize: 0.5,
            maxChildSize: 0.65,
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
                  top: 20.0,
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
                      'Verify Your Account',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                            fontSize: 22.0,
                            color: const Color(0XFF1E1E1E),
                          ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Text(
                      'Please enter the 5 digit code sent to your email address ${get<AuthenticationManager>().signUpEmailChangedCmd.value}',
                      // maxLines: 2,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    YourSpeciallyTextField(
                      hintText: 'One Time Password',
                      keyboardType: TextInputType.text,
                      onChanged: get<AuthenticationManager>().otpChangedCmd,
                    ),
                    // Form(
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: <Widget>[
                    //       Container(
                    //         width: 50,
                    //         decoration: const BoxDecoration(
                    //           border: Border(
                    //             bottom: BorderSide(
                    //                 color: colorSecondarySeed, width: 2.0),
                    //           ),
                    //         ),
                    //         child: TextField(
                    //           onChanged: (String value) {
                    //             if (value.length == 1) {
                    //               FocusScope.of(context).nextFocus();
                    //             }
                    //           },
                    //           keyboardType: TextInputType.number,
                    //           textAlign: TextAlign.center,
                    //           inputFormatters: <TextInputFormatter>[
                    //             LengthLimitingTextInputFormatter(1),
                    //             FilteringTextInputFormatter.digitsOnly,
                    //           ],
                    //         ),
                    //       ),
                    //       Container(
                    //         width: 50,
                    //         decoration: const BoxDecoration(
                    //           border: Border(
                    //             bottom: BorderSide(
                    //                 color: colorSecondarySeed, width: 2.0),
                    //           ),
                    //         ),
                    //         child: TextField(
                    //           onChanged: (String value) {
                    //             if (value.length == 1) {
                    //               FocusScope.of(context).nextFocus();
                    //             }
                    //           },
                    //           keyboardType: TextInputType.number,
                    //           textAlign: TextAlign.center,
                    //           inputFormatters: <TextInputFormatter>[
                    //             LengthLimitingTextInputFormatter(1),
                    //             FilteringTextInputFormatter.digitsOnly,
                    //           ],
                    //         ),
                    //       ),
                    //       Container(
                    //         width: 50,
                    //         decoration: const BoxDecoration(
                    //           border: Border(
                    //             bottom: BorderSide(
                    //                 color: colorSecondarySeed, width: 2.0),
                    //           ),
                    //         ),
                    //         child: TextField(
                    //           onChanged: (String value) {
                    //             if (value.length == 1) {
                    //               FocusScope.of(context).nextFocus();
                    //             }
                    //           },
                    //           keyboardType: TextInputType.number,
                    //           textAlign: TextAlign.center,
                    //           inputFormatters: <TextInputFormatter>[
                    //             LengthLimitingTextInputFormatter(1),
                    //             FilteringTextInputFormatter.digitsOnly,
                    //           ],
                    //         ),
                    //       ),
                    //       Container(
                    //         width: 50,
                    //         decoration: const BoxDecoration(
                    //           border: Border(
                    //             bottom: BorderSide(
                    //                 color: colorSecondarySeed, width: 2.0),
                    //           ),
                    //         ),
                    //         child: TextField(
                    //           onChanged: (String value) {
                    //             if (value.length == 1) {
                    //               FocusScope.of(context).nextFocus();
                    //             }
                    //           },
                    //           keyboardType: TextInputType.number,
                    //           textAlign: TextAlign.center,
                    //           inputFormatters: <TextInputFormatter>[
                    //             LengthLimitingTextInputFormatter(1),
                    //             FilteringTextInputFormatter.digitsOnly,
                    //           ],
                    //         ),
                    //       ),
                    //       Container(
                    //         width: 50,
                    //         decoration: const BoxDecoration(
                    //           border: Border(
                    //             bottom: BorderSide(
                    //                 color: colorSecondarySeed, width: 2.0),
                    //           ),
                    //         ),
                    //         child: TextField(
                    //           onChanged: (String value) {
                    //             if (value.length == 1) {
                    //               FocusScope.of(context).nextFocus();
                    //             }
                    //           },
                    //           keyboardType: TextInputType.number,
                    //           textAlign: TextAlign.center,
                    //           inputFormatters: <TextInputFormatter>[
                    //             LengthLimitingTextInputFormatter(1),
                    //             FilteringTextInputFormatter.digitsOnly,
                    //           ],
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Not Received?',
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
                            'RESEND',
                            style:
                                Theme.of(context).textTheme.bodyText1?.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: colorText,
                                    ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    ElevatedButton(
                      onPressed: validateOtpButtonState == true
                          ? null
                          : () {
                              get<AuthenticationManager>()
                                  .validateOtpCmd
                                  .executeWithFuture()
                                  .whenComplete(
                                () {
                                  Navigator.pushNamed(context,signInScreen);
                                  // Navigator.of(context).pushNamedAndRemoveUntil(
                                  //   questionOne,
                                  //   (Route<dynamic> route) => false,
                                  // );
                                },
                              );
                            },
                        //     foregroundColor: const Color(0xffFFFFFF),
                        // backgroundColor: const Color(0xffFFB93E),
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
                      // child: isExecutingLogin == true
                      //     ? const CupertinoActivityIndicator(
                      //         color: Colors.white,
                      //       )
                      //     : const Text(
                      //         'SIGN IN',
                      //       ),
                      child: const Text('SUBMIT OTP'),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, signUpScreen),
                          child: Text(
                            'BACK TO LOGIN',
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

// class OtpScreen2 extends StatelessWidget {
//   const OtpScreen2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     DeviceSizeConfig deviceSizeConfig = DeviceSizeConfig(context);
//     final mediaQuery = MediaQuery.of(context).size;

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
//             Padding(
//               padding: const EdgeInsets.only(top: 30.0),
//               child: SizedBox(
//                 height: deviceSizeConfig.blockSizeVertical * 40,
//                 width: double.infinity,
//                 child: Image.asset(
//                   'assets/images/otp.png',
//                   height: deviceSizeConfig.blockSizeVertical * 40,
//                 ),
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
//                     EdgeInsets.symmetric(horizontal: 35.0.w, vertical: 15.0.h),
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
//                         'Verify Your Account',
//                         maxLines: 2,
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 22.0,
//                           color: Color(0xff1E1E1E),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: mediaQuery.height * 0.025,
//                     ),
//                     Text(
//                       'Please enter your verification code',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                         color: Color(0xff1E1E1E),
//                       ),
//                     ),
//                     SizedBox(
//                       height: mediaQuery.height * 0.01,
//                     ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(
//                           horizontal: mediaQuery.width * 0.07),
//                       child: const Center(
//                         child: Text(
//                           'Please enter 5 digit code sent to your email address sm****@*********',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                               fontWeight: FontWeight.w400,
//                               color: Color(0xff1E1E1E)),
//                         ),
//                       ),
//                     ),
//                     // SizedBox(
//                     //   height: mediaQuery.height * 0.07,
//                     // ),
//                     Form(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             width: 50,
//                             decoration: const BoxDecoration(
//                                 border: Border(
//                                     bottom: BorderSide(
//                                         color: colorSecondarySeed,
//                                         width: 2.0))),
//                             child: TextField(
//                               onChanged: (value) {
//                                 if (value.length == 1) {
//                                   FocusScope.of(context).nextFocus();
//                                 }
//                               },
//                               keyboardType: TextInputType.number,
//                               textAlign: TextAlign.center,
//                               inputFormatters: [
//                                 LengthLimitingTextInputFormatter(1),
//                                 FilteringTextInputFormatter.digitsOnly,
//                               ],
//                             ),
//                           ),
//                           Container(
//                             width: 50,
//                             decoration: const BoxDecoration(
//                                 border: Border(
//                                     bottom: BorderSide(
//                                         color: colorSecondarySeed,
//                                         width: 2.0))),
//                             child: TextField(
//                               onChanged: (value) {
//                                 if (value.length == 1) {
//                                   FocusScope.of(context).nextFocus();
//                                 }
//                               },
//                               keyboardType: TextInputType.number,
//                               textAlign: TextAlign.center,
//                               inputFormatters: [
//                                 LengthLimitingTextInputFormatter(1),
//                                 FilteringTextInputFormatter.digitsOnly,
//                               ],
//                             ),
//                           ),
//                           Container(
//                             width: 50,
//                             decoration: const BoxDecoration(
//                                 border: Border(
//                                     bottom: BorderSide(
//                                         color: colorSecondarySeed,
//                                         width: 2.0))),
//                             child: TextField(
//                               onChanged: (value) {
//                                 if (value.length == 1) {
//                                   FocusScope.of(context).nextFocus();
//                                 }
//                               },
//                               keyboardType: TextInputType.number,
//                               textAlign: TextAlign.center,
//                               inputFormatters: [
//                                 LengthLimitingTextInputFormatter(1),
//                                 FilteringTextInputFormatter.digitsOnly,
//                               ],
//                             ),
//                           ),
//                           Container(
//                             width: 50,
//                             decoration: const BoxDecoration(
//                                 border: Border(
//                                     bottom: BorderSide(
//                                         color: colorSecondarySeed,
//                                         width: 2.0))),
//                             child: TextField(
//                               onChanged: (value) {
//                                 if (value.length == 1) {
//                                   FocusScope.of(context).nextFocus();
//                                 }
//                               },
//                               keyboardType: TextInputType.number,
//                               textAlign: TextAlign.center,
//                               inputFormatters: [
//                                 LengthLimitingTextInputFormatter(1),
//                                 FilteringTextInputFormatter.digitsOnly,
//                               ],
//                             ),
//                           ),
//                           Container(
//                             width: 50,
//                             decoration: const BoxDecoration(
//                                 border: Border(
//                                     bottom: BorderSide(
//                                         color: colorSecondarySeed,
//                                         width: 2.0))),
//                             child: TextField(
//                               onChanged: (value) {
//                                 if (value.length == 1) {
//                                   FocusScope.of(context).nextFocus();
//                                 }
//                               },
//                               keyboardType: TextInputType.number,
//                               textAlign: TextAlign.center,
//                               inputFormatters: [
//                                 LengthLimitingTextInputFormatter(1),
//                                 FilteringTextInputFormatter.digitsOnly,
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: mediaQuery.height * 0.06,
//                     ),
//                     Text(
//                       'Enter Your Code (00:30)',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w400,
//                         color: colorText,
//                       ),
//                     ),
//                     //Text('Not Received? RESEND'),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: const [
//                         Text(
//                           'Not Received? ',
//                           style: TextStyle(
//                             fontWeight: FontWeight.w400,
//                             color: colorText,
//                           ),
//                         ),
//                         Text(
//                           'RESEND',
//                           style: TextStyle(
//                             fontWeight: FontWeight.w700,
//                             color: colorText,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 50.0,
//                     ),
//                     ElevatedButton(
//                       onPressed: () =>
//                           Navigator.pushNamed(context, questionOne),
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
//                         'SEND OTP',
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 10.0,
//                     ),

//                     const SizedBox(
//                       height: 1,
//                     ),
//                     GestureDetector(
//                       onTap: () => Navigator.pushNamed(context, signInScreen),
//                       child: const Text(
//                         'Back to Login',
//                         style: TextStyle(
//                           color: const Color(0xffFFB93E),
//                           fontWeight: FontWeight.w600,
//                           fontSize: 11,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 5.0,
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

// class YourSpeciallyTextField extends StatelessWidget {
//   const YourSpeciallyTextField({
//     Key? key,
//     required this.hintText,
//   }) : super(key: key);

//   final String hintText;

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       decoration: InputDecoration(
//         contentPadding: const EdgeInsets.only(
//           top: 13.0,
//           bottom: 13.0,
//           left: 20.0,
//           right: 20.0,
//         ),
//         border: const OutlineInputBorder(
//           borderSide: BorderSide(
//             color: Color(0xffAAAAAA),
//             width: 1.0,
//           ),
//           borderRadius: BorderRadius.all(
//             Radius.circular(
//               50.0,
//             ),
//           ),
//         ),
//         focusedBorder: const OutlineInputBorder(
//           borderSide: BorderSide(
//             color: colorPrimarySeed,
//             width: 1.0,
//           ),
//           borderRadius: BorderRadius.all(
//             Radius.circular(
//               50.0,
//             ),
//           ),
//         ),
//         hintText: hintText,
//       ),
//     );
//   }
// }

// class YourSpeciallyPasswordField extends StatefulWidget {
//   const YourSpeciallyPasswordField({Key? key}) : super(key: key);

//   @override
//   State<YourSpeciallyPasswordField> createState() =>
//       _YourSpeciallyPasswordFieldState();
// }

// class _YourSpeciallyPasswordFieldState
//     extends State<YourSpeciallyPasswordField> {
//   bool textIsObscure = true;

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       obscureText: textIsObscure,
//       decoration: InputDecoration(
//         contentPadding: const EdgeInsets.only(
//           top: 13.0,
//           bottom: 13.0,
//           left: 20.0,
//           right: 20.0,
//         ),
//         border: const OutlineInputBorder(
//           borderSide: BorderSide(
//             color: Color(0xffAAAAAA),
//             width: 1.0,
//           ),
//           borderRadius: BorderRadius.all(
//             Radius.circular(
//               50.0,
//             ),
//           ),
//         ),
//         focusedBorder: const OutlineInputBorder(
//           borderSide: BorderSide(
//             color: colorPrimarySeed,
//             width: 1.0,
//           ),
//           borderRadius: BorderRadius.all(
//             Radius.circular(
//               50.0,
//             ),
//           ),
//         ),
//         hintText: 'Password',
//         suffixIcon: IconButton(
//           onPressed: () {
//             setState(() => textIsObscure = !textIsObscure);
//           },
//           icon: textIsObscure == true
//               ? const Icon(
//                   Icons.visibility_off_outlined,
//                   color: Color(0xffAAAAAA),
//                 )
//               : const Icon(
//                   Icons.visibility_outlined,
//                   color: Color(0xffAAAAAA),
//                 ),
//         ),
//       ),
//     );
//   }
// }
