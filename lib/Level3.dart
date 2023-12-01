import 'package:flutter/material.dart';
import 'package:maze/maze.dart';


class Level3 extends StatefulWidget {
  const Level3({Key? key});

  @override
  _Level3State createState() => _Level3State();
}

class _Level3State extends State<Level3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Maze(
          player: MazeItem('assets/image/car1.jpg', ImageType.asset),
          columns: 7,
          rows: 9,
          wallThickness: 4.0,
          finish: MazeItem('assets/images/maze1.png', ImageType.asset),
          onFinish: () {
            print("Completed");

            // Use Navigator to push to the next screen
            // Navigator.push(context, MaterialPageRoute
            //   (builder: (context) => Level3()));
          },
        ),
      ),
    );
  }
}