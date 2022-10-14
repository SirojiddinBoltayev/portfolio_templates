import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

Widget AppBarWidget() {
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    // color: Colors.red,
    width: double.infinity,
    height: 90,
    child: Center(
      child: Row(
        children: [
          Column(
            children:  [
              Spacer(
                flex: 5,
              ),
              Container(
                width: 85,
                // color: Colors.red,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  child: AnimatedTextKit(

                      repeatForever: true,
                    animatedTexts: [
                      FadeAnimatedText('BS.'),
                    ],
                    onTap: (){
                    },
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
          const Spacer(
            flex: 6,
          ),
          Column(
            children: const [
              Spacer(
                flex: 5,
              ),
              Text("Projects"),

              Spacer(),
            ],
          ),
          const Spacer(),
          Column(
            children: const [
              Spacer(
                flex: 5,
              ),
              Text("Resume"),

              Spacer(),
            ],
          ),
          const Spacer(),
          Column(
            children: const [
              Spacer(
                flex: 5,
              ),
              Text("Github"),
              Spacer(),
            ],
          ),
          const Spacer(),
          Column(
            children: const [
              Spacer(
                flex: 5,
              ),
              Icon(Icons.sunny,size: 20,),
              Spacer(),
            ],
          ),
        ],
      ),
    ),
  );
}
