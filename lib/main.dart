import 'package:asdfg/drawer.dart';
import 'package:asdfg/main-screen.dart';
import 'package:asdfg/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: GetxSnackBar(),
      // home: MainScreen(),
      home: MainScreen(),
      // home: Navbar(),
      // home: MyHomePage(),
    );
  }
}
