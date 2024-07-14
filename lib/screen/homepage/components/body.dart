import 'package:e_comercio/screen/homepage/components/newProducts.dart';
import 'package:e_comercio/screen/homepage/components/popularBanner.dart';
import 'package:e_comercio/screen/searchpage/search_screen.dart';
import 'package:e_comercio/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:e_comercio/model/product_model.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryBGColor,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: primaryColor,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark),
        bottom: PreferredSize(
            preferredSize: Size(double.infinity, 42.h),
            child: Container(
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24.r),
                      bottomRight: Radius.circular(24.r))),
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Logo",
                    style: TextStyle(
                        fontSize: headingLarge,
                        fontWeight: medium,
                        color: neutralWhite),
                  ),
                  Row(
                    children: [
                      Container(
                          width: 324.w,
                          height: 61.32.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 0, vertical: 4.h),
                          child: TextFormField(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, SearchScreen.routeName);
                            },
                            autofocus: false,
                            decoration: InputDecoration(
                                fillColor: neutralWhite,
                                filled: true,
                                contentPadding: EdgeInsets.all(10.0.r),
                                prefixIcon: const Icon(
                                  Icons.search_outlined,
                                  color: neutralLightGray,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.r),
                                    borderSide: const BorderSide(
                                        color: Colors.transparent, width: 0)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.r),
                                    borderSide: const BorderSide(
                                        color: Colors.transparent, width: 0)),
                                hintText: "Search here...",
                                hintStyle: const TextStyle(
                                    textBaseline: TextBaseline.alphabetic)),
                          ))
                    ],
                  ),
                ],
              ),
            )),
      ),
      body: Container(
        decoration: const BoxDecoration(color: primaryBGColor),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 12.h,
                    ),
                    SizedBox(height: 160.h, child: const PopularBanner()),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Newest products",
                          style: TextStyle(
                              color: neutralBlack,
                              fontSize: xl,
                              fontWeight: medium),
                        ),
                        const Spacer(),
                        Text(
                          "See more",
                          style: TextStyle(color: statusOrange, fontSize: ml),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    ResponsiveGridList(
                        shrinkWrap: true,
                        listViewBuilderOptions: ListViewBuilderOptions(
                            physics: const NeverScrollableScrollPhysics()),
                        minItemsPerRow: 2,
                        maxItemsPerRow: 3,
                        horizontalGridMargin: 0,
                        verticalGridMargin: 0,
                        horizontalGridSpacing: 12,
                        verticalGridSpacing: 12,
                        minItemWidth: 175.w,
                        children: List.generate(
                          products.length,
                          (index) => NewProducts(
                            product: products[index],
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
