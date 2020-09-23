import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:warmups/constants.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Colors.white,
      body: Body(),
    );
  }

  Widget buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back.svg'),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset('assets/icons/search.svg', color: kTextColor),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset('assets/icons/cart.svg', color: kTextColor),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPadding / 2),
      ],
    );
  }
}
