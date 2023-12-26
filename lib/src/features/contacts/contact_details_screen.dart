import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourspecially/src/constants/app_colors.dart';
import 'package:provider/provider.dart';
import 'package:yourspecially/src/providers/gift_suggestions.dart';
//import 'package:yourspecially/src/widgets/event_item.dart';
//import 'package:yourspecially/src/widgets/best_selling_gift.dart';

//import '../../providers/events.dart';
import '../../routing/routing_config.dart';
import '../../widgets/best_selling_gift.dart';

class ContactDetailsScreen extends StatelessWidget {
  static const routeName = '/contact-details-screen';
  var giftsData;

  @override
  Widget build(BuildContext context) {
    giftsData = Provider.of<GiftSuggestions>(context);
    final arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    //Map arguments = (ModalRoute.of(context)!.settings.arguments ?? {}) as Map;

    //inal contactTitle = arguments['name'];

    //print(arguments['name']);
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Theme(
        data: ThemeData(primaryIconTheme: IconThemeData(color: Colors.red)),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              title: Text(
                arguments['name'] as String,
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
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.topCenter,
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
                              horizontal: 15.0.w, vertical: 30.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 70.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/images/cup_cake.png'),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Birthday'),
                                          Text(
                                            '05.10.22',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15.sp,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Text(
                                    '2 Days To Go',
                                    style: TextStyle(
                                      color: Color(0xff1D9C23),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 40.h,
                              ),
                              Text(
                                'Gift Suggetions',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.sp,
                                  color: colorText,
                                ),
                              ),
                              SizedBox(
                                height: 5.0.h,
                              ),
                              // buildGridView(context.watch<Events>()),
                              GridView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: giftsData.giftList.length,
                                  itemBuilder: (context, index) =>
                                      BestSellingGift(
                                          giftsuggestions: true,
                                          imageURL: giftsData
                                              .giftList[index].imageURL,
                                          text: giftsData
                                              .giftList[index].giftName,
                                          price:
                                              giftsData.giftList[index].price),
                                  gridDelegate:
                                      SliverGridDelegateWithMaxCrossAxisExtent(
                                    childAspectRatio: 5 / 7,
                                    maxCrossAxisExtent: 200,
                                    crossAxisSpacing: 1,
                                    mainAxisSpacing: 1,
                                  )),
                              SizedBox(
                                height: 250.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: -50,
                        child: Container(
                          height: 112.h,
                          width: 112.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber,
                            image: DecorationImage(
                              image: AssetImage('assets/images/prof.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildGridView(giftsData) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: giftsData.giftList,
      itemBuilder: (context, index) => BestSellingGift(
          imageURL: giftsData.giftList[index].imageURL,
          text: giftsData.giftList[index].giftName,
          price: giftsData.giftList[index].price),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 8,
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
      ),
    );
  }
}
