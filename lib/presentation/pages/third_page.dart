import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tms/consts/pading_const.dart';
import '../../consts/string_const.dart';
import '../widgets/text_text-widget_third_page.dart';

class ThirdPage extends ConsumerStatefulWidget {
  const ThirdPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SecondPageState();
}

class _SecondPageState extends ConsumerState<ThirdPage> {
  static const SizedBox sizedWidth = SizedBox(width: 80);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 20),
      padding: mainPagePaddding,
      child: Row(children: [
        const Expanded(
          flex: 4,
          child: Text('Descreption'),
        ),
        Expanded(
          flex: 6,
          child: Column(
            children: [
              const Row(
                children: [
                  Expanded(child: Divider()),
                  sizedWidth,
                  Expanded(child: Divider())
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: TextToTextWidget(
                    title: 'പടിത്തരം',
                    decreption: abtTemple,
                  )),
                  sizedWidth,
                  Expanded(
                      child: TextToTextWidget(
                    title: 'പ്രധാന വഴിപാടുക‍ള്‍',
                    decreption: abtTemple,
                  )),
                ],
              ),
              const Row(
                children: [
                  Expanded(child: Divider()),
                  sizedWidth,
                  Expanded(child: Divider())
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: TextToTextWidget(
                    title: 'വിശേ‍ഷാ‍ല്‍ പൂജകള്‍',
                    decreption: abtTemple,
                  )),
                  sizedWidth,
                  Expanded(
                      child: TextToTextWidget(
                    title: 'വിശേഷ ദിവസങ്ങള്‍',
                    decreption: abtTemple,
                  )),
                ],
              ),
              const Row(
                children: [
                  Expanded(child: Divider()),
                  sizedWidth,
                  Expanded(child: Divider())
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: TextToTextWidget(
                    title: 'ഉപദേവതാ മൂ‍ര്‍ത്തികള്‍',
                    decreption: abtTemple,
                  )),
                  sizedWidth,
                  const Expanded(
                    child: SizedBox(),
                  ),
                ],
              ),
              const Row(
                children: [
                  Expanded(child: Divider()),
                  sizedWidth,
                  Expanded(child: SizedBox())
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
