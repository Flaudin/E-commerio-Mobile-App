import 'package:e_comercio/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatelessWidget {
  static String routeName = '/search';
  const SearchScreen({super.key});

  void filtersheet(BuildContext context) {
    showBottomSheet(
        context: context,
        builder: (context) {
          return Wrap(children: [
            Container(
              height: 40.h,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              child: Column(
                children: [
                  Text(
                    "Filter",
                    style: TextStyle(
                        fontSize: ml,
                        fontWeight: semibold,
                        color: neutralBlack),
                  ),
                  const Divider(),
                  SizedBox(
                    height: 12.h,
                  ),
                  const Text("Categories")
                ],
              ),
            ),
          ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60.h,
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: primaryColor,
              statusBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.dark),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: neutralBlack,
              )),
          title: TextFormField(
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
                    borderSide: const BorderSide(color: neutralGray, width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: const BorderSide(color: neutralGray, width: 0)),
                hintText: "Search here...",
                hintStyle:
                    const TextStyle(textBaseline: TextBaseline.alphabetic)),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                filtersheet(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 6.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: neutralLightGray),
                    color: neutralWhite),
                child: const Icon(
                  Icons.tune_outlined,
                  color: neutralGray,
                ),
              ),
            ),
            const SizedBox(
              width: 4,
            )
          ],
        ),
        body: Container(),
      ),
    );
  }
}
