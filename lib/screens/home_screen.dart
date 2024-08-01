import 'package:coffee_about/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/categories.dart';
import 'components/custom_app_bar.dart';
import 'components/custom_bottom_navigation_bar.dart';
import 'components/drink_products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: grey_dark,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomAppBar(),
          Categories(),
          DrinkProducts(),
          CustomBottomNavigationBar()
        ],
      ),
    );
  }
}
