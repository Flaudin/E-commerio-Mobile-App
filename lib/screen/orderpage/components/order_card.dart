import 'package:e_comercio/styles/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class CartListCard extends StatelessWidget {
  const CartListCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 12.h),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
            color: neutralWhite, borderRadius: BorderRadius.circular(8)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(right: 12.w),
              height: 80.h,
              width: 80.w,
              decoration: BoxDecoration(
                  color: neutralLightGray,
                  borderRadius: BorderRadius.circular(4)),
            ),
            Expanded(
              child: SizedBox(
                height: 80.h,
                //decoration: const BoxDecoration(color: Colors.amber),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "Product Title",
                      style: TextStyle(fontSize: 14.spMin, fontWeight: medium),
                    ),
                    const Expanded(
                      child: Text(
                        "Category",
                        style: TextStyle(fontSize: 12, fontWeight: regular),
                      ),
                    ),
                    Text(
                        NumberFormat.simpleCurrency(
                                locale: 'tl', decimalDigits: 2)
                            .format(0),
                        style:
                            const TextStyle(color: primaryColor, fontSize: 14))
                  ],
                ),
              ),
            ),
            Container(
              height: 80.h,
              margin: EdgeInsets.only(left: 24.w),
              //decoration: const BoxDecoration(color: Colors.blueAccent),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 28.w,
                      height: 28.h,
                      decoration: BoxDecoration(
                          color: statusRed,
                          borderRadius: BorderRadius.circular(4)),
                      child: const Icon(
                        Icons.delete,
                        color: neutralWhite,
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 28.w,
                          height: 28.h,
                          decoration: BoxDecoration(
                              color: neutralGray,
                              borderRadius: BorderRadius.circular(4)),
                          child: const Icon(
                            Icons.add,
                            color: neutralWhite,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      SizedBox(
                          //decoration: const BoxDecoration(color: Colors.red),
                          width: 24.w,
                          height: 24.h,
                          child: TextFormField()),
                      SizedBox(
                        width: 4.w,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 28.w,
                          height: 28.h,
                          decoration: BoxDecoration(
                              color: neutralGray,
                              borderRadius: BorderRadius.circular(4)),
                          child: const Icon(
                            Icons.remove,
                            color: neutralWhite,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
