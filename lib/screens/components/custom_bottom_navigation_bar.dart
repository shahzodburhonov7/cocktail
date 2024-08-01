import 'package:coffee_about/constants/custom_icons_icons.dart';
import 'package:coffee_about/screens/components/bottom_bar.dart';
import 'package:flutter/cupertino.dart';

import '../../constants/constants.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int bottomNavigationBarItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: black.withOpacity(0.5),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30.0),
        ),
      ),
      margin: EdgeInsets.only(

          bottom: appPadding,
          top: appPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomBar(
              onPressed: () {
                setState(() {
                  bottomNavigationBarItemIndex = 0;
                });
              },
              bottomIcons: bottomNavigationBarItemIndex == 0 ? true : false,
              text: "Home",
              icons: CustomIcons.home),
          BottomBar(
              onPressed: () {
                setState(() {
                  bottomNavigationBarItemIndex = 1;
                });
              },
              bottomIcons: bottomNavigationBarItemIndex == 1 ? true : false,
              text: "Menu",
              icons: CustomIcons.wine_menu),
          BottomBar(
              onPressed: () {
                setState(() {
                  bottomNavigationBarItemIndex = 2;
                });
              },
              bottomIcons: bottomNavigationBarItemIndex == 2 ? true : false,
              text: "Menu",
              icons: CustomIcons.search),

        ],
      ),
    );
  }
}
