import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yourspecially/src/constants/app_colors.dart';

class EditPersonalDetailsScreen extends StatefulWidget {
  const EditPersonalDetailsScreen({super.key});

  @override
  State<EditPersonalDetailsScreen> createState() =>
      _EditPersonalDetailsScreenState();
}

class _EditPersonalDetailsScreenState extends State<EditPersonalDetailsScreen> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _addressPart1 = TextEditingController();
  TextEditingController _addressPart2 = TextEditingController();
  TextEditingController _zipCodeController = TextEditingController();

  int? _selectedIndex;
  var _selectedItemList = [];
  var _isSelected = false;
  var _items = [
    {
      'id': '1',
      'index': 0,
      'color': Colors.white,
      'is_selected': false,
      'text': 'Home',
    },
    {
      'id': '2',
      'index': 1,
      'color': Colors.white,
      'is_selected': false,
      'text': 'Work',
    },
    {
      'id': '3',
      'index': 2,
      'color': Colors.white,
      'is_selected': false,
      'text': 'Friends and family',
    },
    {
      'id': '4',
      'index': 3,
      'color': Colors.white,
      'is_selected': false,
      'text': 'Other',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Theme(
        data: ThemeData(primaryIconTheme: IconThemeData(color: Colors.red)),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              title: Text(
                'Edit Personal Details',
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
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: ListView(
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
                            horizontal: 35.0.w, vertical: 30.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              controller: _firstNameController,
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(
                                    top: 13.0,
                                    bottom: 13.0,
                                    left: 20.0,
                                    right: 20.0,
                                  ),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffAAAAAA),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        50.0,
                                      ),
                                    ),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: colorPrimarySeed,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        50.0,
                                      ),
                                    ),
                                  ),
                                  hintText: 'First Name',
                                  hintStyle: TextStyle(
                                    color: Color(0xffAAAAAA),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                  )),
                            ),
                            SizedBox(
                              height: 23.h,
                            ),
                            TextFormField(
                              controller: _lastNameController,
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(
                                    top: 13.0,
                                    bottom: 13.0,
                                    left: 20.0,
                                    right: 20.0,
                                  ),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffAAAAAA),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        50.0,
                                      ),
                                    ),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: colorPrimarySeed,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        50.0,
                                      ),
                                    ),
                                  ),
                                  hintText: 'Last Name',
                                  hintStyle: TextStyle(
                                    color: Color(0xffAAAAAA),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                  )),
                            ),
                            SizedBox(
                              height: 23.h,
                            ),
                            TextFormField(
                              controller: _lastNameController,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xffEDEDED),
                                  contentPadding: const EdgeInsets.only(
                                    top: 13.0,
                                    bottom: 13.0,
                                    left: 20.0,
                                    right: 20.0,
                                  ),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.green,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        50.0,
                                      ),
                                    ),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: colorPrimarySeed,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        50.0,
                                      ),
                                    ),
                                  ),
                                  hintText: 'smith02@gmail.com',
                                  hintStyle: TextStyle(
                                    color: Color(0xffAAAAAA),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                  )),
                            ),
                            SizedBox(
                              height: 23.h,
                            ),
                            TextFormField(
                              controller: _addressPart1,
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(
                                    top: 13.0,
                                    bottom: 13.0,
                                    left: 20.0,
                                    right: 20.0,
                                  ),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffAAAAAA),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        50.0,
                                      ),
                                    ),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: colorPrimarySeed,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        50.0,
                                      ),
                                    ),
                                  ),
                                  hintText: 'house /flat/block no.',
                                  hintStyle: TextStyle(
                                    color: Color(0xffAAAAAA),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                  )),
                            ),
                            SizedBox(
                              height: 23.h,
                            ),
                            TextFormField(
                              controller: _addressPart2,
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(
                                    top: 13.0,
                                    bottom: 13.0,
                                    left: 20.0,
                                    right: 20.0,
                                  ),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffAAAAAA),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        50.0,
                                      ),
                                    ),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: colorPrimarySeed,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        50.0,
                                      ),
                                    ),
                                  ),
                                  hintText: 'Apartment/road/area',
                                  hintStyle: TextStyle(
                                    color: Color(0xffAAAAAA),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                  )),
                            ),
                            SizedBox(
                              height: 23.h,
                            ),
                            TextFormField(
                              controller: _zipCodeController,
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(
                                    top: 13.0,
                                    bottom: 13.0,
                                    left: 20.0,
                                    right: 20.0,
                                  ),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffAAAAAA),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        50.0,
                                      ),
                                    ),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: colorPrimarySeed,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        50.0,
                                      ),
                                    ),
                                  ),
                                  hintText: 'Zipcode',
                                  hintStyle: TextStyle(
                                    color: Color(0xffAAAAAA),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                  )),
                            ),
                            SizedBox(
                              height: 23.h,
                            ),
                            Text(
                              'Save As',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Color(0xffAAAAAA),
                              ),
                            ),
                            SizedBox(height: 12.h),
                            Wrap(
                              runSpacing: 15.0,
                              spacing: 15.0,
                              children: _items
                                  .map((item) => ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          elevation: 0.0,
                                          onPrimary:
                                              (item['index'] == _selectedIndex)
                                                  ? Colors.white
                                                  : colorText,
                                          primary:
                                              (item['index'] == _selectedIndex)
                                                  ? colorSecondarySeed
                                                  : Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              side: (item['index'] ==
                                                      _selectedIndex)
                                                  ? BorderSide(
                                                      color: Colors.white)
                                                  : BorderSide(
                                                      color: Colors.grey[350]
                                                          as Color))),
                                      onPressed: () {
                                        setState(() {
                                          _selectedIndex = _items.indexOf(item);
                                        });
                                        // _selectedItemList.add(item['text']);
                                        // setState(() {
                                        //   item['is_selected'] =
                                        //       item['is_selected'] == true
                                        //           ? false
                                        //           : true;
                                        // });
                                        // if (item['is_selected'] == true) {
                                        //   _selectedItemList.add(item['text']);
                                        // } else {
                                        //   _selectedItemList
                                        //       .remove(item['text']);
                                        // }
                                        // if (_selectedItemList.length >= 5) {
                                        //   setState(() {
                                        //     _isSelected = true;
                                        //   });
                                        // }
                                        // if (_selectedItemList.length < 5) {
                                        //   setState(() {
                                        //     _isSelected = false;
                                        //   });
                                        // }
                                      },
                                      child: Text(item['text'] as String)))
                                  .toList(),
                            ),
                            SizedBox(
                              height: 250.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.0.w, vertical: 30.w),
        child: ElevatedButton(
          onPressed: () {
            //Navigator.pushNamed(context, bottomNavigationBar);
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
            'UPDATE',
          ),
        ),
      ),
    );
  }
}
