import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourspecially/src/constants/app_colors.dart';

class BestSellingGift extends StatefulWidget {
  //const TrendingGift({super.key});
  bool? giftsuggestions;
  String imageURL;
  String text;
  double price;

  BestSellingGift(
      {required this.imageURL,
      required this.text,
      required this.price,
      this.giftsuggestions});

  @override
  State<BestSellingGift> createState() => _BestSellingGiftState();
}

class _BestSellingGiftState extends State<BestSellingGift> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      margin: (widget.giftsuggestions == true)
          ? EdgeInsets.all(5)
          : EdgeInsets.all(15),
      height: mediaQuery.height * 0.3,
      width: mediaQuery.width * 0.4,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                child: Image(
                  image: AssetImage(
                    widget.imageURL,
                  ),
                  fit: BoxFit.cover,
                  //height: mediaQuery.height * 0.3,
                  // width: mediaQuery.width * 0.5,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                child: Text(
                  widget.text,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.price.toString(),
                      style: TextStyle(fontSize: 16),
                    ),
                    CircleAvatar(
                      backgroundColor: colorSecondarySeed,
                      radius: 18,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shopping_cart,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),

          //Text('somethingis here written')
        ],
      ),
    );
  }
}
