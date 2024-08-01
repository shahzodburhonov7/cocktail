import 'package:coffee_about/constants/constants.dart';
import 'package:coffee_about/constants/custom_icons_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Background extends StatefulWidget {
  final String drinkImageUrl;

  const Background({super.key, required this.drinkImageUrl});

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(widget.drinkImageUrl),
          height: size.height * 0.55,
          width: size.width,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: appPadding,
            left: appPadding * 1.5,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total Order",
                style: TextStyle(
                  color: white,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Icon(
                            CustomIcons.cocktails,
                            color: white.withOpacity(0.4),
                            size: 30,
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              height: size.height * 0.025,
                              width: size.width * 0.05,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: grey_dark.withOpacity(0.8)),
                              child: Center(
                                child: Text(
                                  "3",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        "Total Drinks",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.4),
                            fontSize: 10.0),
                      )
                    ],
                  ),
                  SizedBox(
                    width: size.height * 0.1,
                  ),
                  Column(
                    children: [
                      Text(
                        "\$32",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        "Total Price",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.4),
                            fontSize: 10.0),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
