import 'package:flutter/material.dart';
import 'package:tms/consts/textstyleconst.dart';

class MainPageRightPart extends StatelessWidget {
  const MainPageRightPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: RichText(
                  text: TextSpan(children: [
                WidgetSpan(
                  child: Transform.translate(
                    offset: const Offset(0.0, -20.0),
                    child: const Text('ശ്രീ', style: bold30orange),
                  ),
                ),
                const TextSpan(
                  text: 'സുബ്രഹ്മണ്യ സ്വാമി',
                  style: titleStyle,
                ),
                const TextSpan(
                  text: '\n  ക്ഷേത്രം വെള്ളനാതുരുത്ത്',
                  style: bold50btnStyle,
                ),
              ])),
            ),
          ],
        ),
        Expanded(
          child: Center(
            child: Image.asset(
              'assets/images/home.png',
              // colorBlendMode: BlendMode.colorDodge,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    color: Colors.white54),
                child: Image.asset(
                  'assets/images/karaygam..png',
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Colors.white10),
                height: 50,
                child: const Text(
                  'ശ്രീ സുഗുണാന്ദവിലാസം കരയോഗം ',
                  style: bold30,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
