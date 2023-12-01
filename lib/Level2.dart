import 'package:flutter/material.dart';
import 'package:maze/maze.dart';
import 'Level3.dart';

class Level2 extends StatefulWidget {
  const Level2({Key? key});

  @override
  _Level2State createState() => _Level2State();
}

class _Level2State extends State<Level2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Maze(
          player: MazeItem('assets/image/car1.jpg', ImageType.asset),
          columns: 5,
          rows: 7,
          wallThickness: 4.0,
          finish: MazeItem('assets/images/maze1.png', ImageType.asset),
          onFinish: () {
            print("Level 2 Completed");

            // Use Navigator to push to the next screen
            Navigator.push(context, MaterialPageRoute
              (builder: (context) => Level3()));
          },
        ),
      ),
    );
  }
}