import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourspecially/src/constants/app_colors.dart';

class UpdatePasswordScreen extends StatefulWidget {
  const UpdatePasswordScreen({super.key});

  @override
  State<UpdatePasswordScreen> createState() => _UpdatePasswordScreenState();
}

class _UpdatePasswordScreenState extends State<UpdatePasswordScreen> {
  TextEditingController _oldPasswordController = TextEditingController();
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  bool textIsObscure = true;
  bool textIsObscure2 = true;
  bool textIsObscure3 = true;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Theme(
        data: ThemeData(primaryIconTheme: IconThemeData(color: Colors.red)),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              title: Text(
                'Edit Personal Details',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                ),
              ),
              elevation: 0,
              centerTitle: true,
              floating: true,
              pinned: false,
              snap: true,
              backgroundColor: Color(0xff52A0FE),
            ),
          ],
          body: Material(
            color: Colors.white,
            child: Container(
              decoration: BoxDecoration(
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
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: ListView(
                  children: [
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
                        padding: EdgeInsets.symmetric(
                            horizontal: 35.0.w, vertical: 30.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              controller: _oldPasswordController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Enter your old password';
                                } else {
                                  return null;
                                }
                              },
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
                                hintText: 'Current Password',
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                  color: Color(0xffAAAAAA),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(
                                        () => textIsObscure = !textIsObscure);
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
                            ),
                            SizedBox(
                              height: 23.h,
                            ),
                            TextFormField(
                              controller: _newPasswordController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Enter your new password';
                                } else {
                                  return null;
                                }
                              },
                              obscureText: textIsObscure2,
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
                                hintText: 'New Password',
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                  color: Color(0xffAAAAAA),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(
                                        () => textIsObscure2 = !textIsObscure2);
                                  },
                                  icon: textIsObscure2 == true
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
                            ),
                            SizedBox(
                              height: 23.h,
                            ),
                            TextFormField(
                              controller: _confirmPasswordController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Confirm your password';
                                } else {
                                  return null;
                                }
                              },
                              obscureText: textIsObscure3,
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
                                hintText: 'Confirm Password',
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                  color: Color(0xffAAAAAA),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(
                                        () => textIsObscure3 = !textIsObscure3);
                                  },
                                  icon: textIsObscure3 == true
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
                            ),
                            SizedBox(
                              height: 23.h,
                            ),
                            SizedBox(
                              height: 23.h,
                            ),
                            SizedBox(height: 12.h),
                            SizedBox(
                              height: 250.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.0.w, vertical: 30.w),
        child: ElevatedButton(
          onPressed: () {
            final isValidForm = _formKey.currentState!.validate();
            if (isValidForm) {
              print('done');
            }
          },
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
            'SAVE',
          ),
        ),
      ),
    );
  }
}
