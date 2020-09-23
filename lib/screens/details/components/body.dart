import 'package:flutter/material.dart';
import 'package:warmups/constants.dart';
import 'package:warmups/models/Product.dart';
import 'package:warmups/screens/details/components/add_to_cart.dart';
import 'package:warmups/screens/details/components/counter_with_fav_btn.dart';

import 'color_and_size.dart';
import 'description.dart';
import 'product_image_info.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: size.height * 0.3),
              padding: EdgeInsets.only(
                top: size.height * 0.12,
                left: kDefaultPadding,
                right: kDefaultPadding,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  ColorAndSize(product: product),
                  SizedBox(height: kDefaultPadding / 2),
                  Description(product: product),
                  SizedBox(height: kDefaultPadding / 2),
                  CounterWithFavBtn(),
                  SizedBox(height: kDefaultPadding / 2),
                  AddToCart(product: product),
                ],
              ),
            ),
            ProductWithImageAndInfo(product: product),
          ],
        ),
      ),
    );
  }
}
