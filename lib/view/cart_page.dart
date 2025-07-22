import 'package:flutter/material.dart';
import 'package:mini_e_commerce_app/components/my_button.dart';
import 'package:mini_e_commerce_app/view_model/shop_page_view_model.dart';
import 'package:provider/provider.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    ShopPageViewModel vm = Provider.of<ShopPageViewModel>(
      context,
      listen: true,
    );
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Cart Page'),
        centerTitle: true,
        elevation: 0,
      ),
      body: vm.cart.isEmpty
          ? Center(child: Text('Your cart is empty'))
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: vm.cart.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.asset(
                          vm.cart[index].coverImage,
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                        title: Text(vm.cart[index].name),
                        subtitle: Text(vm.cart[index].price.toString()),
                        trailing: IconButton(
                          onPressed: () {
                            vm.removeFromCart(context, vm.cart[index]);
                          },
                          icon: Icon(Icons.remove),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: MyButton(
                    onTap: () => payButtonPressed(context),
                    child: Text('Pay now'),
                  ),
                ),
              ],
            ),
    );
  }

  void payButtonPressed(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(
          'User wants to pay. Connect this app to your payment backend',
        ),
      ),
    );
  }
}
