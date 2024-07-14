import 'package:e_comercio/screen/signinpage/components/body.dart';
import 'package:e_comercio/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SigninScreen extends StatelessWidget {
  static String routeName = '/signin';
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: primaryBGColor),
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
