import 'package:flutter/material.dart';
import 'package:maze/maze.dart';
import 'Level2.dart';

class MazeApp extends StatefulWidget {
  const MazeApp({Key? key});

  @override
  _MazeAppState createState() => _MazeAppState();
}

class _MazeAppState extends State<MazeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Maze(
          player: MazeItem('assets/image/car1.jpg', ImageType.asset),
          columns: 3,
          rows: 5,
          wallThickness: 4.0,
          finish: MazeItem('assets/images/maze1.png', ImageType.asset),
          onFinish: () {
            print("Level 1 Completed");

            // Use Navigator to push to the next screen
            Navigator.push(context, MaterialPageRoute
              (builder: (context) => Level2()));
          },
        ),
      ),
    );
  }
}
