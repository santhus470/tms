import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tms/firebase_options.dart';
import 'package:tms/presentation/pages/fifth_page.dart';
import 'package:tms/presentation/pages/first_pahe.dart';
import 'package:tms/presentation/pages/footer_page.dart';
import 'package:tms/presentation/pages/fourth_page.dart';
import 'package:tms/presentation/pages/second_page.dart';
import 'package:tms/presentation/pages/third_page.dart';
import '../widgets/menu_bar_part.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    initFirebase();
  }

  void initFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: const [MenuBarPart()],
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
        body: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: FirstPage(),
            ),
            SliverToBoxAdapter(
              child: SecondPage(),
            ),
            SliverToBoxAdapter(
              child: ThirdPage(),
            ),
            SliverToBoxAdapter(
              child: FourthPage(),
            ),
            SliverToBoxAdapter(
              child: FifthPage(),
            ),
            SliverToBoxAdapter(
              child: FooterPage(),
            ),
          ],
        ),
      ),
    );
  }
}
