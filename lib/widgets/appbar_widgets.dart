import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class appBarWidget extends StatefulWidget {
  const appBarWidget({Key? key}) : super(key: key);

  @override
  State<appBarWidget> createState() => _appBarWidgetState();
}

class _appBarWidgetState extends State<appBarWidget> {
  @override
  bool isLight = true;

  @override
  Widget build(BuildContext context) {
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
              children:  [
                Spacer(
                  flex: 5,
                ),
                InkWell(
                    onTap: () {
                      launchUrlString("https://github.com/SirojiddinBoltayev");
                    },

                  child: Text("Github"),
                ),
                Spacer(),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Spacer(
                  flex: 5,
                ),
                IconButton(
                  onPressed: () {
                    isLight == true
                        ? AdaptiveTheme.of(context).setDark()
                        : AdaptiveTheme.of(context).setLight();
                    setState(() {
                      isLight == true ? isLight = false : isLight = true;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    visualDensity:
                        const VisualDensity(horizontal: 4, vertical: 2),
                  ),
                  icon: Icon(
                    Icons.sunny,
                    size: 20,
                  ),
                ),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
