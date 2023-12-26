import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourspecially/src/constants/app_colors.dart';
import 'package:provider/provider.dart';
import '../providers/drawer_data.dart';

class MyDrawer extends StatefulWidget {
  //const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  //var _selectedDestination = 0;

  @override
  Widget build(BuildContext context) {
    var drawerData = Provider.of<DrawerData>(context);
    final mediaQuery = MediaQuery.of(context).size;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: mediaQuery.height * 0.26,
            child: DrawerHeader(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  //color: Colors.blue,
                  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 65.h,
                    width: 65.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/profile_pic.png'),
                          fit: BoxFit.cover,
                        )),
                  ),
                  // SizedBox(
                  //   height: mediaQuery.height * 0.01,
                  // ),
                  Text(
                    'Hi Smith',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      color: colorText,
                    ),
                  ),
                  Text(
                    'Welcome to Gift Shop',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: colorText.withOpacity(0.8),
                    ),
                  ),
                  // SizedBox(
                  //   height: 50.h,
                  // )
                ],
              ),
            ),
          ),
          ListTile(
            selected: drawerData.selectedDestination == 0,
            onTap: () => drawerData.selectDestination(0),
            leading: Image(
              image: AssetImage('assets/images/listtile1.png'),
              width: 21.w,
              height: 21.h,
            ),
            title: Text(
              'Orders',
              style: (drawerData.selectedDestination == 0)
                  ? TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: colorText,
                    )
                  : TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: colorText,
                    ),
            ),
          ),
          ListTile(
            selected: drawerData.selectedDestination == 1,
            onTap: () => drawerData.selectDestination(1),
            leading: Image(
              image: AssetImage('assets/images/listtile2.png'),
              width: 21.w,
              height: 21.h,
            ),
            title: Text(
              'Offers',
              style: (drawerData.selectedDestination == 1)
                  ? TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: colorText,
                    )
                  : TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: colorText,
                    ),
            ),
          ),
          ListTile(
            selected: drawerData.selectedDestination == 2,
            onTap: () => drawerData.selectDestination(2),
            leading: Image(
              image: AssetImage('assets/images/listtile3.png'),
              width: 21.w,
              height: 21.h,
            ),
            title: Text(
              'My Coupons',
              style: (drawerData.selectedDestination == 2)
                  ? TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: colorText,
                    )
                  : TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: colorText,
                    ),
            ),
          ),
          ListTile(
            selected: drawerData.selectedDestination == 3,
            onTap: () => drawerData.selectDestination(3),
            leading: Image(
              image: AssetImage('assets/images/listtile4.png'),
              width: 21.w,
              height: 21.h,
            ),
            title: Text(
              'Wallet',
              style: (drawerData.selectedDestination == 3)
                  ? TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: colorText,
                    )
                  : TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: colorText,
                    ),
            ),
          ),
          ListTile(
            selected: drawerData.selectedDestination == 4,
            onTap: () => drawerData.selectDestination(4),
            leading: Image(
              image: AssetImage('assets/images/listtile5.png'),
              width: 21.w,
              height: 21.h,
            ),
            title: Text(
              'Wishlist',
              style: (drawerData.selectedDestination == 4)
                  ? TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: colorText,
                    )
                  : TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: colorText,
                    ),
            ),
          ),
          ListTile(
            selected: drawerData.selectedDestination == 5,
            onTap: () => drawerData.selectDestination(5),
            leading: Image(
              image: AssetImage('assets/images/listtile6.png'),
              width: 21.w,
              height: 21.h,
            ),
            title: Text(
              'Help & Support',
              style: (drawerData.selectedDestination == 5)
                  ? TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: colorText,
                    )
                  : TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: colorText,
                    ),
            ),
          ),
          ListTile(
            selected: drawerData.selectedDestination == 6,
            onTap: () => drawerData.selectDestination(6),
            leading: Image(
              image: AssetImage('assets/images/listtile7.png'),
              width: 21.w,
              height: 21.h,
            ),
            title: Text(
              'Addresses',
              style: (drawerData.selectedDestination == 6)
                  ? TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: colorText,
                    )
                  : TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: colorText,
                    ),
            ),
          ),
          ListTile(
            selected: drawerData.selectedDestination == 7,
            onTap: () => drawerData.selectDestination(7),
            leading: Image(
              image: AssetImage('assets/images/listtile8.png'),
              width: 21.w,
              height: 21.h,
            ),
            title: Text(
              'Payment Method',
              style: (drawerData.selectedDestination == 7)
                  ? TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: colorText,
                    )
                  : TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: colorText,
                    ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Divider(
            color: Colors.black.withOpacity(0.5),
            thickness: 0.2,
          ),
          SizedBox(
            height: 15.h,
          ),
          ListTile(
            selected: drawerData.selectedDestination == 8,
            onTap: () => drawerData.selectDestination(8),
            leading: Image(
              image: AssetImage('assets/images/listtile9.png'),
              width: 21.w,
              height: 21.h,
            ),
            title: Text(
              'About Us',
              style: (drawerData.selectedDestination == 8)
                  ? TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: colorText,
                    )
                  : TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: colorText,
                    ),
            ),
          ),
          ListTile(
            selected: drawerData.selectedDestination == 9,
            onTap: () => drawerData.selectDestination(9),
            leading: Image(
              image: AssetImage('assets/images/listtile10.png'),
              width: 21.w,
              height: 21.h,
            ),
            title: Text(
              'Terms & Conditions',
              style: (drawerData.selectedDestination == 9)
                  ? TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: colorText,
                    )
                  : TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: colorText,
                    ),
            ),
          ),
          ListTile(
            selected: drawerData.selectedDestination == 10,
            onTap: () => drawerData.selectDestination(10),
            leading: Image(
              image: AssetImage('assets/images/listtile11.png'),
              width: 21.w,
              height: 21.h,
            ),
            title: Text(
              'Privacy Policy',
              style: (drawerData.selectedDestination == 10)
                  ? TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: colorText,
                    )
                  : TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: colorText,
                    ),
            ),
          ),
          ListTile(
            selected: drawerData.selectedDestination == 11,
            onTap: () => drawerData.selectDestination(11),
            leading: Image(
              image: AssetImage('assets/images/listtile12.png'),
              width: 21.w,
              height: 21.h,
            ),
            title: Text(
              'Log Out',
              style: (drawerData.selectedDestination == 11)
                  ? TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: colorText,
                    )
                  : TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: colorText,
                    ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }

  // void _selectDestination(int index) {
  //   setState(() {
  //     _selectedDestination = index;
  //   });
  // }
}
