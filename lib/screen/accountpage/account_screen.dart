import 'package:e_comercio/screen/accountpage/components/body.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  static String routeName = '/account';
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
