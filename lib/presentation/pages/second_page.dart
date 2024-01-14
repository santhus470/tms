import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tms/consts/textstyleconst.dart';
import 'package:visibility_detector/visibility_detector.dart';

class SecondPage extends ConsumerStatefulWidget {
  const SecondPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SecondPageState();
}

class _SecondPageState extends ConsumerState<SecondPage> {
  static const double height = 700;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Row(
        children: [
          Expanded(
              child: ImageOverlayWidget(
                  curve: Curves.easeInSine,
//
                  height: height,
                  label: 'ക്ഷേത്ര\nപുനരുദ്ദാരണം',
                  ontap: () {})),
          Expanded(
              child: ImageOverlayWidget(
                  curve: Curves.easeInOutBack,
                  height: height,
                  imgPath: 'assets/images/ulsavam2.jpg',
                  label: 'ഉത്സവം',
                  ontap: () {})),
          Expanded(
              child: ImageOverlayWidget(
                  height: height,
                  imgPath: 'assets/images/special.jpg',
                  label: 'സ്പെഷ്യല്‍ പൂജ',
                  ontap: () {})),
        ],
      ),
    );
  }
}

class ImageOverlayWidget extends StatefulWidget {
  const ImageOverlayWidget(
      {super.key,
      required this.height,
      required this.label,
      this.curve = Curves.easeInOut,
      this.imgPath = 'assets/images/punarudharanam.jpg',
      this.ontap});

  final double height;
  final String label;
  final String? imgPath;
  final Function()? ontap;
  final Curve? curve;

  @override
  State<ImageOverlayWidget> createState() => _ImageOverlayWidgetState();
}

class _ImageOverlayWidgetState extends State<ImageOverlayWidget>
    with SingleTickerProviderStateMixin {
  bool isVisible = false;
  AnimationController? controller;
  Animation<double>? animation;
  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    animation = Tween<double>(begin: 0.5, end: 1).animate(
      CurvedAnimation(parent: controller!, curve: widget.curve!),
    );
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // check the visibility of the widget and do the animation
    return VisibilityDetector(
      key: Key(widget.label),
      onVisibilityChanged: (info) {
        if (info.visibleFraction == 1.0) {
          if (!isVisible) {
            controller!.forward();
            setState(() {
              isVisible = true;
            });
          }
        } else {
          if (isVisible) {
            controller!.reverse();
            setState(() {
              isVisible = false;
            });
          }
        }
      },
      child: Stack(
        children: [
          Image.asset(
            widget.imgPath!,
            height: widget.height,
            fit: BoxFit.fitHeight,
            repeat: ImageRepeat.repeatY,
          ),
          Container(
            height: widget.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black12, Colors.black87]),
            ),
          ),
          AnimatedBuilder(
              animation: animation!,
              builder: (context, child) {
                return Positioned(
                  bottom: 50 * animation!.value,
                  right: 50,
                  child: TextButton(
                      style: const ButtonStyle(
                        textStyle: MaterialStatePropertyAll(bold50btnStyle),
                      ),
                      onPressed: widget.ontap,
                      child: Row(
                        children: [
                          Text(widget.label),
                          const SizedBox(width: 10),
                          const Icon(Icons.arrow_forward)
                        ],
                      )),
                );
              })
        ],
      ),
    );
  }
}
