import 'package:demo_project/model/product.dart';
import 'package:flutter/material.dart';

class ProductController extends ChangeNotifier{
  List <Product> product = [
    Product(name: 'product1', price: '100'),
    Product(name: 'product2', price: '200'),
    Product(name: 'product3', price: '300'),
    Product(name: 'product4', price: '400'),
  ];

    void toggleFavorite(int index) {
    product[index].toggleFav();
    notifyListeners();
  }

}