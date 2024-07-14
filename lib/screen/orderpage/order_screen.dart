import 'package:e_comercio/screen/orderpage/components/body.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  static String routeName = '/order';
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
