import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:warmups/constants.dart';
import 'package:warmups/models/NavItem.dart';
import 'package:warmups/size_config.dart';

class MyNavBar extends StatelessWidget {
  const MyNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;

    return Consumer<NavItems>(
      builder: (context, navItems, child) => Container(
        height: 80,
        padding: EdgeInsets.symmetric(horizontal: defaultSize * 3),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color(0xFF4B1A39).withOpacity(0.2),
            offset: Offset(0, -7),
            blurRadius: 30,
          ),
        ]),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              navItems.items.length,
              (index) => buildIconNav(
                icon: navItems.items[index].icon,
                press: () {
                  navItems.changeNavIndex(index: index);

                  if (navItems.items[index].destinationCheck()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              navItems.items[index].destination),
                    );
                  }
                },
                isActive: navItems.selectedIndex == index,
              ),
            ),
          ),
        ),
      ),
    );
  }

  IconButton buildIconNav({
    String icon,
    Function press,
    bool isActive = false,
  }) {
    return IconButton(
      icon: SvgPicture.asset(
        icon,
        color: isActive ? kPrimaryColor : Color(0xFFD1D4D4),
        height: 22,
      ),
      onPressed: press,
    );
  }
}
