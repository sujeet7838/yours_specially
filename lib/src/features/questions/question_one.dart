//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourspecially/src/constants/app_colors.dart';
import 'package:yourspecially/src/features/authentication/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:yourspecially/src/routing/routing_config.dart';
import 'package:yourspecially/src/utils/device_size_config.dart';
import '../../constants/app_colors.dart';

class QuestionOne extends StatefulWidget {
  //const QuestionOne({Key? key}) : super(key: key);
  // final VoidCallback onPressed;
  // QuestionOne({required this.onPressed});

  @override
  State<QuestionOne> createState() => _QuestionOneState();
}

class _QuestionOneState extends State<QuestionOne> {
  var _yesMarried = false;
  var _notMarried = false;
  @override
  Widget build(BuildContext context) {
    DeviceSizeConfig deviceSizeConfig = DeviceSizeConfig(context);
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      body: Material(
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
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  children: [
                    Text(
                      'We won\'t take it longer',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: deviceSizeConfig.blockSizeVertical * 40,
                      width: double.infinity,
                      child: Image.asset(
                        'assets/images/question_1.png',
                        height: deviceSizeConfig.blockSizeVertical * 40,
                      ),
                    ),
                    Text(
                      'Question 1',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white.withOpacity(1)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
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
                child: Container(
                  //color: Colors.blue,
                  padding:
                      EdgeInsets.symmetric(horizontal: 35.0.w, vertical: 15.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 10.0,
                          bottom: 10.0,
                          left: 40,
                          right: 40.0,
                        ),
                        child: Text(
                          'Are You Married ?',
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Color(0xff1E1E1E),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: mediaQuery.height * 0.07,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _yesMarried = !_yesMarried;
                            _notMarried = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          onPrimary: (_yesMarried == true)
                              ? const Color(0xffFFFFFF)
                              : Color(0xff1E1E1E),
                          primary: (_yesMarried == true)
                              ? const Color(0xffFFB93E)
                              : Color(0xffEBEBEB),
                          minimumSize: const Size(double.infinity, 55.0),
                          padding: EdgeInsets.symmetric(horizontal: 30.w),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(40.0),
                            ),
                          ),
                          textStyle: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Yes I Am Married',
                              style: TextStyle(fontSize: 16),
                            ),
                            (_yesMarried == true)
                                ? Container(
                                    child: Icon(
                                      Icons.check_sharp,
                                      color: Colors.green,
                                    ),
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _notMarried = !_notMarried;
                              _yesMarried = false;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            onPrimary: (_notMarried == true)
                                ? const Color(0xffFFFFFF)
                                : Color(0xff1E1E1E),
                            primary: (_notMarried == true)
                                ? const Color(0xffFFB93E)
                                : Color(0xffEBEBEB),
                            minimumSize: const Size(double.infinity, 55.0),
                            padding: EdgeInsets.symmetric(horizontal: 30.w),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40.0),
                              ),
                            ),
                            textStyle: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Not Yet',
                                style: TextStyle(fontSize: 16),
                              ),
                              (_notMarried == true)
                                  ? Container(
                                      child: Icon(
                                        Icons.check_sharp,
                                        color: Colors.green,
                                      ),
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                    )
                                  : Container()
                            ],
                          )),
                      SizedBox(
                        height: mediaQuery.height * 0.1,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              size: 18,
            ),
          ),
          Text(
            '1 of 4',
            style: TextStyle(
              color: colorText.withOpacity(1),
            ),
          ),
          IconButton(
            onPressed: () => Navigator.pushNamed(context, questionOnePointFive),
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
        ],
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
