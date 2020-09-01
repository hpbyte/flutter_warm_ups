import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:warmups/constants.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset('assets/icons/backward.svg'),
                ),
                SvgPicture.asset('assets/icons/menu.svg'),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              padding: EdgeInsets.all(6),
              width: 305,
              height: 305,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kSecondaryColor,
              ),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/image_1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Vegan Salad Bowl\n',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      TextSpan(
                        text: 'with red tomato',
                        style: TextStyle(
                          color: kTextColor.withOpacity(.5),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '\$20',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: kPrimaryColor),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Leo in vitae turpis massa sed elementum tempus egestas. Sit amet luctus venenatis lectus magna. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi. Viverra nam libero justo laoreet sit amet. Elementum curabitur vitae nunc sed. Neque laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt. Morbi tempus iaculis urna id volutpat lacus laoreet non. Faucibus turpis in eu mi bibendum neque egestas. Nisl condimentum id venenatis a condimentum. Aliquam eleifend mi in nulla posuere sollicitudin. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Ipsum faucibus vitae aliquet nec ullamcorper sit amet. Venenatis cras sed felis eget velit aliquet sagittis id consectetur.',
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 27, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: kPrimaryColor.withOpacity(.19),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Add to bag',
                          style: Theme.of(context).textTheme.button,
                        ),
                        SizedBox(width: 16),
                        SvgPicture.asset(
                          'assets/icons/forward.svg',
                          height: 11,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimaryColor.withOpacity(.26),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimaryColor,
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/bag.svg',
                          ),
                        ),
                        Positioned(
                          right: 15,
                          bottom: 10,
                          child: Container(
                            alignment: Alignment.center,
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kWhiteColor,
                            ),
                            child: Text(
                              '0',
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .copyWith(color: kPrimaryColor, fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
