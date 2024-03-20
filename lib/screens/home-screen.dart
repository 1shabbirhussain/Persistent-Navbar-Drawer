// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import 'next-screen.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback? goToSettings;
  const HomeScreen({key, this.goToSettings});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Home Screen"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Home Screen"),
          ),
          ElevatedButton(
            onPressed: () {
              pushNewScreen(
                context,
                screen: NextScreen(),
                withNavBar: true,
              );
            },
            child: Text("Next Screen"),
          ),
          ElevatedButton(
            onPressed: () {
              if (goToSettings != null) {
                goToSettings!(); // Call the callback function
              }
            },
            child: Text("Go to Settings"),
          )
          
        ],
      ),
    );
  }
}
