import 'package:flutter/material.dart';

class MenuBarPart extends StatelessWidget {
  const MenuBarPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(top: 10),
      height: 100,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), bottomLeft: Radius.circular(50))),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(width: 50),
          TextButton(
              onPressed: () {
                print('about us');
              },
              child: const Text('About Us')),
          const SizedBox(width: 50),
          TextButton(onPressed: () {}, child: const Text('Contacts')),
          const SizedBox(width: 50),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          const SizedBox(width: 50),
          IconButton(onPressed: () {}, icon: Icon(Icons.mail)),
          const SizedBox(width: 50),
          IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
          const SizedBox(width: 50),
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/location.png',
                height: 40,
              )),
          const SizedBox(width: 50)
        ],
      ),
    );
  }
}
