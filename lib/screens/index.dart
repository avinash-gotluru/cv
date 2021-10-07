import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avinashgotluru/constants/colors.dart';
import 'package:avinashgotluru/constants/style.dart';
import 'package:avinashgotluru/utils/app.dart';
import 'package:flutter/material.dart';

class Index extends StatelessWidget with CustomColors, App, Styles {
  Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: width <= 1200 ? Drawer() : null,
        body: CustomScrollView(
          slivers: [
            if (width >= 800)
              SliverAppBar(
                backwardsCompatibility: true,
                title: Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Home',
                          style: TextStyle(color: Colors.white),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'About Us',
                          style: TextStyle(color: Colors.white),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Contact',
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
                pinned: true,
                snap: true,
                floating: true,
              ),
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                child: buildRow(false,'assets/images/ic_saly.png',"I'm Avinash Gotluru"),
                decoration: BoxDecoration(color: primaryColor),
              ),
              Container(
                child: buildRow(true,'assets/images/ic_saly_laptop.png',"I'm Karthik Chatla"),
                decoration: BoxDecoration(color: swatch3),
              ),
            ]))
          ],
        ));
  }

  Widget buildRow(bool b, String image, String text) {
    return Row(
      children: [
        b
            ? Expanded(child: Image.asset(image))
            : Container(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hola ',
                style: navMenu,
              ),
              // Text(
              //   "I'm Avinash Gotluru ",
              //   style: navMenu,
              // ),
              AnimatedTextKit(
                isRepeatingAnimation: false,
                displayFullTextOnTap: true,
                animatedTexts: [
                  TyperAnimatedText(text,
                      textStyle: navMenu,
                      speed: const Duration(milliseconds: 100)),
                ],
              ),
            ],
          ),
        ),
        b
            ? Container()
            : Expanded(child: Image.asset(image))
      ],
    );
  }
}
