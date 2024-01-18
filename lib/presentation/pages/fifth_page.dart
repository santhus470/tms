import 'package:flutter/material.dart';
import 'package:tms/consts/textstyleconst.dart';

class FifthPage extends StatefulWidget {
  const FifthPage({super.key});

  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  static const double containerHeight = 500;
  List<String>? vazhipaduList;
  ScrollController? scrollController;
  bool showLeftArrow = false;
  bool showRightArrow = true;

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

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const Divider(indent: 50, endIndent: 50),
          const Text(
            'വഴിപാടുകള്‍',
            style: bold50Orange,
          ),
          Stack(
            children: [
              SizedBox(
                height: containerHeight,
                child: GridView.builder(
                  controller: scrollController,
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
                            style: normal20,
                          ),
                          const Text(
                            'Rs.150/-',
                            style: bold20,
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: vazhipaduList!.length,
                ),
              ),
              showLeftArrow
                  ? Positioned(
                      bottom: containerHeight / 2,
                      left: 10,
                      child: InkWell(
                        onTap: () {
                          scrollController!.animateTo(
                            scrollController!.position.pixels - 400,
                            duration: const Duration(milliseconds: 1000),
                            curve: Curves.easeInOut,
                          );
                        },
                        onLongPress: () {
                          scrollController!.animateTo(
                            scrollController!.position.minScrollExtent,
                            duration: const Duration(milliseconds: 1500),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: const CircleAvatar(
                            child: Icon(Icons.arrow_back_ios_new)),
                      ),
                    )
                  : const SizedBox(),
              showRightArrow
                  ? Positioned(
                      // alignment: Alignment.bottomRight,
                      bottom: containerHeight / 2,
                      right: 10,
                      child: InkWell(
                          onTap: () {
                            scrollController!.animateTo(
                              scrollController!.position.pixels + 400,
                              duration: const Duration(milliseconds: 1000),
                              curve: Curves.easeInOut,
                            );
                          },
                          onLongPress: () {
                            scrollController!.animateTo(
                              scrollController!.position.maxScrollExtent,
                              duration: const Duration(milliseconds: 1500),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: const CircleAvatar(
                              child: Icon(Icons.arrow_forward_ios))))
                  : const SizedBox()
            ],
          ),
        ],
      ),
    );
  }
}
