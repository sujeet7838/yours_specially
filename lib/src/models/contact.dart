import 'package:flutter/material.dart';

class Contact {
  final String initials;
  final String name;
  final String phoneNumber;
  final Color color;
  bool isSelected;

  Contact(
      {required this.isSelected,
      required this.name,
      required this.phoneNumber,
      required this.initials,
      required this.color});
}
