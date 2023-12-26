import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it_mixin/get_it_mixin.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:yourspecially/src/constants/app_colors.dart';
import 'package:yourspecially/src/features/authentication/application/authentication_manager.dart';

import '../../routing/routing_config.dart';

class PersonalDetailsScreen extends StatelessWidget with GetItMixin {
  PersonalDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;

    Box<dynamic> settingsBox = Hive.box('settings');
    String userPhoneNumber = settingsBox.get(
      'userPhoneNumber',
      defaultValue: '',
    );

    String fullName =
        watchX((AuthenticationManager x) => x.signUpFullNameChangedCmd);

    String firstName = fullName.split(' ')[0];
    String lastName = (fullName.split(' ')..removeAt(0)).join(' ');

    String emailAddressFromSignIn =
        watchX((AuthenticationManager x) => x.signInEmailChangedCmd);

    String emailAddressFromSignUp =
        watchX((AuthenticationManager x) => x.signUpEmailChangedCmd);

    String emailAddress = emailAddressFromSignIn.isEmpty == true
        ? emailAddressFromSignUp
        : emailAddressFromSignIn;

    return Scaffold(
      body: Theme(
        data: ThemeData(primaryIconTheme: IconThemeData(color: Colors.red)),
        child: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) => [
            SliverAppBar(
              title: Text(
                'Personal Details',
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
                        children: <Widget>[
                          Text('First Name',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(
                                    color: const Color(0xffAAAAAA),
                                  )),
                          Text(
                            firstName.isEmpty == true ? '...' : firstName,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            'Last Name',
                            style:
                                Theme.of(context).textTheme.bodyText1?.copyWith(
                                      color: const Color(0xffAAAAAA),
                                    ),
                          ),
                          Text(
                            lastName.isEmpty == true ? '...' : lastName,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            'Email ID',
                            style:
                                Theme.of(context).textTheme.bodyText1?.copyWith(
                                      color: const Color(0xffAAAAAA),
                                    ),
                          ),
                          Text(
                            emailAddress.isEmpty == true ? '...' : emailAddress,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            'Phone Number',
                            style:
                                Theme.of(context).textTheme.bodyText1?.copyWith(
                                      color: const Color(0xffAAAAAA),
                                    ),
                          ),
                          Text(
                            userPhoneNumber,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            'House/Flat/Block No.',
                            style:
                                Theme.of(context).textTheme.bodyText1?.copyWith(
                                      color: const Color(0xffAAAAAA),
                                    ),
                          ),
                          Text(
                            '...',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            'Apartment/Road/Area',
                            style:
                                Theme.of(context).textTheme.bodyText1?.copyWith(
                                      color: const Color(0xffAAAAAA),
                                    ),
                          ),
                          Text(
                            '...',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            'Pin Code',
                            style:
                                Theme.of(context).textTheme.bodyText1?.copyWith(
                                      color: const Color(0xffAAAAAA),
                                    ),
                          ),
                          Text(
                            '...',
                            style: Theme.of(context).textTheme.bodyText1,
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
      bottomSheet: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.0.w, vertical: 30.w),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, editpersonalDetailsScreen);
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
            'UPDATE',
          ),
        ),
      ),
    );
  }
}
