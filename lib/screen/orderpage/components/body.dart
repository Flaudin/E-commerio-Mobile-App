import 'package:e_comercio/screen/orderpage/components/active_list_body.dart';
import 'package:e_comercio/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: primaryColor,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark),
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 4.h),
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order",
                    style: TextStyle(
                        color: neutralBlack,
                        fontSize: lg,
                        fontWeight: semibold),
                  ),
                  Container(
                    width: 244.w,
                    height: 46.32.h,
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 4.h),
                    child: TextFormField(
                      autofocus: false,
                      decoration: InputDecoration(
                          fillColor: neutralWhite,
                          filled: true,
                          contentPadding: EdgeInsets.all(10.0.r),
                          prefixIcon: const Icon(
                            Icons.search_outlined,
                            color: neutralLightGray,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                              borderSide: const BorderSide(
                                  color: neutralLightGray, width: 2)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                              borderSide: const BorderSide(
                                  color: neutralLightGray, width: 2)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                              borderSide: const BorderSide(
                                  color: neutralLightGray, width: 2)),
                          hintText: "Search here...",
                          hintStyle: const TextStyle(
                              textBaseline: TextBaseline.alphabetic)),
                    ),
                  ),
                  Container(
                    width: 32.w,
                    height: 32.h,
                    decoration: BoxDecoration(
                        color: neutralLightGray,
                        borderRadius: BorderRadius.circular(4.r)),
                  )
                ],
              )),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: const BoxDecoration(color: primaryBGColor),
        child: Column(
          children: [
            TabBar(
                labelColor: primaryColor,
                labelStyle: GoogleFonts.poppins(),
                indicatorColor: primaryColor,
                controller: tabController,
                tabs: const [
                  Tab(
                    text: 'Active',
                  ),
                  Tab(
                    text: 'Complete',
                  )
                ]),
            SizedBox(
              height: 12.h,
            ),
            const CartList()
          ],
        ),
      ),
    );
  }
}
