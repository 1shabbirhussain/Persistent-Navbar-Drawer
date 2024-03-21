// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'next-screen2.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({key});

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
            child: Text("Next Screen"),
          ),
          ElevatedButton(
            onPressed: () {Get.to(NextScreenn());},
            child: Text("Next Screen 1"),
          )
        ],
      ),
    );
  }
}
