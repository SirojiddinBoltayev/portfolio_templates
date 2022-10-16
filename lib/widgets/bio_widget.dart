import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

Widget bioWidget(){
  return  SizedBox(
    // color: Colors.red,
    height: 300,
    child: DefaultTextStyle(
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        fontFamily: "SourceCodePro",
      ),
      child: AnimatedTextKit(
        pause: Duration(seconds: 20),
        animatedTexts: [
          TyperAnimatedText(
              "I'm a software engineer based in Toronto, "
                  "Canada and also a communication and journalism student."
                  " I enjoy creating things that live on the internet, whether that be websites, applications, "
                  "or anything in between. I have been freelancing for a year now while studying at the university and "
                  "I've manage to gain a decent amount of experience and valuable knowledge from all different kinds of "
                  "fields throughout my projects/work.",
              speed: Duration(milliseconds: 30)),
          // FadeAnimatedText('do it RIGHT!!'),
          // ScaleAnimatedText('do it RIGHT NOW!!!'),
        ],
        // isRepeatingAnimation:false,
        repeatForever: true,
        // stopPauseOnTap: true,
        displayFullTextOnTap: false,
        onTap: () {},
      ),
    ),
  );
}