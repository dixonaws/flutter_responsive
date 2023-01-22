import 'package:flutter/material.dart';
import 'package:responsive_ui/constants.dart';

import '../util/my_box.dart';
import '../util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);
  final String title = 'Desktop Version';

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: getMyAppBr('Project Responsive (Desktop)', context),
      body: Row(children: [
        // open drawer
        myDrawer,

        // rest of body
        Expanded(
          flex: 2,
          child: Column(children: [
            AspectRatio(
                aspectRatio: 4,
                child: SizedBox(
                    width: double.infinity,
                    child:
                        // 4 boxes on top
                        GridView.builder(
                            itemCount: 4,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4),
                            itemBuilder: (context, index) {
                              return MyBox();
                            }))),
            // tiles below
            Expanded(
                child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const MyTile();
              },
            )),
          ]),
        ),

        // right navigation/contents bar for desktop
        // Expanded(
        //     child: Column(children: [
        //     Expanded(child: Container(color: Colors.grey[100])),
        // ])),
      ]),
    );
  }
}
