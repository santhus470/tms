import 'dart:async';

import 'package:flutter/material.dart';

class ImagePageView extends StatefulWidget {
  const ImagePageView({
    super.key,
  });

  @override
  State<ImagePageView> createState() => _ImagePageViewState();
}

class _ImagePageViewState extends State<ImagePageView> {
  final List<String> imgList = [
    // Image.asset('assets/images/punarudharanam.jpg'),
    // Image.asset('assets/images/ulsavam2.jpg'),
    // Image.asset('assets/images/temple.jpg'),
    'assets/images/ulsavam2.jpg',
    'assets/images/punarudharanam.jpg',
    'assets/images/temple.jpg'
  ];
  int currentPage = 0;
  final PageController imgViewController = PageController(initialPage: 0);
  List<Widget>? pages;

  @override
  void initState() {
    super.initState();
    pages = List.generate(
        imgList.length,
        (index) => Image.asset(
              imgList[index],
              fit: BoxFit.fill,
            ));

    Timer.periodic(const Duration(seconds: 3), (timer) {
      if (currentPage < pages!.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }

      // Animate to the next page
      imgViewController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      InkWell(
        onTap: () {
          //TODO
        },
        child: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: pages!.length,
          controller: imgViewController,
          itemBuilder: (context, index) {
            return pages![index];
          },
          onPageChanged: (value) {
            setState(() {
              currentPage = value;
            });
          },
        ),
      ),
      currentPage > 0
          ? const Align(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                  backgroundColor: Colors.black54,
                  child: Icon(Icons.arrow_back_ios_new)),
            )
          : const SizedBox(),
      currentPage < pages!.length - 1
          ? const Align(
              alignment: Alignment.centerRight,
              child: CircleAvatar(
                  backgroundColor: Colors.black54,
                  child: Icon(Icons.arrow_forward_ios)),
            )
          : const SizedBox()
    ]);
  }
}
