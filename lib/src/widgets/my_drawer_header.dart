import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourspecially/src/constants/app_colors.dart';

class MyDrawerHeader extends StatefulWidget {
  //const MyDrawerHeader({super.key});

  @override
  State<MyDrawerHeader> createState() => _MyDrawerHeaderState();
}

class _MyDrawerHeaderState extends State<MyDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            height: 70,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/profile_pic.png'))),
          ),
          Text(
            'Hi Smith',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 28.sp,
              color: colorText,
            ),
          ),
          Text(
            'Welcome to Gift Shop',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: colorText.withOpacity(0.8),
            ),
          )
        ],
      ),
    );
  }
}
