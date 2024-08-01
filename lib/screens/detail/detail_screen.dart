import 'package:coffee_about/models/drink.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'components/background.dart';
import 'components/custom_back_button.dart';
import 'components/drink_detail.dart';
import 'components/quantityAndPay.dart';

class DetailScreen extends StatefulWidget {
  final Drink drink;

  DetailScreen({super.key, required this.drink});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: black,
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Background(drinkImageUrl: widget.drink.imageUrl),
            DrinkDetail(drink: widget.drink),
            QuantityAndPay(),
            CustomBackButton(),
          ],
        ),
      ),
    );
  }
}
