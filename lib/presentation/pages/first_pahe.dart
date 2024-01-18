import 'package:flutter/material.dart';
import '../../consts/pading_const.dart';
import '../widgets/main_page_left_widget.dart';
import '../widgets/main_page_right_widget.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
             
              Image.asset(
                // 'assets/images/temple.jpg',
                'assets/gif/lamp.gif',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
              // top container palced above the video
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: mainPagePaddding,
                color: Colors.transparent,
                child: const Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: MainPageRightPart(),
                    ),
                    Expanded(
                      flex: 4,
                      child: MainPageLeftPart(),
                    )
                  ],
                ),
              ),
              //contact pages

              // bottom part
            ],
          ),
        ),
      ],
    );
  }
}
