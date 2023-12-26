//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yourspecially/src/constants/app_colors.dart';
import 'package:yourspecially/src/features/authentication/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:yourspecially/src/routing/routing_config.dart';
import 'package:yourspecially/src/utils/device_size_config.dart';
import '../../../../constants/app_colors.dart';

class PasswordChange extends StatelessWidget {
  const PasswordChange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DeviceSizeConfig deviceSizeConfig = DeviceSizeConfig(context);
    final mediaQuery = MediaQuery.of(context).size;

    return Material(
      color: Colors.white,
      child: Container(
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
        child: ListView(
          // ignore: always_specify_types
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: SizedBox(
                height: deviceSizeConfig.blockSizeVertical * 40,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Image.asset(
                    'assets/images/otp.png',
                    height: deviceSizeConfig.blockSizeVertical * 40,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        bottom: 10.0,
                        left: 40,
                        right: 40.0,
                      ),
                      child: Text(
                        'Verify Your Account',
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Color(0xff1E1E1E),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mediaQuery.height * 0.025,
                    ),
                    Text(
                      'Please enter your verification code',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1E1E1E),
                      ),
                    ),
                    SizedBox(
                      height: mediaQuery.height * 0.01,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: mediaQuery.width * 0.07),
                      child: const Center(
                        child: Text(
                          'Please enter 5 digit code sent to your email address sm****@*********',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff1E1E1E)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mediaQuery.height * 0.07,
                    ),
                    Form(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 50,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: colorSecondarySeed,
                                          width: 2.0))),
                              child: TextField(
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                            Container(
                              width: 50,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: colorSecondarySeed,
                                          width: 2.0))),
                              child: TextField(
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                            Container(
                              width: 50,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: colorSecondarySeed,
                                          width: 2.0))),
                              child: TextField(
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                            Container(
                              width: 50,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: colorSecondarySeed,
                                          width: 2.0))),
                              child: TextField(
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                            Container(
                              width: 50,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: colorSecondarySeed,
                                          width: 2.0))),
                              child: TextField(
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mediaQuery.height * 0.06,
                    ),
                    Text(
                      'Enter Your Code (00:30)',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: colorText,
                          fontSize: 11),
                    ),
                    //Text('Not Received? RESEND'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Not Received? ',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: colorText,
                            fontSize: 11,
                          ),
                        ),
                        Text(
                          'RESEND',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 11,
                            color: colorText,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        onPrimary: const Color(0xffFFFFFF),
                        primary: const Color(0xffFFB93E),
                        minimumSize: const Size(double.infinity, 55.0),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        ),
                        textStyle: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      child: const Text(
                        'SEND OTP',
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),

                    const SizedBox(
                      height: 1,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, signInScreen),
                      child: const Text(
                        'Back to Login',
                        style: TextStyle(
                          color: const Color(0xffFFB93E),
                          fontWeight: FontWeight.w600,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class YourSpeciallyTextField extends StatelessWidget {
  const YourSpeciallyTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
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
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              50.0,
            ),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: colorPrimarySeed,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              50.0,
            ),
          ),
        ),
        hintText: hintText,
      ),
    );
  }
}

class YourSpeciallyPasswordField extends StatefulWidget {
  const YourSpeciallyPasswordField({Key? key}) : super(key: key);

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
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              50.0,
            ),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: colorPrimarySeed,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              50.0,
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
