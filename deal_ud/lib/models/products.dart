class Product {
  final String id;
  final String title;
  final double oldprice;
  final double newprice;
  final String imageUrl;
  bool isFavorite;
  Product(
      {required this.id,
      required this.title,
      required this.oldprice,
      required this.newprice,
      required this.imageUrl,
      this.isFavorite = false});
}
