import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PortraitBody extends StatefulWidget {
  const PortraitBody({super.key});

  @override
  State<PortraitBody> createState() => _PortraitBodyState();
}

class _PortraitBodyState extends State<PortraitBody> {
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
        title: const Text('Portrait'),
      ),

      // retirar SingleChildScrowView mais tarde
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 100),
            child: Container(
              height: visor,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                  width: 2,
                  color: Colors.black,
                ),
              ),
              // Abaixo poderia ser um StaggeredGridTile
              child: Text(
                showNumber,
                style: const TextStyle(color: Colors.white, fontSize: 90),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.red,
            height: keyBoard,
            child: OrientationBuilder(
              builder: (context, orientation) {
                return StaggeredGrid.count(crossAxisCount: 4, mainAxisSpacing: 4, crossAxisSpacing: 4, children: [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: basicOperations('C'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: basicOperations('+/-'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: basicOperations('%'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: basicOperations('÷'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: numbers('7'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: numbers('8'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: numbers('9'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: basicOperations('x'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: numbers('4'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: numbers('5'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: numbers('6'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: basicOperations('-'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: numbers('1'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: numbers('2'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: numbers('3'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: basicOperations('+'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1.5,
                    child: numbers('0'),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1.5,
                    child: numbers(','),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1.5,
                    child: basicOperations('='),
                  ),
                ]);
              },
            ),
          ),
        ], // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
