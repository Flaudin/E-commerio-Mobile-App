import 'package:e_comercio/model/product_model.dart';
import 'package:e_comercio/screen_components/product_details.dart';
import 'package:e_comercio/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductScreen extends StatelessWidget {
  static String routeName = '/product';
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArgs args =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArgs;
    return Scaffold(
      body: ProductDetails(product: args.product),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
        decoration: const BoxDecoration(
            color: neutralWhite,
            boxShadow: [BoxShadow(color: neutralGray, offset: Offset(3, 0))]),
        child: TextButton(
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r))),
                backgroundColor: const MaterialStatePropertyAll(primaryColor)),
            onPressed: () {},
            child: Text(
              "Add to Cart",
              style: TextStyle(color: neutralWhite, fontSize: 16.sp),
            )),
      ),
    );
  }
}

class ProductDetailsArgs {
  final Product product;

  ProductDetailsArgs({required this.product});
}
