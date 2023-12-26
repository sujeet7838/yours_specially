import 'package:flutter/material.dart';
import 'package:yourspecially/src/constants/app_colors.dart';
import 'package:yourspecially/src/routing/routing_config.dart';
import '../models/contact.dart';

import '../features/contacts/contact_details_screen.dart';

class SelectedContactItem extends StatefulWidget {
  //const ContactItem({super.key});
  final String name;
  final String initials;
  bool isSelected;
  List selectedContactList;
  final String phoneNumber;
  final Color color;

  SelectedContactItem(
      {required this.initials,
      required this.isSelected,
      required this.name,
      required this.selectedContactList,
      required this.color,
      required this.phoneNumber});

  @override
  State<SelectedContactItem> createState() => _SelectedContactItemState();
}

class _SelectedContactItemState extends State<SelectedContactItem> {
  @override
  Widget build(BuildContext context) {
    print(widget.name);
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        ContactDetailsScreen.routeName,
        arguments: {
          'name': widget.name,
        },
      ),
      child: ListTile(
        onTap: () => Navigator.pushNamed(
          context,
          ContactDetailsScreen.routeName,
          arguments: {
            'name': widget.name,
          },
        ),
        leading: CircleAvatar(
          backgroundColor: widget.color,
          child: Text(
            widget.initials,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        title: Text(widget.name),
        // trailing: widget.isSelected == true
        //     ? Icon(
        //         Icons.check_circle,
        //         color: colorSecondarySeed,
        //       )
        //     : Icon(Icons.brightness_1_outlined),
        // onTap: () {
        //   // setState(() {
        //   //   widget.isSelected = !widget.isSelected;
        //   //   if (widget.isSelected == true) {
        //   //     widget.selectedContactList.add(
        //   //       Contact(
        //   //           isSelected: true,
        //   //           name: widget.name,
        //   //           phoneNumber: widget.phoneNumber,
        //   //           initials: widget.initials,
        //   //           color: widget.color),
        //   //     );
        //   //   } else if (widget.isSelected == false) {
        //   //     widget.selectedContactList
        //   //         .removeWhere((element) => element.name == widget.name);
        //   //   }
        //   // });
        // },
      ),
    );
  }
}
