import 'package:coffee_about/constants/constants.dart';
import 'package:coffee_about/constants/custom_icons_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: appPadding),
      child: Container(
        height: size.height * 0.2,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Tonight",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    letterSpacing: 2.0,
                  ),
                ),
                Text(
                  "Monday, November 25",
                  style: TextStyle(
                    color: white.withOpacity(0.4),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Container(
              width: size.width * 0.2,
              height: size.height * 0.13,
              decoration: BoxDecoration(
                  color: grey_medium,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: appPadding / 3),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Transform(
                            transform: Matrix4.rotationY(math.pi),
                            alignment: Alignment.center,
                            child: Icon(
                              CustomIcons.bar_service,
                              size: 40,
                              color: Colors.white,
                            )),
                        Container(
                          height: size.height * 0.02,
                          width: size.width * 0.04,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: grey_dark.withOpacity(0.8),
                          ),
                          child: Center(
                            child: Text("3",style: TextStyle(color: Colors.white),),
                          ),

                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          '32',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Total Price',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.4),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
