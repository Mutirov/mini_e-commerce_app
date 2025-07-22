import 'package:flutter/material.dart';
import 'package:mini_e_commerce_app/model/product_model.dart';

class ShopPageViewModel with ChangeNotifier {
  final List<ProductModel> _products = [
    // product 1
    ProductModel(
      name: 'Hoodie',
      price: 59.99,
      description: '100% cotton made',
      coverImage: 'assets/hoodie.jpg',
    ),
    // product 2
    ProductModel(
      name: 'Sunglass',
      price: 39.99,
      description: '2025 ne model',
      coverImage: 'assets/sunglass.jpg',
    ),
    // product 3
    ProductModel(
      name: 'Nike air max',
      price: 45.25,
      description: '',
      coverImage: 'assets/nike_air_max.jpg',
    ),
    // product 4
    ProductModel(
      name: 'Pant',
      price: 29,
      description: '100% linen. Made in Turkey',
      coverImage: 'assets/pant_linen.jpg',
    ),
    // product 5
    ProductModel(
      name: 'Classic shirt',
      price: 17.5,
      description: '75% cotton and 25% polyester. Made in Turkey',
      coverImage: 'assets/shirt.jpeg',
    ),
  ];

  List<ProductModel> get products => _products;

  final List<ProductModel> _cart = [];
  List<ProductModel> get cart => _cart;

  get cartItems => null;

  void addProduct(ProductModel item) {
    _products.add(item);
    notifyListeners();
  }

  void removeProduct(ProductModel item) {
    _products.remove(item);
    notifyListeners();
  }

  void addToCart(BuildContext context, ProductModel item) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text('Add this item to your chart?'),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          SizedBox(width: 10),
          MaterialButton(
            onPressed: () {
              _cart.add(item);
              notifyListeners();
              Navigator.pop(context);

              // ScaffoldMessenger.of(context).showSnackBar(
              //   SnackBar(content: Text('${item.name} added to cart!')),
              // );
            },
            child: Text('Add'),
          ),
        ],
      ),
    );
  }

  void removeFromCart(BuildContext context, ProductModel item) {
       showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text('Add this item to your chart?'),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          SizedBox(width: 10),
          MaterialButton(
            onPressed: () {
              _cart.remove(item);
              notifyListeners();
              Navigator.pop(context);

              // ScaffoldMessenger.of(context).showSnackBar(
              //   SnackBar(content: Text('${item.name} added to cart!')),
              // );
            },
            child: Text('Remove'),
          ),
        ],
      ),
    );
  }
}
