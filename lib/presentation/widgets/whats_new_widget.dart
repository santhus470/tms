import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tms/consts/textstyleconst.dart';
import 'package:tms/presentation/widgets/pageviev_dots.dart';

class WhatsNewWidget extends StatefulWidget {
  const WhatsNewWidget({
    super.key,
  });

  @override
  State<WhatsNewWidget> createState() => _WhatsNewWidgetState();
}

class _WhatsNewWidgetState extends State<WhatsNewWidget> {
  int currentPage = 0;
  final PageController pageController = PageController(initialPage: 0);
  List<Widget>? pages;
  final List<String> imgList = [
    // Image.asset('assets/images/punarudharanam.jpg'),
    // Image.asset('assets/images/ulsavam2.jpg'),

    // Image.asset('assets/images/temple.jpg'),
    'assets/images/ulsavam2.jpg',
    'assets/images/punarudharanam.jpg',
    'assets/images/temple.jpg'
  ];

  @override
  void initState() {
    super.initState();
    pages = List.generate(
        imgList.length,
        (index) => Image.asset(
              imgList[index],
            ));
    Timer.periodic(const Duration(seconds: 4), (timer) {
      if (currentPage < pages!.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }

      // Animate to the next page
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 1500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: pages!.length,
        controller: pageController,
        itemBuilder: (context, index) {
          return pages![index];
        },
        onPageChanged: (value) {
          setState(() {
            currentPage = value;
          });
        },
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        color: Colors.black38,
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title',
              style: bold20orange,
            ),
            Text(
              'Descreption',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
      PageViewBotomDotts(
          pageController: pageController, pageLength: pages!.length)
    ]);
  }
}
