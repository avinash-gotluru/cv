import 'package:clay_containers/clay_containers.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:avinashgotluru/constants/colors.dart';
import 'package:avinashgotluru/utils/app.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with CustomColors, App {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [swatch3, swatch2],
              ),
            ),
          ),
          Positioned(
            right: 0,
              bottom: 0,
              child: Image.asset(
                'assets/images/coffee.png',
                height: height * 0.4,
                width: width * 0.1,
              )),
          Positioned(
              left: 0,
              top: 30,
              child: Image.asset(
                'assets/images/logo.png',
                height: height * 0.2,
                width: (width * 0.2) - 0,
              )),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Center(
                    child: ClayContainer(
                      depth: 50,
                      emboss: true,
                      width: width * 0.7,
                      height: height,
                      color: swatch4,
                      spread: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          children: const [Text('Avinash Gotluru')],
                        ),
                      ),
                      parentColor: swatch3,
                      surfaceColor: swatch3,
                      borderRadius: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> list(){
    return [
      // Text('');
    ];
  }
}
