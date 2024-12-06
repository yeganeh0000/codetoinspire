import 'package:codetolnspire/view/HomePage.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'constants/colors_text_theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design 1',
      theme: ThemeData(primaryColor: colorWhite, textTheme: screenWidth < 500 ? textTheme : textThemeDef, fontFamily: "Montserrat", colorScheme: ColorScheme.fromSwatch().copyWith(secondary: colorDarkBlue)),
      home: const HomePage(),
    );
  }
}
