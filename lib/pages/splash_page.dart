import 'dart:async';

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:portfolio_templates/pages/home_page.dart';
import 'package:flutter/material.dart';

class SplashFuturePage extends StatefulWidget {
  SplashFuturePage({Key? key}) : super(key: key);

  @override
  _SplashFuturePageState createState() => _SplashFuturePageState();
}

class _SplashFuturePageState extends State<SplashFuturePage> {
  Future<Widget> futureCall() async {
    // do async operation ( api call, auto login)
    return Future.value(new MyHomePage1(onChanged: () {  },));
  }

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset("assets/icons/empty.png"),
      title: Text(
        "Siroj Boltayev",
        style: TextStyle(
          fontSize: 32,
            fontFamily: "Satisfy",
            fontWeight: FontWeight.bold,
            foreground: Paint()..shader = const LinearGradient(
              colors: <Color>[
                Color(0xffe16b5c),
                Color(0xffffb56b),
                Color(0xff800000),
                //add more color here.
              ],
            ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
        ),
      ),
      // backgroundColor: Colors.grey.shade400,
      // showLoader: true,
      loadingText: Text("Loading..."),
      futureNavigator: futureCall(),
      durationInSeconds: 20,
        gradientBackground: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: [
          Colors.indigo,
          Colors.black26
        ]),
        backgroundColor: Colors.transparent
    );
  }
}