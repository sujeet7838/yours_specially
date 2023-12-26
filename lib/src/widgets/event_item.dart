import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:yourspecially/src/constants/app_colors.dart';

class EventItem extends StatelessWidget {
  //const EventItem({super.key});
  final String name;
  final String contactName;
  final DateTime date;

  EventItem(
      {required this.contactName, required this.date, required this.name});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Stack(
      //clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Container(
          padding: EdgeInsets.only(
              top: mediaQuery.height * 0.07, left: 15, right: 15),
          margin: EdgeInsets.all(15),
          width: 220.w,
          height: 165.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: colorSecondarySeed,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                contactName,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17.sp,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                DateFormat.yMMMEd().format(date),
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          //bottom: ,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
              boxShadow: [
                BoxShadow(
                  blurRadius: 5.0,
                  spreadRadius: -3.0,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            //shape: BoxShape.circle,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: (name == 'Happy Birthday')
                  ? Image.asset('assets/images/balloons.png')
                  : Image.asset('assets/images/confetti.png'),
            ),
          ),
        )
      ],
    );
  }
}
