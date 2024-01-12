import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tms/consts/color_const.dart';

class PageViewBotomDotts extends StatefulWidget {
  const PageViewBotomDotts({
    super.key,
    required this.pageController,
    required this.pageLength,
  });

  final PageController pageController;
  final int pageLength;

  @override
  State<PageViewBotomDotts> createState() => _PageViewBotomDottsState();
}

class _PageViewBotomDottsState extends State<PageViewBotomDotts> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.black45,
          ),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          margin: const EdgeInsets.all(5),
          child: SmoothPageIndicator(
            controller: widget.pageController,
            count: widget.pageLength,
            effect: const WormEffect(
              activeDotColor: yellow,
              dotHeight: 16,
              dotWidth: 16,
              type: WormType.underground,
            ),
            onDotClicked: (index) {},
          ),
        ));
  }
}
