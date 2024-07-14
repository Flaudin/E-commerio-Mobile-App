import 'package:e_comercio/screen/orderpage/components/order_card.dart';
import 'package:flutter/material.dart';

class CartList extends StatelessWidget {
  const CartList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(4, (index) => const CartListCard()),
    );
  }
}
