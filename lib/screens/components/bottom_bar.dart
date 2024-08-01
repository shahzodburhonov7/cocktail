import 'package:coffee_about/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  BottomBar(
      {super.key,
      required this.onPressed,
      required this.bottomIcons,
      required this.text,
      required this.icons});

  final Function onPressed;
  final bool bottomIcons;
  final String text;
  final IconData icons;

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: widget.bottomIcons == true
            ? Container(
            decoration: BoxDecoration(
                color: grey_medium, borderRadius: BorderRadius.circular(30.0)), // Вс
            padding: EdgeInsets.symmetric(
                horizontal: appPadding / 2, vertical: appPadding / 4), // EdgeInsets
            child: Row (
              children: [
                Icon(
                  widget.icons,
                  color: white,
                  size: 25,
                ), // Icon
                SizedBox (
                  width: 8.0,
                ), // SizedBox
                Text (widget.text, style: TextStyle(
                    color: white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),) // TextStyle, Text
              ],
            ),)
            : Icon(
                widget.icons,
                color: Colors.white.withOpacity(0.4),size: 25,
              ));
  }
}
