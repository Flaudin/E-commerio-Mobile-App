import 'package:e_comercio/screen/accountpage/account_screen.dart';
import 'package:e_comercio/screen/cartpage/cart_screen.dart';
import 'package:e_comercio/screen/homepage/components/body.dart';
import 'package:e_comercio/screen/orderpage/order_screen.dart';
import 'package:e_comercio/screen/wishlistpage/wishlist_screen.dart';
import 'package:e_comercio/styles/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final GlobalKey<_HomeScreenState> homeScreenKey = GlobalKey();

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        child: Scaffold(
          body: Container(
            child: _pages.elementAt(currentIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: onItemTapped,
            selectedItemColor: primaryColor,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag), label: 'Cart'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: 'Order'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.heart_broken), label: 'Wishlist'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people), label: 'Account'),
            ],
          ),
        ));
  }
}

List<Widget> _pages = <Widget>[
  const Body(),
  const CartScreen(),
  const OrderScreen(),
  const WishlistScreen(),
  const AccountScreen()
];
