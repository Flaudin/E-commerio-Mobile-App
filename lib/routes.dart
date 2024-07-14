import 'package:e_comercio/screen/accountpage/account_screen.dart';
import 'package:e_comercio/screen/cartpage/cart_screen.dart';
import 'package:e_comercio/screen/homepage/home_screen.dart';
import 'package:e_comercio/screen/orderpage/order_screen.dart';
import 'package:e_comercio/screen/searchpage/search_screen.dart';
import 'package:e_comercio/screen/signinpage/signin_screen.dart';
import 'package:e_comercio/screen/wishlistpage/wishlist_screen.dart';
import 'package:e_comercio/screen_components/product_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SigninScreen.routeName: (context) => const SigninScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  OrderScreen.routeName: (context) => const OrderScreen(),
  AccountScreen.routeName: (context) => const AccountScreen(),
  WishlistScreen.routeName: (context) => const WishlistScreen(),
  SearchScreen.routeName: (context) => const SearchScreen(),
  ProductScreen.routeName: (context) => const ProductScreen()
};
