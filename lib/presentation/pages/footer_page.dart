import 'package:flutter/material.dart';
import 'package:tms/consts/textstyleconst.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Align(
          child: Image.asset(
            'assets/images/peacock.png',
            height: 150,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          // height: size.height / 3,
          color: Colors.white10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {}, child: const Text('Vazhipadukal')),
                    const VerticalDivider(),
                    TextButton(
                        onPressed: () {}, child: const Text('Vazhipadukal')),
                    const VerticalDivider(),
                    TextButton(
                        onPressed: () {}, child: const Text('Darsana Smayam')),
                    const VerticalDivider(),
                    TextButton(onPressed: () {}, child: const Text('Dieties')),
                    const VerticalDivider(),
                    TextButton(
                        onPressed: () {}, child: const Text('Sambhavana')),
                    const VerticalDivider(),
                    TextButton(
                        onPressed: () {}, child: const Text('Special Poojas')),
                    const VerticalDivider(),
                    TextButton(
                        onPressed: () {}, child: const Text('Festivals')),
                  ],
                ),
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
              TextButton.icon(
                  style: const ButtonStyle(
                      textStyle: MaterialStatePropertyAll<TextStyle>(
                          TextStyle(fontSize: 25))),
                  onPressed: () {},
                  icon: const Icon(Icons.temple_hindu),
                  label: const Text('Subrahmanya Swami Temple ')),
              const SizedBox(height: 10),
              TextButton.icon(
                  style: const ButtonStyle(
                      textStyle: MaterialStatePropertyAll<TextStyle>(
                          TextStyle(fontSize: 25))),
                  onPressed: () {},
                  icon: const Icon(Icons.account_balance),
                  label: const Text('Sree Sugunanadavilasam karayogam ')),
              const SizedBox(height: 30),
              const Divider(),
              const Text(
                'Ⓒ 2024 Sree Sugunandavilasam Arayajana Karayogam Vellanathuruthu',
              ),
              const SizedBox(height: 10),
              IconButton.filled(
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
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
