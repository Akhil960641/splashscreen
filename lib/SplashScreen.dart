import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splashscreen/LoginPage.dart';


void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen>
    with SingleTickerProviderStateMixin{

  late AnimationController _animationController;
  late Animation<double> blueBoxHeightAnimation;
  late Animation<double> whiteBoxHeightAnimation;
  late Animation<double> logoOpacityAnimation;
  late Animation<double> logoSizeAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    startTime();
  }

  startTime() async {
    var duration =await Duration(milliseconds: 1400);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => LoginScreen()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: new Color(0xffF5591F),
                gradient: LinearGradient(colors: [(new  Color(0xffF5591F)), new Color(0xffF2861E)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            ),
          ),
          Center(
            child: Container(
              child: Icon(Icons.home_outlined,size: 30),
            ),
          )
        ],
      ),
    );
  }
}