// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Setting Screen"),
        centerTitle: true,
      ),
      body:ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("I am List Tile Number $index"),
              );
            },
          ),
    );
  }
}
