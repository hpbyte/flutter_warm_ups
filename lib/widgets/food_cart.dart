import 'package:flutter/material.dart';
import 'package:warmups/constants.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final String ingredients;
  final String calories;
  final int price;
  final Function press;

  FoodCard({
    Key key,
    this.title,
    this.description,
    this.image,
    this.ingredients,
    this.calories,
    this.price,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 400,
        width: 270,
        margin: EdgeInsets.only(left: 20),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(.06),
                  borderRadius: BorderRadius.circular(34),
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                width: 181,
                height: 181,
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(.15),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              left: -50,
              top: 0,
              child: Container(
                height: 184,
                width: 276,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: 80,
              child: Text(
                '\$$price',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: kPrimaryColor),
              ),
            ),
            Positioned(
              top: 201,
              left: 40,
              child: Container(
                width: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      ingredients,
                      style: TextStyle(
                        color: kTextColor.withOpacity(.4),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      description,
                      maxLines: 4,
                      style: TextStyle(
                        color: kTextColor.withOpacity(.65),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(calories),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
