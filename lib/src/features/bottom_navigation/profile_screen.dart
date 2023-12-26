//import 'dart:html';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it_mixin/get_it_mixin.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:yourspecially/src/features/authentication/application/authentication_manager.dart';
import 'package:yourspecially/src/utils/device_size_config.dart';

import '../../constants/app_colors.dart';
import '../../routing/routing_config.dart';

class ProfileScreen extends StatefulWidget with GetItStatefulWidgetMixin {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with GetItStateMixin {
  //const Homescreen({super.key});
  File? image;

  @override
  Widget build(BuildContext context) {
    Box<dynamic> settingsBox = Hive.box('settings');
    String userPhoneNumber = settingsBox.get(
      'userPhoneNumber',
      defaultValue: '',
    );

    DeviceSizeConfig deviceSizeConfig = DeviceSizeConfig(context);
    final Size mediaQuery = MediaQuery.of(context).size;

    String fullName =
        watchX((AuthenticationManager x) => x.signUpFullNameChangedCmd);

    String emailAddressFromSignIn =
        watchX((AuthenticationManager x) => x.signInEmailChangedCmd);

    String emailAddressFromSignUp =
        watchX((AuthenticationManager x) => x.signUpEmailChangedCmd);

    String emailAddress = emailAddressFromSignIn.isEmpty == true
        ? emailAddressFromSignUp
        : emailAddressFromSignIn;

    return Material(
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
        child: ListView(
          // ignore: always_specify_types
          children: [
            SizedBox(
              height: deviceSizeConfig.blockSizeVertical * 45,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 65),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(0.1),
                    ),
                    height: mediaQuery.height * 0.40,
                    width: mediaQuery.width * 0.8,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            InkWell(
                              onTap: pickImage,
                              child: Container(
                                child: image != null
                                    ? ClipOval(
                                        child: Image.file(
                                          image!,
                                          width: 160.w,
                                          height: 160.h,
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    : ClipOval(
                                        child: Padding(
                                          padding: const EdgeInsets.all(40.0),
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/profile_img.webp'),
                                            width: 160.w,
                                            height: 160.h,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                width: 132.w,
                                height: 104.98.h,
                                //color: Colors.red,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 65,
                              right: 5,
                              child: Container(
                                child: Icon(
                                  Icons.add_a_photo,
                                  color: Color(0xffAAAAAA),
                                ),
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5.0,
                                      spreadRadius: -3.0,
                                      offset: Offset(0, 5),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.02.h,
                        ),
                        Text(
                          fullName,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17.sp,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          'San Francisco',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.4.sp,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                          SizedBox(
                          height: 1.h,
                        ),
                           Text(
                          userPhoneNumber,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp, 
                            color: Colors.white,
                          ),
                        ),
                          SizedBox(
                          height: 1.h,
                        ),
                          Text(
                          emailAddress,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: 0.h,
                  // ),
                  // Container(
                  //   padding:
                  //       EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.0),
                  //   child: Column(
                  //     children: [
                  //       Text(
                  //         "788888",
                  //         style: TextStyle(
                  //           fontWeight: FontWeight.w400,
                  //           fontSize: 14.sp,
                  //           color: Colors.white,
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         height: 5.h,
                  //       ),
                  //       Text(
                  //         "sujeet",
                  //         style: TextStyle(
                  //           fontWeight: FontWeight.w400,
                  //           fontSize: 14.sp,
                  //           color: Colors.white,
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10),
                  //     color: Colors.white.withOpacity(0.1),
                  //   ),
                  //   width: mediaQuery.width * 0.2,
                  //   height: 75.h,
                  // )
                ],
              ),
            ),
            SizedBox(
              height: 25.h,
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
                child: Column(children: [
                  Material(
                    child: InkWell(
                      //splashColor: Colors.blue,
                      onTap: () =>
                          Navigator.pushNamed(context, personalDetailsScreen),
                      child: Ink(
                        child: ListTile(
                          title: Text(
                            'Personal Details',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: colorText,
                            ),
                          ),
                          subtitle: Text(
                            'User personal details',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              color: Color(0xffAAAAAA),
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward,
                            color: colorText,
                          ),
                          // onTap: () =>
                          //     Navigator.pushNamed(context, personalDetailsScreen),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 23.h,
                  ),
                  Material(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, changePasswordScreen),
                      child: ListTile(
                        title: Text(
                          'Privacy',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: colorText,
                          ),
                        ),
                        subtitle: Text(
                          'Change & update Password',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: Color(0xffAAAAAA),
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward,
                          color: colorText,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 23.h,
                  ),
                  ListTile(
                    title: Text(
                      'Log Out',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: colorText,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 150.h,
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future pickImage() async {
    // to pick image from gallery
    try {
      final XFile? image =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final File imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print('failed to pick image: $e');
    }
  }
}
