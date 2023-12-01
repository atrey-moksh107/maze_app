import 'package:flutter/material.dart';
import 'package:maze_app/maze.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Maze App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/12.jpg'), // Replace with the actual path to your background image
              fit: BoxFit.cover,
            ),
          ),
          child: MazeApp(),
        ),
      ),
    );
  }
}
