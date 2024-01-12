import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tms/consts/textstyleconst.dart';
import 'package:tms/presentation/widgets/image_view_page_widget.dart';
import 'package:tms/presentation/widgets/whats_new_widget.dart';

class FourthPage extends ConsumerStatefulWidget {
  const FourthPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FourthPageState();
}

class _FourthPageState extends ConsumerState<FourthPage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      padding: const EdgeInsets.all(10),
      height: 600,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  color: Colors.white10,
                  child: const Center(
                    child: Text(
                      'ഫോട്ടോകള്‍',
                      style: bold30,
                    ),
                  ),
                ),
                const Expanded(child: ImagePageView())
              ],
            ),
          ),
          const SizedBox(width: 50),
          Expanded(
            child: Column(
              children: [
                Container(
                  color: Colors.white10,
                  child: const Center(
                    child: Text(
                      'പുതിയ വിവരങ്ങള്‍/അറിയിപ്പുകള്‍',
                      style: bold30,
                    ),
                  ),
                ),
                const Expanded(child: WhatsNewWidget())
              ],
            ),
          )
        ],
      ),
    );
  }
}
