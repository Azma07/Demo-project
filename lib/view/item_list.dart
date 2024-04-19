import 'package:demo_project/controller/product_controller.dart';
import 'package:demo_project/model/product.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// class ItemList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Demo Project',
//       home: MyHomePage(),
//     );
//   }
// }

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: Consumer<ProductController>(
        builder: (context, productController, _) {
          return ListView.builder(
            itemCount: productController.product.length,
            itemBuilder: (context, index) {
              Product product = productController.product[index];
              return ListTile(
                title: Text(product.name),
                subtitle: Text('\$${product.price}'),
                trailing: IconButton(
                  icon: Icon(
                    product.isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: product.isFavorite ? Colors.red : null,
                  ),
                  onPressed: () {
                    productController.toggleFavorite(index);
                  },
                ),
                onTap: () {
                  // Add functionality for when the item is tapped
                },
              );
            },
          );
        },
      ),
    );
  }
}
