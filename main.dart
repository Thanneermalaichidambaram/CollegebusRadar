import 'package:cbts/login.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'College Bus Radar',
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: Icon(Icons.bus_alert,size: 100,color: Colors.yellow.shade800,),
            nextScreen: loginpage(),
            splashTransition: SplashTransition.scaleTransition,
            pageTransitionType: PageTransitionType.bottomToTop,
            backgroundColor: Colors.white),
            debugShowCheckedModeBanner: false,);
        
  }
}   
