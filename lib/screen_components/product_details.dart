import 'package:e_comercio/model/product_model.dart';
import 'package:e_comercio/screen/homepage/home_screen.dart';
import 'package:e_comercio/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 300.h,
          decoration: const BoxDecoration(color: primaryBGColor),
          child: Stack(children: [
            Positioned(
              bottom: 280,
              left: 17,
              child: GestureDetector(
                onTap: () {
                  Navigator.popAndPushNamed(context, HomeScreen.routeName);
                },
                child: const Icon(Icons.arrow_back),
              ),
            ),
          ]),
        ),
        SizedBox(
          height: 12.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: TextStyle(
                        fontSize: heading,
                        fontWeight: medium,
                        color: neutralBlack),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RatingBarIndicator(
                          itemSize: 18.w,
                          rating: product.rating,
                          itemBuilder: (ctx, index) => const Icon(
                                Icons.star,
                                color: statusOrange,
                              )),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        "(${product.rating})",
                        style: TextStyle(
                            fontSize: ml,
                            //fontWeight: medium,
                            color: neutralGray),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        "|",
                        style: TextStyle(
                            fontSize: ml,
                            //fontWeight: medium,
                            color: neutralGray),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Container(
                        width: 60.w,
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 2.h),
                        decoration: BoxDecoration(
                            color: neutralLightGray,
                            borderRadius: BorderRadius.circular(4.r)),
                        child: Center(
                          child: Text(
                            product.category,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:
                                TextStyle(color: neutralWhite, fontSize: 10.sp),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            IconButton.outlined(
                color: statusOrange,
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: statusOrange,
                ))
          ],
        ),
        SizedBox(
          height: 24.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Text(
            'Description',
            style: GoogleFonts.getFont('Poppins',
                textStyle: TextStyle(
                    fontSize: lg, color: neutralBlack, fontWeight: medium)),
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Text(
            product.description,
            style: GoogleFonts.getFont('Poppins',
                textStyle: TextStyle(
                    fontSize: ml, color: neutralGray, fontWeight: regular)),
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        //Row(children: [Column(children: [Text('data')],)],)
      ],
    );
  }
}
