import 'package:cv/constants/colors.dart';
import 'package:cv/home_page.dart';
import 'package:cv/utils/app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with CustomColors{
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: AppContext.navigatorState,
      debugShowCheckedModeBanner: false,
      // showSemanticsDebugger: true,
      title: 'Avinash Gotluru',
      theme: ThemeData(
        primaryColor: const Color(0xFF03B7CC),
        primarySwatch: const MaterialColor(
          0xFF03B7CC,
          <int, Color>{
            50: Color(0xFF03B7CC),
            100: Color(0xFF03B7CC),
            200: Color(0xFF03B7CC),
            300: Color(0xFF03B7CC),
            400: Color(0xFF03B7CC),
            500: Color(0xFF555555),
            600: Color(0xFF555555),
            700: Color(0xFF555555),
            800: Color(0xFF555555),
            900: Color(0xFF555555),
          },
        ),
      ),
      home: const SafeArea(child: HomePage(),),
    );
  }
}
