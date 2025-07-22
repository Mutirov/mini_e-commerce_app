import 'package:flutter/material.dart';
import 'package:mini_e_commerce_app/components/my_drawer.dart';
import 'package:mini_e_commerce_app/components/my_product_tile.dart';
import 'package:mini_e_commerce_app/view_model/shop_page_view_model.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
   // ShopPageViewModel vm = Provider.of<ShopPageViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
       elevation: 0,
        title: Text('Mini E-Commerce App'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
           Navigator.pushNamed(context, '/cart_page');
          }, icon: Icon(Icons.shopping_cart))
        ],      ),
      drawer: MyDrawer(),
      body: Consumer<ShopPageViewModel>(
        builder: (context, vm, child) {
          return ListView(
         children: [
          SizedBox(height: 25,),
          // TEXT
           Center(child: Text('Pick from a selected list of premium products', style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),)),
          //PRODUCT LIST
          SizedBox(
            height: 550,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(15),         
              itemCount: vm.products.length,
              itemBuilder: (context, index){
              return MyProductTile(product: vm.products[index]);
            }),
          )
         ],
          );
        }
        ),
    );
  }
}
