import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

Widget bodyWidget(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 15,),
      const Text("Salom Men"),
      const SizedBox(height: 40,),

      SizedBox(
height: 60,

        // color: Colors.red

        width: double.infinity,
        child: Row(
          children: [
           Expanded(

flex: 2,
                child: DefaultTextStyle(

                  style:  TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Satisfy",
                      foreground: Paint()..shader = const LinearGradient(
                        colors: <Color>[
                          Color(0xff00FFFF),
                          Color(0xffe16b5c),
                          Color(0xffffb56b),
                          Color(0xff800000),
                          //add more color here.
                        ],
                      ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
                  ),
                  child: AnimatedTextKit(
                      pause: const Duration(milliseconds: 15),
                      repeatForever: true,
                      isRepeatingAnimation: true,
                      animatedTexts: [
                        FadeAnimatedText('Siroj'),
                      ],
                      onTap: (){
                      },
                    ),
                  ),
                ),


            Expanded(
              flex: 6,
              // color: Colors.red,
              child: DefaultTextStyle(
                style:  TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Satisfy",
                    foreground: Paint()..shader = const LinearGradient(
                      colors: <Color>[
                        Color(0xffe16b5c),
                        Color(0xffffb56b),
                        Color(0xff800000),
                        //add more color here.
                      ],
                    ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))
                ),
                child: AnimatedTextKit(
                  pause: const Duration(milliseconds: 2),
                  repeatForever: true,
                  animatedTexts: [
                    FadeAnimatedText('Boltayev'),
                  ],
                  onTap: (){
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

