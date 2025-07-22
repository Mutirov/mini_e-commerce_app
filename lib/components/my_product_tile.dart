import 'package:flutter/material.dart';
import 'package:mini_e_commerce_app/model/product_model.dart';
import 'package:mini_e_commerce_app/view_model/shop_page_view_model.dart';
import 'package:provider/provider.dart';

class MyProductTile extends StatelessWidget {
  final ProductModel product;
  const MyProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    ShopPageViewModel vm = Provider.of<ShopPageViewModel>(
      context,
      listen: false,
    );
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(25),
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //product image
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  child: Image(image: AssetImage(product.coverImage)),
                ),
              ),
              SizedBox(height: 25),

              // product name
              Text(
                product.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),

              // product description
              Text(product.description),
            ],
          ),

          //product  price +  add to card
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(product.price.toString(), style: TextStyle(fontSize: 24)),

              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () {
                    vm.addToCart(context, product);
                  },
                  icon: Icon(Icons.add, size: 34),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
