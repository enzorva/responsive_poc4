import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class LandscapeBody extends StatefulWidget {
  const LandscapeBody({super.key});

  @override
  State<LandscapeBody> createState() => _PortraitBodyState();
}

class _PortraitBodyState extends State<LandscapeBody> {
  String showNumber = '0';

  Widget basicOperations(index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        border: Border.all(
          width: 2,
          color: Colors.black,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            index,
            style: const TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }

  Widget otherOperations(index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(
          width: 2,
          color: Colors.black,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            index,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget numbers(index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(
          width: 2,
          color: Colors.black,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            index,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget visorResult(index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(
          width: 2,
          color: Colors.black,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            showNumber,
            style: const TextStyle(color: Colors.white, fontSize: 90),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenPosition = MediaQuery.sizeOf(context);
    final visor = screenPosition.height * 0.25;
    final keyBoard = screenPosition.height * 0.75;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Landscape'),
      ),

      // retirar SingleChildScrowView mais tarde
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 1000),
            child: Container(
                height: visor,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                  ),
                ),
                child: Text(
                  showNumber,
                  style: const TextStyle(color: Colors.white, fontSize: 90),
                )),
          ),

          // AlignedGridView.count(
          //   crossAxisCount: 4,
          //   mainAxisSpacing: 4,
          //   crossAxisSpacing: 4,
          //   itemBuilder: (context, index) {
          //     return Tile(
          //       index: index,
          //       extent: (index % 7 + 1) * 30,
          //     );
          //   },
          // )

          // StaggeredGrid.count(crossAxisCount: 8, mainAxisSpacing: 4, crossAxisSpacing: 4, children: [
          //   StaggeredGridTile.count(
          //     crossAxisCellCount: 1,
          //     mainAxisCellCount: 1,
          //     child: Container(
          //       color: Colors.blue,
          //     ),
          //   ),
          //   StaggeredGridTile.count(
          //     crossAxisCellCount: 1,
          //     mainAxisCellCount: 1,
          //     child: Container(
          //       color: Colors.blue,
          //     ),
          //   ),
          //   StaggeredGridTile.count(
          //     crossAxisCellCount: 1,
          //     mainAxisCellCount: 1,
          //     child: Container(
          //       color: Colors.blue,
          //     ),
          //   ),
          //   StaggeredGridTile.count(
          //     crossAxisCellCount: 1,
          //     mainAxisCellCount: 1,
          //     child: Container(
          //       color: Colors.blue,
          //     ),
          //   ),
          //   StaggeredGridTile.count(
          //     crossAxisCellCount: 1,
          //     mainAxisCellCount: 1,
          //     child: Container(
          //       color: Colors.red,
          //     ),
          //   ),
          //   StaggeredGridTile.count(
          //     crossAxisCellCount: 1,
          //     mainAxisCellCount: 1,
          //     child: Container(
          //       color: Colors.red,
          //     ),
          //   ),
          //   StaggeredGridTile.count(
          //     crossAxisCellCount: 1,
          //     mainAxisCellCount: 1,
          //     child: Container(
          //       color: Colors.red,
          //     ),
          //   ),
          //   StaggeredGridTile.count(
          //     crossAxisCellCount: 1,
          //     mainAxisCellCount: 1,
          //     child: Container(
          //       color: Colors.red,
          //     ),
          //   ),
          //   //linha
          //   StaggeredGridTile.count(
          //     crossAxisCellCount: 1,
          //     mainAxisCellCount: 1,
          //     child: Container(
          //       color: Colors.blue,
          //     ),
          //   ),
          //   StaggeredGridTile.count(
          //     crossAxisCellCount: 1,
          //     mainAxisCellCount: 1,
          //     child: Container(
          //       color: Colors.blue,
          //     ),
          //   ),
          //   StaggeredGridTile.count(
          //     crossAxisCellCount: 1,
          //     mainAxisCellCount: 1,
          //     child: Container(
          //       color: Colors.blue,
          //     ),
          //   ),
          //   StaggeredGridTile.count(
          //     crossAxisCellCount: 1,
          //     mainAxisCellCount: 1,
          //     child: Container(
          //       color: Colors.blue,
          //     ),
          //   ),
          //   StaggeredGridTile.count(
          //     crossAxisCellCount: 1,
          //     mainAxisCellCount: 1,
          //     child: Container(
          //       color: Colors.red,
          //     ),
          //   ),
          //   StaggeredGridTile.count(
          //     crossAxisCellCount: 1,
          //     mainAxisCellCount: 1,
          //     child: Container(
          //       color: Colors.red,
          //     ),
          //   ),
          //   StaggeredGridTile.count(
          //     crossAxisCellCount: 1,
          //     mainAxisCellCount: 1,
          //     child: Container(
          //       color: Colors.red,
          //     ),
          //   ),
          //   StaggeredGridTile.count(
          //     crossAxisCellCount: 1,
          //     mainAxisCellCount: 1,
          //     child: Container(
          //       color: Colors.red,
          //     ),
          //   ),
          // ])

          // Expanded(
          //   child: Container(
          //     color: Colors.red,
          //     //height: keyBoard,
          //     child: OrientationBuilder(builder: (context, orientation) {
          //       return
          // StaggeredGrid.count(
          //         crossAxisCount: 6,
          //         mainAxisSpacing: 4,
          //         crossAxisSpacing: 6,
          //         children: [
          //           StaggeredGridTile.count(
          //             crossAxisCellCount: 2,
          //             mainAxisCellCount: 1,
          //             child: basicOperations('='),
          //           ),
          //           StaggeredGridTile.count(
          //             crossAxisCellCount: 1,
          //             mainAxisCellCount: 1,
          //             child: basicOperations('C'),
          //           ),
          //           StaggeredGridTile.count(
          //             crossAxisCellCount: 1,
          //             mainAxisCellCount: 1,
          //             child: numbers('7'),
          //           ),
          //           StaggeredGridTile.count(
          //             crossAxisCellCount: 1,
          //             mainAxisCellCount: 1,
          //             child: numbers('8'),
          //           ),
          //           StaggeredGridTile.count(
          //             crossAxisCellCount: 1,
          //             mainAxisCellCount: 1,
          //             child: numbers('9'),
          //           ),
          //           StaggeredGridTile.count(
          //             crossAxisCellCount: 1,
          //             mainAxisCellCount: 1,
          //             child: basicOperations('√'),
          //           ),
          //           StaggeredGridTile.count(
          //             crossAxisCellCount: 1,
          //             mainAxisCellCount: 1,
          //             child: basicOperations('^'),
          //           ),
          //           StaggeredGridTile.count(
          //             crossAxisCellCount: 1,
          //             mainAxisCellCount: 1,
          //             child: basicOperations('AC'),
          //           ),
          //           StaggeredGridTile.count(
          //             crossAxisCellCount: 1,
          //             mainAxisCellCount: 1,
          //             child: numbers('4'),
          //           ),
          //           StaggeredGridTile.count(
          //             crossAxisCellCount: 1,
          //             mainAxisCellCount: 1,
          //             child: numbers('5'),
          //           ),
          //           StaggeredGridTile.count(
          //             crossAxisCellCount: 1,
          //             mainAxisCellCount: 1,
          //             child: numbers('6'),
          //           ),
          //           StaggeredGridTile.count(
          //             crossAxisCellCount: 1,
          //             mainAxisCellCount: 1,
          //             child: basicOperations('-'),
          //           ),
          //           StaggeredGridTile.count(
          //             crossAxisCellCount: 1,
          //             mainAxisCellCount: 1,
          //             child: basicOperations('+'),
          //           ),
          //           StaggeredGridTile.count(
          //             crossAxisCellCount: 1,
          //             mainAxisCellCount: 1,
          //             child: basicOperations('+/-'),
          //           ),
          //           StaggeredGridTile.count(
          //             crossAxisCellCount: 1,
          //             mainAxisCellCount: 1,
          //             child: numbers('1'),
          //           ),
          //           StaggeredGridTile.count(
          //             crossAxisCellCount: 1,
          //             mainAxisCellCount: 1,
          //             child: numbers('2'),
          //           ),
          //           StaggeredGridTile.count(
          //             crossAxisCellCount: 1,
          //             mainAxisCellCount: 1,
          //             child: numbers('3'),
          //           ),
          //           StaggeredGridTile.count(
          //             crossAxisCellCount: 1,
          //             mainAxisCellCount: 1,
          //             child: basicOperations('÷'),
          //           ),
          //           StaggeredGridTile.count(
          //             crossAxisCellCount: 1,
          //             mainAxisCellCount: 1,
          //             child: basicOperations('*'),
          //           ),
          //           StaggeredGridTile.count(
          //             crossAxisCellCount: 1,
          //             mainAxisCellCount: 1,
          //             child: basicOperations(','),
          //           ),
          //           StaggeredGridTile.count(
          //             crossAxisCellCount: 1,
          //             mainAxisCellCount: 1,
          //             child: numbers('00'),
          //           ),
          //           StaggeredGridTile.count(
          //             crossAxisCellCount: 2,
          //             mainAxisCellCount: 1,
          //             child: numbers('0'),
          //           ),
          //         ],
          //       );
          //     }),
          //   ),
          // )
        ],
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final int index;
  final double extent;
  const Tile({super.key, required this.index, required this.extent});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: extent,
      child: Text(index.toString()),
    );
  }
}
