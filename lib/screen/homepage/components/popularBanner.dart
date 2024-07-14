// ignore_for_file: file_names

import 'package:e_comercio/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularBanner extends StatefulWidget {
  const PopularBanner({
    super.key,
  });

  @override
  State<PopularBanner> createState() => _PopularBannerState();
}

class _PopularBannerState extends State<PopularBanner> {
  late PageController controllerrs;
  final ValueNotifier<int> _currentindexnotifier = ValueNotifier<int>(0);

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      controllerrs = PageController(viewportFraction: 0.8);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, StateSetter setState) => Column(
        children: [
          Row(
            children: [
              Text(
                "Popular",
                style: TextStyle(
                    color: neutralBlack, fontSize: xl, fontWeight: medium),
              ),
              const Spacer(),
              Text(
                "See more",
                style: TextStyle(color: statusOrange, fontSize: ml),
              ),
            ],
          ),
          // SizedBox(
          //   height: 2.h,
          // ),
          Expanded(
            child: PageView.builder(
                pageSnapping: true,
                itemCount: 3,
                //controller: controllerrs,
                onPageChanged: (page) {
                  _currentindexnotifier.value = page;
                },
                itemBuilder: (ctx, index) {
                  return Row(
                    children: [
                      Container(
                        height: 100.h,
                        width: 316.w,
                        decoration: BoxDecoration(
                            color: neutralWhite,
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.r))),
                      ),
                      SizedBox(
                        width: 12.w,
                      )
                    ],
                  );
                }),
          ),
          ValueListenableBuilder<int>(
            valueListenable: _currentindexnotifier,
            builder: (context, value, child) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) => indicators(value, index)),
              );
            },
          )

          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     children: List.generate(
          //         3,
          //         (index) => Row(
          //               children: [
          //                 Container(
          //                   height: 100.h,
          //                   width: 280.w,
          //                   decoration: BoxDecoration(
          //                       color: neutralWhite,
          //                       borderRadius:
          //                           BorderRadius.all(Radius.circular(8.r))),
          //                 ),
          //                 SizedBox(
          //                   width: 12.w,
          //                 )
          //               ],
          //             )),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget indicators(int currentindex, int indx) {
    return Container(
      margin: EdgeInsets.all(5.w),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentindex == indx ? primaryColor : neutralLightGray,
          shape: BoxShape.circle),
    );
  }
}
