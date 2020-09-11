import 'package:flutter/material.dart';
import 'package:warmups/screens/profile/components/info.dart';
import 'package:warmups/screens/profile/components/profile_menu_item.dart';
import 'package:warmups/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Info(
            image: 'assets/images/pic.png',
            name: 'John Doe',
            email: 'johndoe@gmail.com',
          ),
          SizedBox(height: SizeConfig.defaultSize * 2),
          ProfileMenuItem(
            iconSrc: 'assets/icons/bookmark_fill.svg',
            title: 'Saved Recipes',
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: 'assets/icons/chef_color.svg',
            title: 'Super Plan',
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: 'assets/icons/language.svg',
            title: 'Change Language',
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: 'assets/icons/info.svg',
            title: 'Help',
            press: () {},
          ),
        ],
      ),
    );
  }
}
