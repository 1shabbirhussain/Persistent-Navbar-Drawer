// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NextScreenn extends StatelessWidget {
  const NextScreenn({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Next Screen"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Next Screen2"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Next Screen 2"),
          )
        ],
      ),
    );
  }
}
