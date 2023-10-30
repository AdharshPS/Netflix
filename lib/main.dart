import 'package:flutter/material.dart';
import 'package:netflix_full_ui/view/splash_screen/splash_screen.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
