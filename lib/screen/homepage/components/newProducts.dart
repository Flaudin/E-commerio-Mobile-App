// ignore: file_names
import 'package:e_comercio/model/product_model.dart';
import 'package:e_comercio/screen_components/product_screen.dart';
import 'package:e_comercio/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class NewProducts extends StatelessWidget {
  const NewProducts({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.popAndPushNamed(context, ProductScreen.routeName,
            arguments: ProductDetailsArgs(product: product));
      },
      child: SizedBox(
        height: 212.h,
        child: Container(
          decoration: const BoxDecoration(color: primaryBGColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 124.h,
                width: 175.w,
                decoration: BoxDecoration(
                    color: neutralWhite,
                    borderRadius: BorderRadius.all(Radius.circular(18.r))),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                child: Text(
                  product.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12.sp, fontWeight: medium),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RatingBarIndicator(
                    itemBuilder: (ctx, index) => const Icon(
                      Icons.star,
                      color: statusOrange,
                    ),
                    rating: product.rating,
                    itemCount: 1,
                    itemSize: 18.w,
                  ),
                  Text(
                    "(${product.rating.toString()})",
                    style: TextStyle(fontSize: 12.sp, color: neutralGray),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(
                    "|",
                    style: TextStyle(color: neutralGray, fontSize: 12.sp),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Container(
                    width: 60.w,
                    padding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                    decoration: BoxDecoration(
                        color: neutralLightGray,
                        borderRadius: BorderRadius.circular(4.r)),
                    child: Center(
                      child: Text(
                        product.category,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: neutralWhite, fontSize: 10.sp),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                child: Text(
                  NumberFormat.simpleCurrency(locale: 'tl', decimalDigits: 2)
                      .format(product.price),
                  style: TextStyle(
                      color: statusOrange, fontSize: 14.sp, fontWeight: medium),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
