import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourspecially/src/constants/app_colors.dart';
import 'package:yourspecially/src/routing/routing_config.dart';
import 'package:yourspecially/src/utils/device_size_config.dart';
import '../../widgets/bottom_navigation_bar.dart';

class SocialLogin extends StatefulWidget {
  const SocialLogin({Key? key}) : super(key: key);

  @override
  State<SocialLogin> createState() => _SocialLoginState();
}

class _SocialLoginState extends State<SocialLogin> {
  //var _isClicked = false;
  var _selectedIndex;
  var _socialLoginList = [
    {
      'id': 1,
      'logo': 'assets/images/fb.png',
      'text': 'Facebook',
    },
    {
      'id': 2,
      'logo': 'assets/images/twitter.png',
      'text': 'Twitter',
    },
    {
      'id': 3,
      'logo': 'assets/images/linkedin.png',
      'text': 'LinkedIn',
    },
    {
      'id': 4,
      'logo': 'assets/images/insta.png',
      'text': 'Instagram',
    },
    {
      'id': 5,
      'logo': 'assets/images/tiktok.png',
      'text': 'TikTok',
    },
    {
      'id': 6,
      'logo': 'assets/images/github-logo.png',
      'text': 'GitHub',
    },
    {
      'id': 7,
      'logo': 'assets/images/behance.png',
      'text': 'Behance',
    },
    {
      'id': 8,
      'logo': 'assets/images/pininterest.png',
      'text': 'Pinterest',
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
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Connect Your Social Media Account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: deviceSizeConfig.blockSizeVertical * 40,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/social_login.png',
                      height: deviceSizeConfig.blockSizeVertical * 40,
                    ),
                  ),
                ],
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
                padding:
                    EdgeInsets.symmetric(horizontal: 31.0.w, vertical: 15.w),
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
                    _buildGridView(), //Grid is being created.
                    SizedBox(
                      height: mediaQuery.height * 0.1,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, chooseFriends);
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
                        'NEXT',
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

  Widget _buildGridView() {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: _socialLoginList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0.0,
            primary: (_selectedIndex == index)
                ? colorSecondarySeed
                : Color(0xffE8E8E8),
            // foregroundColor:
            //     (_selectedIndex == index) ? Colors.white : colorText,
          ),
          onPressed: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          child: Row(
            children: [
              Image.asset(_socialLoginList[index]['logo'] as String),
              SizedBox(
                width: 10,
              ),
              Text(
                _socialLoginList[index]['text'] as String,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
