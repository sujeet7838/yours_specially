import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourspecially/src/providers/gift_suggestions.dart';
import 'package:yourspecially/src/widgets/my_drawer.dart';
import '../constants/app_colors.dart';

import '../features/bottom_navigation/another_screen.dart';
//import '../features/bottom_navigation/calender.dart';
import '../features/bottom_navigation/my_contacts.dart';
import '../features/bottom_navigation/home_screen.dart';
import '../features/bottom_navigation/profile_screen.dart';
//importing provider
import 'package:provider/provider.dart';
import '../providers/events.dart';
import '../providers/products.dart';
import '../providers/drawer_data.dart';

import 'cart_icon.dart';

class BottomNavigation extends StatefulWidget {
  //const BottomNavigation({super.key});
  // final String title;
  // BottomNavigation(this.title);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final bool pointer = false;
  int index = 2;
  final List<Map<String, Object>> screens = [
    {
      'page': HomeScreen(),
      'title': '',
    },
    {
      'page': MyContactsScreen(),
      'title': 'My Contacts',
    },
    {
      'page': HomeScreen(),
      'title': '',
    },
    {
      'page': MyContactsScreen(),
      'title': 'My Contacts',
    },
    {
      'page': ProfileScreen(),
      'title': 'My Profile',
    }
    // HomeScreen(),
    // CategoriesScreen(),
    // HomeScreen(),
    // AnotherScreen(),
    // ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final items = [
      Image.asset(
        'assets/images/Vector1.png',
        width: index == 0 ? width * 0.15 : width * 0.7,
        height: index == 0 ? height * 0.04 : height * 0.2,
        color: index == 0 ? Colors.white : Color(0xff2160AB),
      ),
      Image.asset(
        'assets/images/Vector2.0.png',
        width: index == 1 ? width * 0.15 : width * 0.7,
        height: index == 1 ? height * 0.04 : height * 0.2,
        color: index == 1 ? Colors.white : Color(0xff2160AB),
      ),
      Image.asset(
        'assets/images/Vector5.png',
        width: index == 2 ? width * 0.15 : width * 0.7,
        height: index == 2 ? height * 0.04 : height * 0.2,
        color: index == 2 ? Colors.white : Color(0xff2160AB),
      ),
      Image.asset(
        'assets/images/Vector3.png',
        width: index == 3 ? width * 0.15 : width * 0.7,
        height: index == 3 ? height * 0.04 : height * 0.2,
        color: index == 3 ? Colors.white : Color(0xff2160AB),
      ),
      Image.asset(
        'assets/images/Vector4.png',
        width: index == 4 ? width * 0.15 : width * 0.7,
        height: index == 4 ? height * 0.04 : height * 0.2,
        color: index == 4 ? Colors.white : Color(0xff2160AB),
      ),
    ];

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Products()),
        ChangeNotifierProvider(create: (context) => DrawerData()),
        ChangeNotifierProvider(create: (context) => Events()),
        //ChangeNotifierProvider(create: (context) => GiftSuggetions()),
      ],
      child: Scaffold(
        body: Theme(
          data: ThemeData(primaryIconTheme: IconThemeData(color: Colors.red)),
          child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                    SliverAppBar(
                      title: Text(
                        screens[index]['title'] as String,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                        ),
                      ),
                      elevation: 0,
                      centerTitle: true,
                      actions: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications_none,
                            color: Colors.white,
                            size: 22,
                          ),
                        ),
                        // IconButton(
                        //   onPressed: () {},
                        //   icon: const Icon(
                        //     Icons.shopping_cart,
                        //     color: Colors.white,
                        //     size: 22,
                        //   ),
                        // ),
                        CartIcon(),
                      ],
                      floating: true,
                      pinned: false,
                      snap: true,
                      backgroundColor: Color(0xff52A0FE),
                      //backgroundColor: Colors.red,
                    ),
                  ],
              body: screens[index]['page'] as Widget),
        ),
        drawer: MyDrawer(),
        extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
          items: items,
          index: index,
          height: 60,
          color: Color(0xff52A0FE),
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: colorSecondarySeed,
          onTap: (index) => setState(() {
            this.index = index;
          }),
        ),
      ),
    );
  }
}
