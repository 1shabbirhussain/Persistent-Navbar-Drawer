import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class PromoPage extends StatelessWidget {
  const PromoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Promo"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => ZoomDrawer.of(context)!.toggle(),
        ),
      ),
    );
  }
}
