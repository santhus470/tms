import 'package:flutter/material.dart';
import 'package:tms/consts/textstyleconst.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20),
      // height: size.height / 2,
      color: Colors.green.shade900,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          SizedBox(
            // height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {}, child: const Text('Vazhipadukal')),
                const VerticalDivider(),
                TextButton(onPressed: () {}, child: const Text('Vazhipadukal')),
                const VerticalDivider(),
                TextButton(
                    onPressed: () {}, child: const Text('Darsana Smayam')),
               Image.asset(
                    'assets/images/peacock.png',
                    height: 150,
                  ),
                TextButton(onPressed: () {}, child: const Text('Dieties')),
                const VerticalDivider(),
                TextButton(onPressed: () {}, child: const Text('Sambhavana')),
                const VerticalDivider(),
                TextButton(
                    onPressed: () {}, child: const Text('Special Poojas')),
                const VerticalDivider(),
                TextButton(onPressed: () {}, child: const Text('Festivals')),
              ],
            ),
          ),
          const Divider(),
     
          const Text(
              'Ⓒ 2024 Sree Sugunandavilasam Arayajana Karayogam Vellanathirithu'),
              SizedBox(height:20),
          IconButton(
              onPressed: () {},
              icon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/kalpaka.png',
                    height: 25,
                  ),
                  const Text(
                    'Studio',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
