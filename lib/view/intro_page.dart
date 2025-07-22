import 'package:flutter/material.dart';
import 'package:mini_e_commerce_app/components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text('Intro page'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            //title
            Text(
              'Mini e-Commerce App',
              style: TextStyle(
                fontSize: 24,
                // color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            //subtitle
            Text(
              'Premium quality products',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 25),

            //button
            MyButton(
              onTap: () => Navigator.pushNamed(context, '/shop_page'),
              child: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
