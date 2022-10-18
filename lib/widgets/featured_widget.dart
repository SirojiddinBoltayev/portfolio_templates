import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher_string.dart';

Widget featuredWidget(String image, String link) {
  return SizedBox(
    width: 200,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Image.asset(
            image,
            scale: 1,
            fit: BoxFit.cover,
          ),
        ),
        // Expanded(child: Column(children: [
        const SizedBox(
          height: 10,
        ),

        const Text(
          "Salom",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            const Text(
              "Salom",
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                // launchUrlString(link);
              },
              child: SizedBox(
                width: 22,
                child: Image.asset(
                  "assets/icons/github.png",
                ),
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            InkWell(
              onTap: () {},
              child: Icon(Icons.link),
            ),
            const SizedBox(
              width: 7,
            ),
          ],
        ),
        // ],),),
      ],
    ),
  );
}
