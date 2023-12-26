import 'package:flutter/material.dart';
import '../models/gift.dart';

class GiftSuggestions with ChangeNotifier {
  final List<Gift> _giftList = <Gift>[
    Gift(
        giftName: 'Fossil watch for men',
        imageURL: 'assets/images/fossil.png',
        price: 150),
    Gift(
        giftName: 'Couple Coffee Mug',
        imageURL: 'assets/images/fossil.png',
        price: 150),
    Gift(
        giftName: 'Fossil watch for men',
        imageURL: 'assets/images/fossil.png',
        price: 150),
    Gift(
        giftName: 'Couple Coffee Mug',
        imageURL: 'assets/images/fossil.png',
        price: 150),
    Gift(
        giftName: 'Fossil watch for men',
        imageURL: 'assets/images/fossil.png',
        price: 150),
    Gift(
        giftName: 'Couple Coffee Mug',
        imageURL: 'assets/images/fossil.png',
        price: 150),
    Gift(
        giftName: 'Fossil watch for men',
        imageURL: 'assets/images/fossil.png',
        price: 150),
  ];

  List<Gift> get giftList {
    return <Gift>[..._giftList];
  }
}
