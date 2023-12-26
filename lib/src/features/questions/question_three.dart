//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourspecially/src/constants/app_colors.dart';
import 'package:yourspecially/src/features/authentication/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:yourspecially/src/routing/routing_config.dart';
import 'package:yourspecially/src/utils/device_size_config.dart';
import '../../constants/app_colors.dart';

class QuestionThree extends StatefulWidget {
  const QuestionThree({Key? key}) : super(key: key);

  @override
  State<QuestionThree> createState() => _QuestionThreeState();
}

class _QuestionThreeState extends State<QuestionThree> {
  var _minLength = 5;
  var _selectedItemList = [];
  var _isSelected = false;
  var _items = [
    {
      'id': '1',
      'color': Colors.white,
      'is_selected': false,
      'text': 'Electronics',
    },
    {
      'id': '2',
      'color': Colors.white,
      'is_selected': false,
      'text': 'Gadget',
    },
    {
      'id': '2',
      'color': Colors.white,
      'is_selected': false,
      'text': 'Watch',
    },
    {
      'id': '2',
      'color': Colors.white,
      'is_selected': false,
      'text': 'Dairy',
    },
    {
      'id': '2',
      'color': Colors.white,
      'is_selected': false,
      'text': 'Laptop / Computer',
    },
    {
      'id': '6',
      'color': Colors.white,
      'is_selected': false,
      'text': 'Mobile',
    },
    {
      'id': '7',
      'color': Colors.white,
      'is_selected': false,
      'text': 'Notebook',
    },
    {
      'id': '8',
      'color': Colors.white,
      'is_selected': false,
      'text': 'Game',
    },
  ];
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
              padding: const EdgeInsets.only(top: 55.0),
              child: Column(
                children: [
                  Text(
                    'One last thing',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: deviceSizeConfig.blockSizeVertical * 40,
                    width: double.infinity,
                    child: Column(
                      children: [
                        //Text('We won\'t take it longer'),
                        Image.asset(
                          'assets/images/question_3.png',
                          height: deviceSizeConfig.blockSizeVertical * 40,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Question 3',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(1)),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5.0,
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
                padding:
                    EdgeInsets.symmetric(horizontal: 35.0.w, vertical: 15.w),
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
                        'Choose Your Best 5 Interest Items',
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Color(0xff1E1E1E),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mediaQuery.height * 0.025,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Wrap(
                        runSpacing: 15.0,
                        spacing: 15.0,
                        children: _items
                            .map((item) => ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 0.0,
                                    onPrimary: (item['is_selected'] == true)
                                        ? Colors.white
                                        : colorText,
                                    primary: (item['is_selected'] == true)
                                        ? colorSecondarySeed
                                        : Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        side: (item['is_selected'] == true)
                                            ? BorderSide(color: Colors.white)
                                            : BorderSide(
                                                color: Colors.grey[350]
                                                    as Color))),
                                onPressed: () {
                                  // _selectedItemList.add(item['text']);
                                  setState(() {
                                    item['is_selected'] =
                                        item['is_selected'] == true
                                            ? false
                                            : true;
                                  });
                                  if (item['is_selected'] == true) {
                                    _selectedItemList.add(item['text']);
                                  } else {
                                    _selectedItemList.remove(item['text']);
                                  }
                                  if (_selectedItemList.length >= 5) {
                                    setState(() {
                                      _isSelected = true;
                                    });
                                  }
                                  if (_selectedItemList.length < 5) {
                                    setState(() {
                                      _isSelected = false;
                                    });
                                  }
                                },
                                child: Text(item['text'] as String)))
                            .toList(),
                      ),
                    ),
                    SizedBox(
                      height: mediaQuery.height * 0.1,
                    ),
                    ElevatedButton(
                      onPressed: _isSelected == true
                          ? () {
                              print('yes got it');
                              print('selectedItemList: $_selectedItemList');
                              Navigator.pushNamed(context, socialLogin);
                            }
                          : null,
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
                        'SUBMIT',
                      ),
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
