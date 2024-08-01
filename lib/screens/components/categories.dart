import 'package:coffee_about/constants/constants.dart';
import 'package:coffee_about/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedCategoryIndex = 0;

  Widget _builderCategory(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: appPadding / 3),
        child: Container(
          width: size.width * 0.25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(
              color: selectedCategoryIndex == index
                  ? white.withOpacity(0.4)
                  : Colors.transparent,
              width: 2.0,
            ),
          ),
          child: Center(
            child: Text(
              categoryList[index],
              style: TextStyle(
                  fontWeight: selectedCategoryIndex == index
                      ? FontWeight.bold
                      : FontWeight.normal,
                  color: selectedCategoryIndex == index
                      ? white
                      : white.withOpacity(0.4)),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: Container(
        height: size.height * 0.07,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return _builderCategory(context, index);
          },
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(
            left: appPadding / 1.5,
            top: appPadding / 3,
          ),
          itemCount: categoryList.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
