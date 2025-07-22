import 'package:flutter/material.dart';
import 'package:mini_e_commerce_app/components/my_listtyle.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // drawer header logo
              DrawerHeader(
                child: Icon(
                  Icons.shopping_bag,
                  size: 72,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              SizedBox(height: 12),
              //shop tile
              MyListtyle(
                text: 'Shop',
                icon: Icons.home,
                onTap: () => Navigator.pop(context),
              ),
              SizedBox(height: 12),
              // card tile
              MyListtyle(
                text: 'Cart',
                icon: Icons.shopping_cart_sharp,
                onTap: () => Navigator.pushNamed(context, '/cart_page'),
              ),
            ],
          ),
          //exit button
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Column(
              children: [
                MyListtyle(
                  text: 'Exit',
                  icon: Icons.exit_to_app,
                  onTap: () => Navigator.pushNamed(context, '/intro_page'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
