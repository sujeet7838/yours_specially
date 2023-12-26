import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrendingGift extends StatefulWidget {
  //const TrendingGift({super.key});
  String imageURL;
  String text;

  TrendingGift({required this.imageURL, required this.text});

  @override
  State<TrendingGift> createState() => _TrendingGiftState();
}

class _TrendingGiftState extends State<TrendingGift> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: mediaQuery.width * 0.04),
      child: Card(
        color: Colors.grey.shade200,
        clipBehavior: Clip.antiAlias,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: AssetImage(widget.imageURL),
                  height: mediaQuery.height * 0.15,
                  width: 119.w,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 16,
                  right: 16,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Container(
              //color: Colors.amber,
              padding: EdgeInsets.only(top: 9.h),
              child: Center(
                child: Text(
                  widget.text,
                  style: TextStyle(fontSize: 15.sp),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
