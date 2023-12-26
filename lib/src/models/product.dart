class Product {
  String id;
  String name;
  bool? isFavorite;
  String imgURL;
  double? price;

  Product(
      {required this.id,
      required this.name,
      this.isFavorite,
      this.price,
      required this.imgURL});
}
