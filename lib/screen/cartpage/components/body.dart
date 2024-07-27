import 'package:e_comercio/screen/cartpage/components/cart_card.dart';
import 'package:e_comercio/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: primaryColor,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark),
        title: Text(
          "Cart",
          style: TextStyle(
              color: neutralBlack, fontSize: lg, fontWeight: semibold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: neutralDimGray,
              )),
        ],
      ),
      body: Column(
        children: List.generate(5, (index) => CartCard()),
      ),
    );
  }
}
