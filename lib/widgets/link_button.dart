import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher_string.dart';

Widget linkButton() {
  return Row(
    children: [
      // Link(
      //   target: LinkTarget.blank,
      //   uri: Uri.parse("https://github.com/SirojiddinBoltayev"),
      //   builder:(context,followLink) =>
            InkWell(

          onTap: () {
            launchUrlString("https://github.com/SirojiddinBoltayev");
          },
          child: Container(
            height: 30,
            width: 90,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 1),
                  colors: <Color>[
                    Color(0xff1f005c),
                    Color(0xff5b0060),
                    Color(0xff870160),
                    Color(0xffac255e),
                    Color(0xffca485c),
                    Color(0xffe16b5c),
                    Color(0xfff39060),
                    Color(0xffffb56b),
                  ],
                  // Gradient from https://learnui.design/tools/gradient-generator.html
                  tileMode: TileMode.mirror,
                ),
                borderRadius: BorderRadius.circular(5)),
            child: Container(
              margin: const EdgeInsets.all(1.5),
              decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  const Spacer(),
                  Image.asset(
                    "assets/icons/github.png",
                    height: 18,
                  ),
                  const Spacer(),
                  const Text(
                    "Github",
                    style: TextStyle(fontSize: 10),
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                ],
              ),
            ),
          ),
        ),
      // ),
      const Spacer(),

  Link(
  target: LinkTarget.defaultTarget,
  uri: Uri.parse("https://t.me.SirojBoltayev"),
  builder:(context,followLink) =>
  InkWell(

      onTap: () => followLink,
      child:Container(
        height: 30,
        width: 115,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              colors: <Color>[
                Color(0xff10FFFF),
                Colors.blue,
                Colors.indigoAccent,
                Colors.indigo,
              ],
              tileMode: TileMode.mirror,
            ),
            borderRadius: BorderRadius.circular(5)),
        child: Container(
          margin: const EdgeInsets.all(1.5),
          decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(5)),
          child: Row(
            children: const [
              Spacer(),
              Icon(
                Icons.telegram,
                size: 16,
              ),
              Spacer(),
              Text(
                "Send an Telegram",
                style: TextStyle(fontSize: 10),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
            ),
            ),
      const Spacer(),

  InkWell(

  onTap: (){launchUrlString("mailto:sirojboltayev0948@gmail.com");},
  child:Container(
        height: 30,
        width: 90,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              colors: <Color>[
                Color(0xffffb56b),
                Color(0xffe16b5c),
                Colors.deepPurple,
              ],
              // Gradient from https://learnui.design/tools/gradient-generator.html
              tileMode: TileMode.mirror,
            ),
            borderRadius: BorderRadius.circular(5)),
        child: Container(
          margin: const EdgeInsets.all(1.5),
          decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(5)),
          child: Row(
            children: const [
              Spacer(),
              Icon(
                Icons.mail_rounded,
                size: 16,
              ),
              Spacer(),
              Text(
                "Send an mail",
                style: TextStyle(fontSize: 10),
              ),
              Spacer(),
            ],
          ),
        ),
      ),),
  // ),
      const Spacer(
        flex: 8,
      ),

    ],
  );
}


