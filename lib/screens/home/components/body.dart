import 'package:flutter/material.dart';
import 'package:warmups/constants.dart';
import 'package:warmups/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Categories(),
      ],
    );
  }
}

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['All', 'Indian', 'Italian', 'Mexico', 'Chinese'];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.defaultSize * 2,
      ),
      child: SizedBox(
        height: SizeConfig.defaultSize * 3.5,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return buildCategoryItem(index);
          },
        ),
      ),
    );
  }

  Widget buildCategoryItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: SizeConfig.defaultSize * 2),
        padding: EdgeInsets.symmetric(
          vertical: SizeConfig.defaultSize * 0.5,
          horizontal: SizeConfig.defaultSize * 2,
        ),
        decoration: BoxDecoration(
          color:
              selectedIndex == index ? Color(0xFFEFF3EE) : Colors.transparent,
          borderRadius: BorderRadius.circular(
            SizeConfig.defaultSize * 1.6,
          ),
        ),
        child: Text(
          categories[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: selectedIndex == index ? kPrimaryColor : Color(0xFFC2C2B5),
          ),
        ),
      ),
    );
  }
}
