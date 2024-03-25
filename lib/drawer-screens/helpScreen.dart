import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../myDrawerWidget.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title:Text("Help"),
        // leading: IconButton(icon: Icon(Icons.menu),onPressed: () => ZoomDrawer.of(context)!.toggle(),
        // ),
      ),
        drawer: NavigationDrawerWidget(),
      
      
    );
  }
}