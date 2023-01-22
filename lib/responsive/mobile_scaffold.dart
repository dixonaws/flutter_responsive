import 'package:flutter/material.dart';
import 'package:responsive_ui/constants.dart';
import 'package:responsive_ui/util/my_box.dart';
import 'package:responsive_ui/util/my_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);
  final String title = 'Mobile Version';

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: myDrawer,
      backgroundColor: myDefaultBackground,
      appBar: getMyAppBr('Mobile Version', context),
      body: Column(children: [
        AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
                width: double.infinity,
                child:
                    // 4 boxes on top
                    GridView.builder(
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return MyBox();
                        }))),
        // tiles below
        Expanded(
            child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return MyTile();
          },
        ))
      ]),
    );
  }
}
