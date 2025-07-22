import 'package:flutter/material.dart';
import 'package:mini_e_commerce_app/themes/light_mode.dart';
import 'package:mini_e_commerce_app/view/cart_page.dart';
import 'package:mini_e_commerce_app/view/intro_page.dart';
import 'package:mini_e_commerce_app/view/login_page.dart';
import 'package:mini_e_commerce_app/view/reqgister_page.dart';
import 'package:mini_e_commerce_app/view/shop_page.dart';
import 'package:mini_e_commerce_app/view_model/shop_page_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ShopPageViewModel())
  ],
  child: const MiniECommerceApp(),
  ));
}

class MiniECommerceApp extends StatelessWidget {
  const MiniECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
     initialRoute: '/intro_page',
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/login_page': (context) => const LoginPage(),
        '/register_page': (context) => const ReqgisterPage(),
        '/cart_page': (context) => const CardPage(),
      },
    );
  }
}
