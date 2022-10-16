
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_templates/widgets/appbar_widgets.dart';
import 'package:portfolio_templates/widgets/list_work.dart';

import '../widgets/bio_widget.dart';
import '../widgets/body_widget.dart';
import '../widgets/experince_item.dart';
import '../widgets/link_button.dart';

class MyHomePage1 extends StatefulWidget {
  // final list = ListWork.listWork;
  MyHomePage1({Key? key}) : super(key: key);

  @override
  State<MyHomePage1> createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  appBarWidget(),
                  bodyWidget(),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        bioWidget(),
                        linkButton(),

                      ],
                    ),
                  ),
                  ExpandablePageView(
                    reverse: true,
                    animateFirstPage: true,
                    animationCurve: Curves.easeOutQuad,
                    animationDuration: Duration(seconds: 4),
                    children: [
                      itemUI(
                        ListWork.listork[0],
                      ),
                      itemUI(
                        ListWork.listork[1],
                      ),
                      itemUI(
                        ListWork.listork[2],
                      ),
                    ],
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
