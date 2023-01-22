import 'package:flutter/material.dart';
import 'package:responsive_ui/constants.dart';

import '../util/my_box.dart';
import '../util/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);
  final String title = 'Tablet Version';

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: getMyAppBr('Tablet Version', context),
      drawer: myDrawer,
      body: Column(children: [
        AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
                width: double.infinity,
                child:
                // 4 boxes on top
                GridView.builder(
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
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
