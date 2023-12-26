import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryTile extends StatelessWidget {
  //const CategoryTile({super.key});
  final String imagePath;
  final String text;
  CategoryTile({required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 75.w,
          height: 78.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 12.sp),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
