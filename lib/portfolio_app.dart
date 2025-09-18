import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/resources/strings_manager.dart';
import 'package:portfolio/screens/home.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: backgroundColor,
        primaryColor: primaryColor,
        cardColor: cardColor,
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme.apply(
            bodyColor: Colors.white,
            displayColor: Colors.white,
          ),
        ).apply(
          fontSizeFactor: MediaQuery.of(context).size.width > 800 ? 1.2 : 1.0,
        ),
        shadowColor: Colors.black.withValues(alpha: 0.3),
      ),
      home: const HomePage(),
    );
  }
}
