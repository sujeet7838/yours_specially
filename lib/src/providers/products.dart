import 'package:flutter/material.dart';
import 'package:yourspecially/src/models/product.dart';

class Products with ChangeNotifier {
  List _listOfProductCategories = [
    {
      'title': 'Contact 1',
      'image_URL': 'assets/images/frnd1.png',
    },
    {
      'title': 'Contact 2',
      'image_URL': 'assets/images/frnd2.png',
    },
    {
      'title': 'Contact 3',
      'image_URL': 'assets/images/frnd3.png',
    },
    {
      'title': 'Contact 4',
      'image_URL': 'assets/images/frnd4.png',
    },
  ];

  List get listOfCategories {
    return [..._listOfProductCategories];
  }

  List<Product> _trendingProducts = [
    Product(
      id: '1',
      imgURL: 'assets/images/trending1.png',
      name: 'Flowers',
    ),
    Product(
      id: '2',
      imgURL: 'assets/images/trending2.png',
      name: 'Cakes',
    ),
    Product(
      id: '3',
      imgURL: 'assets/images/trending1.png',
      name: 'Photo Gifts',
    ),
    Product(
      id: '4',
      imgURL: 'assets/images/trending2.png',
      name: 'Flowers',
    ),
  ];

  List<Product> get trendingGifts {
    return [..._trendingProducts];
  }

  List<Product> _bestSellingProducts = [
    Product(
      id: '1',
      name: 'Timex Watch for Men',
      imgURL: 'assets/images/watch.png',
      price: 150,
    ),
    Product(
      id: '2',
      name: 'Fossil Watch for Men',
      imgURL: 'assets/images/fossil.png',
      price: 150,
    ),
    Product(
      id: '3',
      name: 'Fossil Watch for Men',
      imgURL: 'assets/images/fossil.png',
      price: 150,
    ),
  ];

  List<Product> get bestSellingGifts {
    return [..._bestSellingProducts];
  }

  List<Product> _gourmetProducts = [
    Product(
      id: '1',
      name: 'Chocolates',
      imgURL: 'assets/images/chocolates.png',
      price: 150,
    ),
    Product(
      id: '2',
      name: 'Indian Sweets',
      imgURL: 'assets/images/sweets.png',
      price: 150,
    ),
    Product(
      id: '3',
      name: 'Chocolates',
      imgURL: 'assets/images/chocolates.png',
      price: 150,
    ),
  ];

  List<Product> get gourmetGifts {
    return [..._gourmetProducts];
  }

  List<Product> _anniversaryProducts = [
    Product(
      id: '1',
      name: 'Cuople coffee mug',
      imgURL: 'assets/images/cups.png',
      price: 150,
    ),
    Product(
      id: '2',
      name: 'Fossil Watch for Men',
      imgURL: 'assets/images/strawberry_cake.png',
      price: 150,
    ),
    Product(
      id: '3',
      name: 'Cuople coffee mug',
      imgURL: 'assets/images/cups.png',
      price: 150,
    ),
  ];

  List<Product> get anniversaryGifts {
    return [..._anniversaryProducts];
  }

  List<Product> _birthdayProducts = [
    Product(
      id: '1',
      name: 'Timex Watch for Men',
      imgURL: 'assets/images/cake2.png',
      price: 150,
    ),
    Product(
      id: '2',
      name: 'Fossil Watch for Men',
      imgURL: 'assets/images/plant.png',
      price: 150,
    ),
    Product(
      id: '3',
      name: 'Timex Watch for Men',
      imgURL: 'assets/images/cake2.png',
      price: 150,
    ),
  ];

  List<Product> get birthdayGifts {
    return [..._birthdayProducts];
  }
}
