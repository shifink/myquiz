import 'package:flutter/material.dart';

import '../home_screen/home_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 300, 0, 0),
                child: Text(
                  "Let's Play Quiz...",
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
              ),
               Column(
                children: [
                  InkWell(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),)),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(255, 48, 173, 241)),
                          borderRadius: BorderRadius.circular(20)),
                          child: Center(child: Text("Start",style: TextStyle(color: Color.fromARGB(255, 48, 173, 241),fontSize: 30,fontWeight: FontWeight.w600),)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
