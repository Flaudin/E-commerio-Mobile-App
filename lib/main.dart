import 'dart:io';

import 'package:e_comercio/routes.dart';
import 'package:e_comercio/screen/homepage/home_screen.dart';
//import 'package:e_comercio/screen/signinpage/signin_screen.dart';
import 'package:e_comercio/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: primaryBGColor,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark));

  await ScreenUtil.ensureScreenSize();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());

  WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
    if (Platform.isAndroid) {
      await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
    }
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'E Comercio',
          debugShowCheckedModeBanner: false,
          initialRoute: HomeScreen.routeName,
          routes: routes,
        );
      },
    );
  }
}
