import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:warmups/constants.dart';
import 'package:warmups/details_screen.dart';
import 'package:warmups/widgets/category_title.dart';
import 'package:warmups/widgets/food_cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kWhiteColor,
        textTheme: TextTheme(
          headline5: TextStyle(fontWeight: FontWeight.bold),
          button: TextStyle(fontWeight: FontWeight.bold),
          bodyText2: TextStyle(color: kTextColor),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(.26),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: SvgPicture.asset('assets/icons/plus.svg'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20, top: 50),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                'assets/icons/menu.svg',
                height: 11,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Simple way to find \nTasty Food',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryTitle(title: 'All', active: true),
                CategoryTitle(title: 'Chinese'),
                CategoryTitle(title: 'Japanese'),
                CategoryTitle(title: 'Burgers'),
                CategoryTitle(title: 'Korean'),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: kBorderColor),
              borderRadius: BorderRadius.circular(20),
            ),
            child: SvgPicture.asset('assets/icons/search.svg'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FoodCard(
                  title: 'Vegan Salad Bowl',
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed',
                  image: 'assets/images/image_1.png',
                  ingredients: 'with red tomato',
                  calories: '420 kCal',
                  price: 20,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      ),
                    );
                  },
                ),
                FoodCard(
                  title: 'Another Vegan Salad Bowl',
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed',
                  image: 'assets/images/image_2.png',
                  ingredients: 'with red tomato',
                  calories: '220 kCal',
                  price: 26,
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
