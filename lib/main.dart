import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tms/presentation/pages/home_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        scrollBehavior: const ScrollBehavior().copyWith(
            dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch}),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.orange.shade900, brightness: Brightness.dark),
          brightness: Brightness.dark,
          useMaterial3: true,
        ),
        home: const HomePage());
  }
}
