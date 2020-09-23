import 'package:flutter/material.dart';
import 'package:warmups/constants.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['Handbag', 'Jewellery', 'Footwear', 'Dresses'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    categories[index],
                    style: TextStyle(
                      color:
                          selectedIndex == index ? kTextColor : kTextLightColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 50,
                    margin: EdgeInsets.only(top: kDefaultPadding / 4),
                    color: selectedIndex == index
                        ? kTextColor
                        : Colors.transparent,
                  ),
                ],
              ),
            ),
          ),
          separatorBuilder: (context, index) => SizedBox(width: 40),
          itemCount: categories.length,
        ),
      ),
    );
  }
}
