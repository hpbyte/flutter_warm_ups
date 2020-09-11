import 'package:flutter/material.dart';
import 'package:warmups/components/navbar.dart';
import 'package:warmups/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:warmups/size_config.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(ctx: context),
      bottomNavigationBar: MyNavBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar({BuildContext ctx}) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(ctx);
        },
      ),
      centerTitle: true,
      title: Text('Profile'),
      backgroundColor: kPrimaryColor,
      actions: [
        Center(
          child: Text(
            'EDIT',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: SizeConfig.defaultSize * 1.6,
            ),
          ),
        ),
        SizedBox(width: SizeConfig.defaultSize),
      ],
    );
  }
}
