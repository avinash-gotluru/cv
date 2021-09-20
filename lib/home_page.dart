import 'package:clay_containers/clay_containers.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:cv/constants/colors.dart';
import 'package:cv/utils/app.dart';
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
            right: - width * 0.17,
              bottom: 0,
              child: Image.asset(
                'assets/images/coffee.png',
                height: height * 0.6,
                width: width * 0.6,
              )),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Center(
                    child: ClayContainer(
                      depth: 50,
                      width: width * 0.5,
                      height: height,
                      color: swatch4,
                      spread: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          children: const [Text('Avinash Gotluru')],
                        ),
                      ),
                      parentColor: swatch2,
                      surfaceColor: swatch4,
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
}
