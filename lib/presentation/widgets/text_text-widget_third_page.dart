import 'package:flutter/material.dart';

import '../../consts/textstyleconst.dart';

class TextToTextWidget extends StatelessWidget {
  final String title;
  final String decreption;
  final Function()? onTap;
  const TextToTextWidget({
    super.key,
    required this.title,
    required this.decreption,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text(
            // '',
            title,
            style: bold30orange,
          ),
          const SizedBox(height: 10),
          Text(
            decreption,
            style: normal30,
            maxLines: 4,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
