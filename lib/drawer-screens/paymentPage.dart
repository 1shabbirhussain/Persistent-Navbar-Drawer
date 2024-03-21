import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title:Text("Payemnt"),
        leading: IconButton(icon: Icon(Icons.menu),onPressed: () => ZoomDrawer.of(context)!.toggle(),
        ),
      ),
      
    );
  }
}