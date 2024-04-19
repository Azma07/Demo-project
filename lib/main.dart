import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller/product_controller.dart';
import 'view/item_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductController(),
      child: MaterialApp(
        home: ItemList(),
      ),
    );
  }
}
