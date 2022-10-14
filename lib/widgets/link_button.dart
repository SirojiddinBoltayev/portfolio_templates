import 'package:flutter/material.dart';

Widget LinkButton() {
  return Row(
    children: [
      Container(
        height: 30,
        width: 90,
        decoration: BoxDecoration(
            gradient: LinearGradient(
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
          margin: EdgeInsets.all(1.5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Row(children: [
            Spacer(),
            Image.asset("assets/icons/github.png",height: 18,),
            Spacer(),
            Text("Github",style: TextStyle(fontSize: 10),),
            Spacer(flex: 3,),
          ],),
        ),
      ),
      Spacer(),
      Container(
        height: 30,
        width: 115,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment(0.8, 1),
              colors: <Color>[
                Color(0xff00FFFF),
                Color(0xffc5a485c),
                Color(0xff800000),
              ],
              // Gradient from https://learnui.design/tools/gradient-generator.html
              tileMode: TileMode.mirror,
            ),
            borderRadius: BorderRadius.circular(5)),
        child: Container(
          margin: EdgeInsets.all(1.5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Row(children: [
            Spacer(),
            Icon(Icons.telegram,size: 16,),
            Spacer(),
            Text("Send an Telegram",style: TextStyle(fontSize: 10),),
            Spacer(),
          ],),
        ),

      ),
      Spacer(),
      Container(
        height: 30,
        width: 90,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              colors: <Color>[
                Color(0xff666362),
                Color(0xffe16b5c),
                Color(0xff413839),
                Color(0xffffb56b),
              ],
              // Gradient from https://learnui.design/tools/gradient-generator.html
              tileMode: TileMode.mirror,
            ),
            borderRadius: BorderRadius.circular(5)),
        child: Container(
          margin: EdgeInsets.all(1.5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Row(children: [
            Spacer(),
            Icon(Icons.mail_rounded,size: 16,),
            Spacer(),
            Text("Send an mail",style: TextStyle(fontSize: 10),),
            Spacer(),
          ],),
        ),
      ),
      Spacer(
        flex: 8,
      ),
    ],
  );
}
