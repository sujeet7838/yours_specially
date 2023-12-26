import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourspecially/src/constants/app_colors.dart';

import '../../routing/routing_config.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

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
                'Change Password',
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
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Password',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffAAAAAA),
                                    ),
                                  ),
                                  Text(
                                    '*************',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffAAAAAA),
                                    ),
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () => Navigator.pushNamed(
                                    context, updatePasswordScreen),
                                icon: Icon(Icons.edit),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 550.h,
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
    );
  }
}
