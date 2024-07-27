import 'package:e_comercio/model/product_model.dart';
import 'package:e_comercio/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class CartCard extends StatefulWidget {
  CartCard({super.key});
  List<Product> products = [];

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: Key(products.toString()),
        child: Container(
          decoration: BoxDecoration(
              color: neutralWhite, borderRadius: BorderRadius.circular(8.r)),
          margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
          child: ListTile(
            leading: Container(
              decoration: const BoxDecoration(color: neutralLightGray),
              child: SizedBox(
                height: 100.h,
                width: 75.w,
              ),
            ),
            title: Text(
              'Title',
              style: GoogleFonts.getFont('Poppins',
                  fontSize: ml, color: neutralBlack),
            ),
            subtitle: Text(
              'Title',
              style: GoogleFonts.getFont('Poppins',
                  fontSize: sm, color: neutralLightGray),
            ),
            trailing: Column(
              children: [
                Text(NumberFormat.simpleCurrency(locale: 'tl', decimalDigits: 2)
                    .format(0.00)),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: statusOrange,
                        borderRadius: BorderRadius.circular(8.r)),
                    // margin:
                    //     EdgeInsets.symmetric(horizontal: 18.h, vertical: 6.h),
                    child: Text(
                      'Checkout',
                      style: GoogleFonts.getFont('Poppins',
                          fontSize: ml, color: neutralWhite),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
