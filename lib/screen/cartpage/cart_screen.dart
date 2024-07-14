import 'package:e_comercio/screen/cartpage/components/body.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static String routeName = '/cart';
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
