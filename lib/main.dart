import 'package:avinashgotluru/constants/colors.dart';
import 'package:avinashgotluru/home_page.dart';
import 'package:avinashgotluru/screens/index.dart';
import 'package:avinashgotluru/screens/my_app.dart';
import 'package:avinashgotluru/utils/app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with CustomColors{
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // showSemanticsDebugger: true,
      navigatorKey: AppContext.navigatorState,
      debugShowCheckedModeBanner: false,
      // showSemanticsDebugger: true,
      title: 'Avinash Gotluru',
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xFF5352ED,
          <int, Color>{
            50: Color(0xFF5352ED),
            100: Color(0xFF5352ED),
            200: Color(0xFF5352ED),
            300: Color(0xFF5352ED),
            400: Color(0xFF5352ED),
            500: Color(0xFFFFFFFF),
            600: Color(0xFFFFFFFF),
            700: Color(0xFFFFFFFF),
            800: Color(0xFFFFFFFF),
            900: Color(0xFFFFFFFF),
          },
        ),
      ),
      home:  SafeArea(child: MyHomePage(),),
    );
  }
}
