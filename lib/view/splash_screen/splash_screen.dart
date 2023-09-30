import 'package:flutter/material.dart';
import 'package:myquiz/view/start_screen/start_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
    @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4)).then((value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => StartScreen(),
        )));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
    body: Center(
      child: Stack(
        children: [
          Container(
          child: Image.asset("assets/images/quizz  AL.GIF",)),
        ],
      ),
    ),
    );
  }
}