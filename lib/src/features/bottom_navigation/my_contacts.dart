//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:yourspecially/src/utils/device_size_config.dart';
import 'package:yourspecially/src/widgets/selected_contact_item.dart';

import '../../constants/app_colors.dart';
import '../../models/contact.dart';
import '../../widgets/category_tile.dart';
import '../../widgets/contact_item.dart';

class MyContactsScreen extends StatefulWidget {
  @override
  State<MyContactsScreen> createState() => _MyContactsScreenState();
}

class _MyContactsScreenState extends State<MyContactsScreen> {
  late Widget _content;
  var _isSelected;
  var _selectedIndex = 0;
  List _buttons = [
    {'text': 'My Contacts'},
    {'text': 'Selected Contacts'}
  ];
  List<Contact> _contactList = [
    Contact(
        isSelected: false,
        name: 'Contact 1',
        phoneNumber: '12345',
        initials: 'A',
        color: Color(0xff156DF1)),
    Contact(
        isSelected: false,
        name: 'Contact 2',
        phoneNumber: '12345',
        initials: 'B',
        color: Color(0xffFFB93E)),
    Contact(
        isSelected: false,
        name: 'Contact 3',
        phoneNumber: '12345',
        initials: 'C',
        color: Colors.red),
    Contact(
        isSelected: false,
        name: 'Contact 4',
        phoneNumber: '12345',
        initials: 'D',
        color: Color(0xffF0639F)),
    Contact(
        isSelected: false,
        name: 'Contact 5',
        phoneNumber: '12345',
        initials: 'E',
        color: Color(0xffE73F63)),
    Contact(
        isSelected: false,
        name: 'Contact 6',
        phoneNumber: '12345',
        initials: 'F',
        color: Color(0xffE77B3F)),
    Contact(
        isSelected: false,
        name: 'Contact 7',
        phoneNumber: '12345',
        initials: 'G',
        color: Color(0xff57BBF8))
  ];

  List<Contact> _selectedContactList = [];
  //const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    DeviceSizeConfig deviceSizeConfig = DeviceSizeConfig(context);
    final mediaQuery = MediaQuery.of(context).size;

    return Material(
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
            Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: _buttons
                    .map(
                      (btn) => ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _selectedIndex = _buttons.indexOf(btn);
                            _content = _buildMyContactsContent();
                          });
                        },
                        child: Text(btn['text']),
                        style: ElevatedButton.styleFrom(
                            primary: (_selectedIndex == _buttons.indexOf(btn))
                                ? colorSecondarySeed
                                : Colors.white,
                            onPrimary: (_selectedIndex == _buttons.indexOf(btn))
                                ? Colors.white
                                : Colors.black,
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            )),
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(
              height: 10.h,
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
                padding:
                    EdgeInsets.symmetric(horizontal: 35.0.w, vertical: 30.w),
                child: Column(
                  children: [
                    //_buildGridView(),
                    (_selectedIndex == 0)
                        ? _buildMyContactsContent()
                        : _buildSelectedContactContent(),
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
    );
  }

  Widget _buildMyContactsContent() {
    return Column(
      children: _contactList.map((contact) {
        return ContactItem(
          initials: contact.initials,
          isSelected: contact.isSelected,
          name: contact.name,
          phoneNumber: contact.phoneNumber,
          selectedContactList: _selectedContactList,
          color: contact.color,
        );
      }).toList(),
    );
  }

  Widget _buildSelectedContactContent() {
    return Column(
      children: _contactList
          .map((contact) => SelectedContactItem(
                initials: contact.initials,
                isSelected: contact.isSelected,
                name: contact.name,
                phoneNumber: contact.phoneNumber,
                selectedContactList: _selectedContactList,
                color: contact.color,
              ))
          .toList(),
    );
  }
}
