class Product{
  final String name;
  final String price;
  bool isFavorite;

  Product({required this.name, required this.price, this.isFavorite = false});

  void toggleFav(){
    isFavorite = !isFavorite;
  }
}