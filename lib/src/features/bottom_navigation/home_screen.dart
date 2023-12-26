import 'package:flutter/material.dart';
import 'package:get_it_mixin/get_it_mixin.dart';
import 'package:logging/logging.dart';
import 'package:yourspecially/src/constants/app_colors.dart';
import 'package:yourspecially/src/features/authentication/application/authentication_manager.dart';
import 'package:yourspecially/src/providers/events.dart';
import 'package:yourspecially/src/routing/routing_config.dart';
import 'package:yourspecially/src/utils/device_size_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:provider/provider.dart';
//import 'package:yourspecially/src/widgets/event_item.dart';
import '../../providers/products.dart';
import '../../widgets/my_drawer_header.dart';
import '../../widgets/trending_gift.dart';
import '../../widgets/best_selling_gift.dart';
import '../../widgets/my_drawer.dart';
import '../../widgets/event_item.dart';

class HomeScreen extends StatefulWidget with GetItStatefulWidgetMixin {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with GetItStateMixin {
  //const Homescreen({super.key});
  int activeIndex = 0;
  final Logger logger = Logger('AuthenticationService');
  @override
  Widget build(BuildContext context) {
    String firstName = get<AuthenticationManager>()
        .signUpFullNameChangedCmd
        .value
        .split(' ')[0];

    Products products = Provider.of<Products>(context); //listener
    Events eventsData = Provider.of<Events>(context); //listener
    DeviceSizeConfig deviceSizeConfig = DeviceSizeConfig(context);
    final Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: <double>[
              0.85,
              0.65,
              0.65,
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
          padding: EdgeInsets.zero,
          // ignore: always_specify_types
          children: [
            // SizedBox(
            //   height: 1.0.h,
            // ),
            Container(
              //color: Colors.amber,
              padding:
                  EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.055),
              child: Text(
                'Hi $firstName',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 28),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.055),
              child: Text(
                'Welcome to Gift Shop',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
            ),
            SizedBox(
              height: mediaQuery.height * 0.02,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.055),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white.withOpacity(0.2),
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 15.w),
                  hintText: 'Search for gifts, cake & more...',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    fontSize: 12.0.sp,
                    color: Colors.white.withOpacity(0.8),
                  ),
                  suffixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(60.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60.0),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60.0),
                    borderSide: BorderSide.none,
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: mediaQuery.height * 0.012,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 14),
              //width: double.infinity,
              height: mediaQuery.height * 0.2,
              // decoration: BoxDecoration(
              //   color: Colors.white.withOpacity(0.1),
              //   borderRadius: BorderRadius.circular(10.0),
              // ),
              child: ListView(
                padding:
                    EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.055),
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15.w),
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/gift.png',
                          width: 22.w,
                          height: 22.h,
                        ),
                        Text(
                          '10',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0.sp,
                            color: Colors.white,
                          ),
                        ),
                        Center(
                            child: Text(
                          'Total Spend gift',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 11.0.sp,
                          ),
                        ))
                      ],
                    ),
                    width: mediaQuery.width * 0.26,
                    height: mediaQuery.height * 0.6,
                    //color: Colors.pink,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xffFD6296),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15.w),
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/calender1.png',
                          width: 22.w,
                          height: 22.h,
                        ),
                        Text(
                          '45',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0.sp,
                            color: Colors.white,
                          ),
                        ),
                        Center(
                            child: Text(
                          'Upcoming Events',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 11.0.sp,
                          ),
                        ))
                      ],
                    ),
                    width: mediaQuery.width * 0.26,
                    height: mediaQuery.height * 0.6,
                    //color: Colors.pink,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xffFFD68E),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15.w),
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/calendar2.png',
                          width: 22.w,
                          height: 22.h,
                        ),
                        Text(
                          '10',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0.sp,
                            color: Colors.white,
                          ),
                        ),
                        const Center(
                            child: Text(
                          'The Month Events',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 11.0,
                          ),
                        ))
                      ],
                    ),
                    width: mediaQuery.width * 0.26,
                    height: mediaQuery.height * 0.6,
                    //color: Colors.pink,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xff82E086),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15.w),
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/friends.png',
                            width: 22.w, height: 22.h),
                        Text(
                          '10',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0.sp,
                            color: Colors.white,
                          ),
                        ),
                        Center(
                            child: Text(
                          'Your Friends',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 11.0.sp,
                          ),
                        ))
                      ],
                    ),
                    width: mediaQuery.width * 0.24,
                    height: mediaQuery.height * 0.4,
                    //color: Colors.pink,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xffD681EB),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: mediaQuery.height * 0.02,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.055),
              child: CarouselSlider.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                        vertical: mediaQuery.height * 0.04,
                        horizontal: mediaQuery.width * 0.06),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Gifts That grow',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 22.0,
                              color: Color(0xff1E3F0D),
                            ),
                          ),
                          SizedBox(
                            height: 2.0.h,
                          ),
                          Text(
                            'Newly launched plants',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0.sp,
                              color: colorText,
                            ),
                          ),
                          SizedBox(
                            height: 15.0.h,
                          ),
                          SizedBox(
                            height: 27.0.h,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0.0,
                                primary: colorSecondarySeed,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'EXPLORE NOW',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/carousel.png',
                          ),
                          fit: BoxFit.cover),
                    ),
                     color: Colors.green,
                  );
                },
                options: CarouselOptions(
                  initialPage: 0,
                  height: mediaQuery.height * 0.21,
                  enableInfiniteScroll: false,
                  viewportFraction: 1,
                  onPageChanged: (int index, CarouselPageChangedReason reason) {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                ),
              ),
            ),

            const SizedBox(
              height: 9.0,
            ),
            buildIndicator(),
            SizedBox(
              height: 25.0.h,
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
                padding: const EdgeInsets.all(0.0),
                child: Column(children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(
                        top: 10.0.h,
                        bottom: 10.0.h,
                        left: 8.0.w,
                        right: 8.0.w,
                      ),
                      child: Container(
                        //color: Colors.amber,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 10.0.w, right: 10.0.w, top: 18.0.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Selected Contacts',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.sp,
                                  color: colorText,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'View all',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13.sp,
                                      color: colorSecondarySeed,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 10,
                                    color: colorSecondarySeed,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 5.0.h,
                  ),
                  Container(
                    //padding: EdgeInsets.only(left: 10.0),
                    height: mediaQuery.height * 0.3,
                    child: ListView.builder(
                      padding: EdgeInsets.only(left: 18.w),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.only(right: 25.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 100.w,
                                height: 100.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      products.listOfCategories[index]
                                          ['image_URL'],
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Colors.greenAccent,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Text(
                                products.listOfCategories[index]['title'],
                                style: TextStyle(
                                    color: colorText,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp),
                                // textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        );
                      },
                      itemCount: products.listOfCategories.length,
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.02,
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                        top: 10.0.h,
                        bottom: 5.0.h,
                        left: 8.0.w,
                        right: 8.0.w,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0.w, right: 10.0.w),
                        //color: Colors.amber,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Upcoming Events',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16.sp,
                                color: colorText,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'More',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.sp,
                                    color: colorSecondarySeed,
                                  ),
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 10,
                                  color: colorSecondarySeed,
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                  // SizedBox(
                  //   height: 5.0.h,
                  // ),
                  Container(
                    padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
                    width: double.infinity,
                    height: mediaQuery.height * 0.28,
                    //color: Color(0xffE8E8E8),
                    child: ListView.builder(
                        padding: EdgeInsets.only(left: 10.w),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return EventItem(
                              contactName:
                                  eventsData.upcomingEvents[index].contactName,
                              date: eventsData.upcomingEvents[index].date,
                              name: eventsData.upcomingEvents[index].name);
                          // return TrendingGift(
                          //     imageURL: products.trendingGifts[index].imgURL,
                          //     text: products.trendingGifts[index].name);
                        },
                        itemCount: eventsData.upcomingEvents.length),
                  ),
                  // SizedBox(
                  //   height: .0.h,
                  // ),
                  // Container(
                  //   margin: EdgeInsets.symmetric(horizontal: 20.w),
                  //   width: 330.w,
                  //   height: 109.h,
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(10),
                  //       image: const DecorationImage(
                  //         image: AssetImage('assets/images/banner2.png'),
                  //         fit: BoxFit.cover,
                  //       )),
                  // ),
                  // SizedBox(
                  //   height: mediaQuery.height * 0.02,
                  // ),
                  Padding(
                      padding: EdgeInsets.only(
                        top: 5.0.h,
                        bottom: 5.0.h,
                        left: 8.0.w,
                        right: 8.0.w,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0.w, right: 10.0.w),
                        //color: Colors.amber,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Best selling gifts',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.sp,
                                    color: colorText,
                                  ),
                                ),
                                Text(
                                  'packed with love',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11.0.sp,
                                    color: colorText.withOpacity(0.5),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'More',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.sp,
                                    color: colorSecondarySeed,
                                  ),
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 10,
                                  color: colorSecondarySeed,
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                  // SizedBox(
                  //   height: 17.0.h,
                  // ),
                  Container(
                    // padding: EdgeInsets.only(
                    //   top: 10.h,
                    //   bottom: 25.h,
                    // ),
                    width: double.infinity,
                    height: mediaQuery.height * 0.3,
                    //color: const Color(0xffE8E8E8),
                    child: ListView.builder(
                        padding: EdgeInsets.only(left: 10.w),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return BestSellingGift(
                            imageURL: products.bestSellingGifts[index].imgURL,
                            text: products.bestSellingGifts[index].name,
                            price: products.bestSellingGifts[index].price!,
                          );
                        },
                        itemCount: products.bestSellingGifts.length),
                  ),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    width: 330.w,
                    height: 109.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/banner4.png'),
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.04,
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                        top: 10.0.h,
                        bottom: 5.0.h,
                        left: 8.0.w,
                        right: 8.0.w,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0.w, right: 10.0.w),
                        //color: Colors.amber,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Popular In Gifting',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.sp,
                                    color: colorText,
                                  ),
                                ),
                                Text(
                                  'indulge your loved ones with these',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11.0.sp,
                                    color: colorText.withOpacity(0.5),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                              top: 5.0.h,
                              bottom: 5.0.h,
                              left: 8.0.w,
                              right: 8.0.w,
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 10.0.w, right: 10.0.w),
                              //color: Colors.amber,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Gourmet',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                      color: colorText,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'More',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13.sp,
                                          color: colorSecondarySeed,
                                        ),
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_ios,
                                        size: 10,
                                        color: colorSecondarySeed,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )),
                        // SizedBox(
                        //   height: 2.h,
                        // ),
                        Container(
                          // padding: EdgeInsets.only(
                          //     top: 2.h, bottom: 25.h, left: 18.w),
                          width: double.infinity,
                          height: mediaQuery.height * 0.3,
                          //color: Color(0xffE8E8E8),
                          child: ListView.builder(
                              padding: EdgeInsets.only(left: 10.w),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return BestSellingGift(
                                  imageURL: products.gourmetGifts[index].imgURL,
                                  text: products.gourmetGifts[index].name,
                                  price: products.gourmetGifts[index].price!,
                                );
                              },
                              itemCount: products.gourmetGifts.length),
                        ),
                        //-------another category starts here---------------
                        Container(
                          width: double.infinity,
                          //color: Color(0xffE8E8E8),
                          child: Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                    top: 10.0.h,
                                    bottom: 5.0.h,
                                    left: 8.0.w,
                                    right: 8.0.w,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.0.w, right: 10.0.w),
                                    //color: Colors.amber,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Gift for Anniversary',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.sp,
                                            color: colorText,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'More',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13.sp,
                                                color: colorSecondarySeed,
                                              ),
                                            ),
                                            const Icon(
                                              Icons.arrow_forward_ios,
                                              size: 10,
                                              color: colorSecondarySeed,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                              Container(
                                // padding: EdgeInsets.only(
                                //     top: 2.h, bottom: 25.h, left: 18.w),
                                width: double.infinity,
                                height: mediaQuery.height * 0.3,
                                //color: Color(0xffE8E8E8),
                                child: ListView.builder(
                                    padding: EdgeInsets.only(left: 10.w),
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return BestSellingGift(
                                        imageURL: products
                                            .anniversaryGifts[index].imgURL,
                                        text: products
                                            .anniversaryGifts[index].name,
                                        price: products
                                            .anniversaryGifts[index].price!,
                                      );
                                    },
                                    itemCount:
                                        products.anniversaryGifts.length),
                              ),
                            ],
                          ),
                        ),
                        //---------another category starts----------------
                        Container(
                          width: double.infinity,
                          //color: Color(0xffE8E8E8),
                          child: Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                    top: 10.0.h,
                                    bottom: 5.0.h,
                                    left: 8.0.w,
                                    right: 8.0.w,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.0.w, right: 10.0.w),
                                    //color: Colors.amber,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Gift for Birthday',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.sp,
                                            color: colorText,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'More',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13.sp,
                                                color: colorSecondarySeed,
                                              ),
                                            ),
                                            const Icon(
                                              Icons.arrow_forward_ios,
                                              size: 10,
                                              color: colorSecondarySeed,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                              Container(
                                // padding:
                                //     EdgeInsets.only(top: 2.h, bottom: 25.h),
                                width: double.infinity,
                                //color: Colors.red,
                                //height: mediaQuery.height * 0.44,
                                height: mediaQuery.height * 0.3,
                                //color: Color(0xffE8E8E8),
                                child: ListView.builder(
                                    padding: EdgeInsets.only(left: 10.w),
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return BestSellingGift(
                                        imageURL:
                                            products.gourmetGifts[index].imgURL,
                                        text: products.gourmetGifts[index].name,
                                        price:
                                            products.gourmetGifts[index].price!,
                                      );
                                    },
                                    itemCount: products.gourmetGifts.length),
                              ),
                              SizedBox(
                                height: 100.h,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ],
        ),
      ),

      //drawer: MyDrawer(),
    );
  }

  Widget buildIndicator() => Center(
        child: AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: 5,
          effect: ExpandingDotsEffect(
            dotWidth: 6,
            dotHeight: 6,
            activeDotColor: Colors.white,
            dotColor: Colors.white.withOpacity(0.1),
          ),
        ),
      );
}
