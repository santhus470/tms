import 'package:flutter/material.dart';
import 'package:tms/consts/textstyleconst.dart';

class MainPageLeftPart extends StatefulWidget {
  const MainPageLeftPart({
    super.key,
  });
  static const ButtonStyle btnStyle =
      ButtonStyle(textStyle: MaterialStatePropertyAll(bold50btnStyle));
  @override
  State<MainPageLeftPart> createState() => _MainPageLeftPartState();
}

class _MainPageLeftPartState extends State<MainPageLeftPart>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  bool isVisible = false;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this, // Required for single-tick animations
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 2 - 120),
                const Text(
                  'വള്ളി ദേവയാനി സമേതനായി \nവാഴുന്ന‌ \nശ്രീ മുരുകന്‍',
                  style: bold50btnStyle,
                ),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text('more')),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            children: [
              // const Text('SSV Karayogam Vellanathuruthu',
              //     style: TextStyle(
              //         color: Colors.white, fontSize: 25)),
              ElevatedButton(
                  style: MainPageLeftPart.btnStyle,
                  onPressed: () {},
                  child: const Text('വഴിപാടുക‍ള്‍')),
              const SizedBox(width: 50),
              ElevatedButton(
                  style: MainPageLeftPart.btnStyle,
                  onPressed: () {},
                  child: const Text('സംഭാവന'))
            ],
          ),
        ),
      ],
    );
  }
}
