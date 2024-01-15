import 'package:flutter/material.dart';
import 'package:tms/consts/textstyleconst.dart';

class FifthPage extends StatefulWidget {
  const FifthPage({super.key});

  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  List<String>? vazhipaduList;
  ScrollController? scrollController;
  bool showLeftArrow = false;
  bool showRightArrow = false;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController!.addListener(() {
      setState(() {
        showLeftArrow = scrollController!.position.pixels > 0;
        showRightArrow = scrollController!.position.pixels <
            scrollController!.position.maxScrollExtent;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    vazhipaduList = List.generate(100, (i) => 'അര്‍ച്ചന $i');
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              const Divider(indent: 50, endIndent: 50),
              const Text(
                'വഴിപാടുകള്‍',
                style: bold50Orange,
              ),
              SizedBox(
                height: 500,
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 8,
                      mainAxisSpacing: 25,
                      childAspectRatio: .15),
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.black26,
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            vazhipaduList![index],
                            // style: normal30,
                          ),
                          const Text(
                            'Rs.150/-',
                            // style: bold30,
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: vazhipaduList!.length,
                ),
              ),
            ],
          ),
        ),
        if (showLeftArrow)
          Icon(
            Icons.arrow_forward_ios,
            size: 30,
          ),
        // Align(
        //     alignment: Alignment.centerLeft,
        //     child: AnimatedOpacity(
        //       opacity: 1,
        //       duration: const Duration(milliseconds: 500),
        //       child: Icon(
        //         Icons.arrow_forward_ios,
        //         size: 30,
        //       ),
        //     ))
      ],
    );
  }
}
