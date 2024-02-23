import 'package:flutter/material.dart';
import 'package:tms/consts/textstyleconst.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          // height: size.height / 2,
          color: Colors.white10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: () {}, child: const Text('Vazhipadukal')),
                      // const VerticalDivider(),
                      TextButton(
                          onPressed: () {}, child: const Text('Vazhipadukal')),
                      // const VerticalDivider(),
                      TextButton(
                          onPressed: () {},
                          child: const Text('Darsana Smayam')),
                    ],
                  ),
                  const VerticalDivider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: () {}, child: const Text('Dieties')),

                      TextButton(
                          onPressed: () {}, child: const Text('Sambhavana')),
                      // const VerticalDivider(),
                      TextButton(
                          onPressed: () {},
                          child: const Text('Special Poojas')),
                      // const VerticalDivider(),
                      TextButton(
                          onPressed: () {}, child: const Text('Festivals')),
                    ],
                  ),
                  const VerticalDivider(),
                  Image.asset(
                    'assets/images/peacock.png',
                    height: 150,
                  ),
                  const VerticalDivider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton.icon(
                          style: const ButtonStyle(
                              textStyle: MaterialStatePropertyAll<TextStyle>(
                                  TextStyle(fontSize: 25))),
                          onPressed: () {},
                          icon: const Icon(Icons.temple_hindu),
                          label: const Text('Subrahmanya Swami Temple ')),
                      const SizedBox(height: 30),
                      TextButton.icon(
                          style: const ButtonStyle(
                              textStyle: MaterialStatePropertyAll<TextStyle>(
                                  TextStyle(fontSize: 25))),
                          onPressed: () {},
                          icon: const Icon(Icons.account_balance),
                          label:
                              const Text('Sree Sugunanadavilasam karayogam ')),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton.outlined(
                      onPressed: () {},
                      icon: const Icon(Icons.facebook_outlined)),
                  const SizedBox(width: 15),
                  IconButton.outlined(
                      onPressed: () {}, icon: const Icon(Icons.mail)),
                  const SizedBox(width: 15),
                  IconButton.outlined(
                      onPressed: () {}, icon: const Icon(Icons.call)),
                  const SizedBox(width: 15),
                  IconButton.outlined(
                      onPressed: () {}, icon: const Icon(Icons.map)),
                ],
              ),
              const SizedBox(height: 30),

              const Divider(),
              // const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Ⓒ 2024 Sree Sugunandavilasam Arayajana Karayogam Vellanathuruthu',
                    ),
                    const SizedBox(width: 30),
                    TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white70)),
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/images/kalpaka.png',
                              height: 25,
                            ),
                            const Text(
                              'Studio',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
