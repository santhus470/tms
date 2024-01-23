import 'package:flutter/material.dart';
import '../../consts/pading_const.dart';
import '../widgets/main_page_left_widget.dart';
import '../widgets/main_page_right_widget.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({
    super.key,
  });

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 250))
          ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          height: size.height,
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Expanded(child: GalaxyAnimation()),

              Align(
                child: SizedBox(
                  child: Image.asset(
                    'assets/images/oom.png',
                    width: size.height / 10,

                    // 'assets/gif/lamp.gif',
                    // fit: BoxFit.cover,
                    // width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              Align(
                child: AnimatedBuilder(
                  animation: controller,
                  builder: (context, child) {
                    return Transform.rotate(
                      angle: controller.value * 3.1415 * 2,
                      child: Image.asset(
                        'assets/images/chakra4.png',
                        // 'assets/gif/lamp.gif',
                        // fit: BoxFit.cover,
                        // width: MediaQuery.of(context).size.width,
                      ),
                    );
                  },
                ),
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

class OomBuilder extends StatefulWidget {
  const OomBuilder({
    super.key,
  });

  @override
  State<OomBuilder> createState() => _OomBuilderState();
}

class _OomBuilderState extends State<OomBuilder>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 100000))
      ..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: controller.value * -3.1415 * 2,
          child: Image.asset(
            'assets/images/oom.png',
            // 'assets/gif/lamp.gif',
            // fit: BoxFit.cover,
            // width: MediaQuery.of(context).size.width,
          ),
        );
      },
    );
  }
}
