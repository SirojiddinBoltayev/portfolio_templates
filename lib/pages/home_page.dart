import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_templates/widgets/appbar_widgets.dart';
import 'package:portfolio_templates/widgets/featured_widget.dart';
import 'package:portfolio_templates/widgets/list_work.dart';

import '../widgets/bio_widget.dart';
import '../widgets/body_widget.dart';
import '../widgets/experince_item.dart';
import '../widgets/link_button.dart';

class MyHomePage1 extends StatefulWidget {
  // final list = ListWork.listWork;
  final VoidCallback onChanged;

  const MyHomePage1({super.key, required this.onChanged});

  @override
  State<MyHomePage1> createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {
  @override
  Widget build(BuildContext context) {
    return AnimatedTheme(
      duration: const Duration(milliseconds: 300),
      data: Theme.of(context),
      child: Scaffold(
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const appBarWidget(),
                    bodyWidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    bioWidget(),
                    linkButton(),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
                delegate: SliverChildListDelegate(
                  [
                    featuredWidget("assets/images/building_city.jpg",
                        "https://github.com/SirojiddinBoltayev"),
                    featuredWidget("assets/images/images.jpg",
                        "https://github.com/SirojiddinBoltayev"),
                    featuredWidget("assets/images/ic_tover.jpg",
                        "https://github.com/SirojiddinBoltayev"),
                    featuredWidget("assets/images/images_1.jpg",
                        "https://github.com/SirojiddinBoltayev"),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    ExpandablePageView(
                      reverse: true,
                      animateFirstPage: true,
                      animationCurve: Curves.easeOutQuad,
                      animationDuration: const Duration(seconds: 4),
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
              ),
            ],
          ),
          // SingleChildScrollView(
          //   child: Column(
          //     children: [
          //       appBarWidget(),
          //       bodyWidget(),
          //
          //       const SizedBox(
          //         height: 20,
          //       ),
          //       bioWidget(),
          //       linkButton(),
          //
          //
          //
          //
          //       ExpandablePageView(
          //         reverse: true,
          //         animateFirstPage: true,
          //         animationCurve: Curves.easeOutQuad,
          //         animationDuration: Duration(seconds: 4),
          //         children: [
          //           itemUI(
          //             ListWork.listork[0],
          //           ),
          //           itemUI(
          //             ListWork.listork[1],
          //           ),
          //           itemUI(
          //             ListWork.listork[2],
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
