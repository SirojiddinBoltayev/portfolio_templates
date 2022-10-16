import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

Widget appBarWidget() {
  return Container(
    margin: const EdgeInsets.only(bottom: 20),
    // color: Colors.red,
    width: double.infinity,
    height: 90,
    child: Center(
      child: Row(
        children: [
          Column(
            children: [
              const Spacer(
                flex: 5,
              ),
              SizedBox(
                width: 85,
                // color: Colors.red,
                child: AnimatedTextKit(
                  pause: const Duration(microseconds: 1),
                  repeatForever: true,
                  animatedTexts: [
                    ColorizeAnimatedText('SB.',
                        speed: const Duration(seconds: 20),
                        textStyle: const TextStyle(fontSize: 20),
                        colors: <Color>[
                          Colors.indigo,
                          Colors.red,
                          Colors.indigo,
                          Colors.red,
                          Colors.indigo,
                          Colors.red,
                          Colors.indigo,
                          Colors.red,
                          Colors.indigo,
                          Colors.red,
                          Colors.indigo,
                          Colors.red,
                        ]),
                  ],
                  onTap: () {},
                ),
              ),
              const Spacer(),
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
              Icon(
                Icons.sunny,
                size: 20,
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    ),
  );
}
